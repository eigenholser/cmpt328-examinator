CMPT328 Examinator
==================

Examinator is a Python program and an ``m4`` macro system that generates
personalized LaTeX exams for each student in the SQLite database.
``examinator.py`` reads each ``m4`` question and generates an ``m4`` macro
file representing an exam. The ``Makefile`` describes how to build the LaTeX
file and render to PDF.

To make this work, create the SQLite database::

    sqlite3 exam.db < exam.sql

``examinator.py`` can generate personalized exams per student in the database
or in audit mode.  The personalized exams will place each question in random
order. ``examinator.py`` will try to choose different variations on each
question for students in close proximity. In audit mode, each question and
variation will appear in sequential order.

To generate personalized exams for each student::

    python examinator.py --exam-name "MIDTERM EXAM" --questions-dir midterm

To generate an audit copy, just add the ``--audit`` command-line option. The
``m4`` exam configuration files will be created in the ``cf`` directory.

Then build the PDF exams::

    cd cf
    make

