"""Examinator is a Python 2.7 project.

1. Read list of students from the students table including grid data.
2. Iterating through all students.
3. For current student, compute distance of all other students. Sort all
   students except current by ascending distance and keep all over threshold
   proximity value.
4. Read all questions of students within proximity list. The student data and
   questions should be in a dictionary.
5. Read all exam m4 files and load metadata. Metadata includes time estimate
   and available variations.
6. Create a questions data structure. Time budget data should be included.
7. Randomly choose a question. Indicate selection in questions data structure.
8. Do any of the students in the proximity list have the same question?
   NO: Step 9. Yes: Step 10.
9. Randomly choose a question variation. Update questions data structure. Loop
   end. Resume at Step 13.
10. Read the question variation selected for all other students. Sort by
    ascending proximity.
11. If the variations are all selected, choose a variation in order of
    descending proximity--i.e. take the highest proximity first.
12. If there unselected variations within the student proximity list, choose
    the next variation. Update questions data structure. Resume at Step 13.
13. Deduct time estimate from budget. Does time remain? No: Step 14. Yes:
    Step 7.
14. Update database with question and variation data.
15. Write ec files. Write one ec file for student, one for instructor.

Notes:
    The way time is budgeted, a high time question at the end could lead to
    an abnormally short exam. The algorithm for selecting questions could be
    smarter so that smaller questions might fill in the gaps.

    Or, the examiner could just create questions that are reasonably bite-
    sized so that this is not a problem. This examiner will choose the later
    for now though it is hard to restrain myself. Ugh, feature creep.
"""
import argparse
import copy
import math
import os
from os import listdir
from os.path import isfile, join
import random
import re
import sys
import sqlite3

