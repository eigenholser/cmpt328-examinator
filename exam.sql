create table students (
    id int primary key not null,
    first_name text not null,
    last_name text not null
);

create table questions (
    id int not null,
    student_id int not null,
    name text not null,
    variation int not null,
    time int not null,
    PRIMARY KEY (id, student_id)
);

create table grid (
    id int primary key not null,
    student_id int not null,
    xcoord int not null,
    ycoord int not null
);

/* These names appearing in this work are fictitious. Any resemblance to real
   persons, living or dead, is purely coincidental. */

insert into students values (1, 'MARY', 'SMITH');
insert into students values (2, 'JOSEPH', 'JOHNSON');
insert into students values (3, 'WILLIAM', 'GARCIA');
insert into students values (4, 'HELEN', 'RODRIGUEZ');
insert into students values (5, 'JAMES', 'DAVIS');
insert into students values (6, 'GEORGE', 'MILLER');
insert into students values (7, 'BRANDON', 'JONES');
insert into students values (8, 'ROBERT', 'MOORE');
insert into students values (9, 'MARGARET', 'LEWIS');
insert into students values (10, 'FLORENCE', 'CLARK');
insert into students values (11, 'HENRY', 'SANCHEZ');
insert into students values (12, 'THOMAS', 'KING');
insert into students values (13, 'WALTER', 'ADAMS');
insert into students values (14, 'RUTH', 'GREEN');
insert into students values (15, 'ELIZABETH', 'HILL');
insert into students values (16, 'HARRY', 'HALL');
insert into students values (17, 'WILLIE', 'MITCHELL');
insert into students values (18, 'DOROTHY', 'PEREZ');
insert into students values (19, 'ARTHUR', 'EDWARDS');
insert into students values (20, 'CLARENCE', 'RIVERA');
insert into students values (21, 'HAROLD', 'CAMPBELL');

insert into grid values (1, 13, 1, 1);
insert into grid values (2, 11, 1, 2);
insert into grid values (3, 4, 2, 1);
insert into grid values (4, 14, 2, 2);
insert into grid values (5, 5, 3, 1);
insert into grid values (6, 16, 3, 3);
insert into grid values (7, 2, 3, 4);
insert into grid values (8, 20, 3, 5);
insert into grid values (9, 12, 4, 1);
insert into grid values (10, 19, 4, 3);
insert into grid values (11, 18, 4, 5);
insert into grid values (12, 17, 4, 6);
insert into grid values (13, 7, 5, 2);
insert into grid values (14, 9, 5, 3);
insert into grid values (15, 21, 5, 5);
insert into grid values (16, 3, 5, 6);
insert into grid values (17, 6, 6, 2);
insert into grid values (18, 10, 6, 3);
insert into grid values (19, 8, 6, 4);
insert into grid values (20, 1, 6, 5);
insert into grid values (21, 15, 6, 6);