class Student(object):
    """Student object."""

    SAFE_DISTANCE = 2
    TIME_BUDGET = 110

    def __init__(self, row):
        self.student_id = row[0]
        self.first_name = row[1]
        self.last_name = row[2]
        self.xcoord = row[5]
        self.ycoord = row[6]
        self.time_budget = Student.TIME_BUDGET

        # ec file names for student copy and instructor copy.
        ecpath = join(os.path.dirname(os.path.realpath(__file__)), 'cf')
        fileroot = "{}_{}".format(
                self.first_name.lower(), self.last_name.lower())
        self.student_ec_file = os.path.join(
                ecpath, "{}-student.ec".format(fileroot))
        self.instructor_ec_file = os.path.join(
                ecpath, "{}-instructor.ec".format(fileroot))

        self.proximate = {}
        self.questions = {} # my own questions

    def __str__(self):
        return u'Student: {} {}'.format(self.first_name, self.last_name)

    def __repr__(self):
        return u'Student: {} {}'.format(self.first_name, self.last_name)

    def get_proximate_questions(self):
        """Fetch all questions for each proximate student_id."""
        for student_id in self.proximate:
            query = "SELECT * FROM questions WHERE student_id = ?"
            cur.execute(query, (student_id,))
            rows = cur.fetchall()
            for row in rows:
                self.proximate[student_id][2]["question_name"] = row[2]
                self.proximate[student_id][2]["variation"] = row[3]

    def sub_time_budget(self, time):
        self.time_budget -= time

    def add_question(self, question):
        """Add the question. If proximates have the same question, cleverly
        select a variation. Otherwise, select variation randomly."""

        # Check to see if this question has already been selected.
        if question.question_id in self.questions:
            return

        # This approach permits going over time. Suppose that the examiner is
        # conservative in his time estimations, this is reasonable. Another
        # option would be self.time_budget < questions.time that would prevent
        # time overflow.
        if self.time_budget < 0:
            # Out of time.
            return

        have_question = self.proximates_have_question(question)
        if len(have_question) == 0:
            # No one else has this question. Edge case. Take it and run.
            variation = question.random_variation()
            self.questions[question.question_id] = (variation, question)
            self.sub_time_budget(question.time)
            return

        # Others have this question. Choose the best variation.
        variations = self.proximates_get_variations(question)
        last_variation = variations[-1]
        max_variation = question.variations
        if last_variation < max_variation:
            # Choose the next variation.
            variation = last_variation + 1
            self.questions[question.question_id] = (variation, question)
            self.sub_time_budget(question.time)
            return

        # Sign, intransigent... All variations consumed. We're recycling now.
        # Walk the list of variations. Prefer to vary for nearer students. This
        # could be cleverer.
        for var, dist in variations:
            if dist == 0:
                if var < max_variation:
                    variation += 1
                else:
                    variation -= 1
        self.questions[question.question_id] = (variation, question)
        self.sub_time_budget(question.time)

    def proximates_have_question(self, question):
        """Do proximates have this question? Return list."""
        have_question = []
        for student_id, row in self.proximate.iteritems():
            pquestions = row[2]
            if question.question_id in pquestions:
                have_question.append(student_id)
        return have_question

    def proximates_get_variations(self, question):
        """Get variations for this question from proximates. Return sorted list
        of (dist, variation) tuples."""
        variations = []
        for student_id, row in self.proximate.iteritems():
            dist = row[0]
            pstudent = row[1]
            pquestions = row[2]
            if question.question_id in pquestions:
                variation = self.get_variation(question)
                if variation:
                    variations.append((variation, dist))
        return sorted(variations)

    def get_variation(self, question):
        """Get variation for question if we have this question."""
        question_id = question.question_id
        try:
            variation = self.questions[question_id][0]
        except Error:
            return None
        return variation

    def distance(self, student):
        """Calculate distance between students. Distance represents an
        abstraction. Adjacent students have distance 0 unless they are
        sitting opposite or across a separating isle. Otherwise, distance
        is computed as the sum of the difference of the two points."""

        x1 = self.xcoord
        y1 = self.ycoord
        x2 = student.xcoord
        y2 = student.ycoord

        # Our algo depends on this arrangement. Swap the two points so x2 and
        # y2 independently are the largest. Axiomatically we cannot have
        # x1 == x2 or y1 == y2.
        if x1 > x2:
            (x1, x2) = (x2, x1)
        if y1 > y2:
            (y1, y2) = (y2, y1)

        dist = 0        # Initialize

        # Circumference.
        dx = abs(x2 - x1)
        dy = abs(y2 - y1)

        # Account for special considerations
        if dx == 1 and dy == 0:
            # Sitting opposite at same table group.
            dist += 1
        if x2%2 != 0 and dx == 1 and dy == 1:
            # Adjacent but separated by a y isle
            dist += 1
        if y2%2 != 0 and dx == 0 and dy == 1:
            # Adjacent but separated by an x isle
            dist += 1
        # dx and dy adjustments must FOLLOW the preceeding code.
        if dx == 0 and dy == 1:
            dy -= 1
        if dx == 1 and dy == 0:
            dx -= 1

        # Finish it up.
        dist += dx
        dist += dy

        # Add proximate student. Kindof an odd place but here it is. Empty
        # dict is dict of questions for this student.
        if dist < self.SAFE_DISTANCE:
            self.proximate[student.student_id] = (dist, student, {})

    def get_questions(self):
        """ Return a list of 4-tuple question data.

        questions: (student_id, question_name, variation, time)
        """
        questions = []
        for question_id in self.questions:
            # append (student_id, question_name, variation, time)
            question = self.questions[question_id]
            questions.append((self.student_id, question[1].question_name,
                question[0], question[1].time))
        return questions

    def write_ec_file(self, ecfile, instructor=False):
        """Write m4 ec file to cf dir. This is the file that configures the
        student's exam."""
        questions = self.get_questions()
        full_name = "{} {}".format(self.first_name, self.last_name)
        with open(ecfile, 'w') as ec:
            ec.write('''divert(0)dnl\n''')
            ec.write(
                '''define(`STUDENTNAME', `{}')dnl\n'''.format(full_name))
            if instructor:
                ec.write('''define(`INSTRUCTOR')dnl\n''')
            for question in questions:
                question_name = question[1]
                variation = question[2]
                ec.write('''QUESTION(`{}', `{}')dnl\n'''.format(
                    question_name, variation))

    def insert_questions(self):
        """Insert questions for this student_id into the database."""
        questions = self.get_questions()
        query = "INSERT INTO questions VALUES (NULL, ?, ?, ?, ?)"
        for question in questions:
            cur.execute(query, question)
        conn.commit()

class Question(object):
    """Represent exam question as read from m4 source file metadata."""

    question_id = 0

    def __init__(self, m4file):
        self.m4file = m4file
        Question.question_id += 1
        self.question_id = Question.question_id
        self.variations = None
        self.time = None

        # Question name is same as m4file sans extension.
        f = os.path.basename(self.m4file)
        match = re.search('^(.+).m4$', f)
        self.question_name = match.group(1)

        # Read question metadata.
        self.read_question_metadata()

    def __str__(self):
        return u'Question: {}-{}'.format(self.question_id, self.question_name)

    def __repr__(self):
        return u'Question: {}-{}, {}-minutes'.format(self.question_id,
                self.question_name, self.time)

    def read_question_metadata(self):
        """Read question metadata and set instance attributes."""
        with open(self.m4file) as m4f:
            head = [next(m4f) for x in xrange(4)]

        match = re.search('''^define\(\`VARIATIONS\', \`(\d+)\'\)$''', head[1])
        self.variations = int(match.group(1))

        match = re.search('''^define\(\`TIME\', \`(\d+)\'\)$''', head[2])
        self.time = int(match.group(1))

    def random_variation(self):
        """We have all available variations. Randomly select one and return
        it."""
        return random.choice(range(self.variations)) + 1


def main(audit=None):
    # Remove all questions each run.
    cur.execute('DELETE FROM questions')
    conn.commit()

    # Read students
    students = {}
    cur.execute('SELECT * FROM STUDENTS LEFT JOIN GRID ON STUDENTS.id = GRID.student_id')
    rows = cur.fetchall()
    for row in rows:
        student = Student(row)
        # TODO: may want this to be a list
        students[student.student_id] = student

    # Read questions
    questions = {}
    questions_path = join(
            os.path.dirname(os.path.realpath(__file__)), 'questions')
    m4files = [f for f in listdir(questions_path) if isfile(join(questions_path,f))
            and f.endswith(".m4")]
    m4files = sorted(m4files)
    for m4file in m4files:
        question = Question(join(questions_path, m4file))
        questions[question.question_id] = question

    # Dump exam config file with all questions and variations.
    # For auditing purposes only.
    if audit:
        print "Writing audit file."
        audit_file = join(
                os.path.dirname(os.path.realpath(__file__)), 'cf', 'audit.ec')
        with open(audit_file, 'w') as ec:
            ec.write('''divert(0)dnl\n''')
            ec.write(
                '''define(`STUDENTNAME', `{}')dnl\n'''.format('AUDIT COPY'))
            ec.write('''define(`INSTRUCTOR')dnl\n''')
            for question_id in questions.keys():
                question = questions[question_id]
                question_name = question.question_name
                variations = question.variations
                for variation in range(0, variations):
                    ec.write('''QUESTION(`{}', `{}')dnl\n'''.format(
                        question_name, variation + 1))
        sys.exit(0)

    # Walk list of students, processing each in turn as current.
    for current_id in students:
        current = students[current_id]
        print "Current Student: {}".format(current)

        # Compute distance and find proximates.
        for student_id, student in students.iteritems():
            if student_id == current_id:
                continue
            current.distance(student)

        # Load questions from DB.
        current.get_proximate_questions()

        # Questions list
        safe_counter = 0
        while(True):
            question_id = random.choice(questions.keys())
            current.add_question(questions[question_id])

            # Current time budget will cause a return if there is not enough time
            # for the last question selected randomly. We will just loop a few
            # times until the circuit breaker stops the loop.

            # Since there is not enough content to fill the budget, build in a
            # safety valve.
            safe_counter += 1
            if safe_counter > 100:
                break

        current.insert_questions()
        current.write_ec_file(current.instructor_ec_file, instructor=True)
        current.write_ec_file(current.student_ec_file)


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('--audit', action='store_true', help='Dump all questions.')
    args = parser.parse_args()
    audit = args.audit

    conn = None
    try:
        conn = sqlite3.connect('exam.db')
        cur = conn.cursor()
        cur.execute('SELECT SQLITE_VERSION()')
        data = cur.fetchone()
        print "SQLite version: {}".format(data[0])
    except sqlite.Error, e:
        print "Error {}".format(e.args[0])
        sys.exit(1)

    main(audit=audit)
