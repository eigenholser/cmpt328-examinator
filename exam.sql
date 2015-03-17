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

insert into students values (1, 'MEGAN', 'FRANCIS');
insert into students values (2, 'APRILLE', 'HANLEY');
insert into students values (3, 'XUAN', 'MAI');
insert into students values (4, 'KEVIN', 'HAUPT');
insert into students values (5, 'KEVIN', 'BROTEN');
insert into students values (6, 'AIDEN', 'MELEN');
insert into students values (7, 'KYLE', 'SWANSON');
insert into students values (8, 'DANIEL', 'RODOSKY');
insert into students values (9, 'JOHN', 'HINKLEY');
insert into students values (10, 'JOHN', 'ALLEN');
insert into students values (11, 'CRYSTAL', 'OLSEN');
insert into students values (12, 'DILLON', 'IRISH');
insert into students values (13, 'ALEXANDER', 'BROWN');
insert into students values (14, 'KRISTIAN', 'NILSEN');
insert into students values (15, 'JOSHUA', 'SCHOOLEY');
insert into students values (16, 'PATRICIA', 'BAILY');
insert into students values (17, 'CHARLES', 'BAILY');
insert into students values (18, 'CHRISTOPHER', 'FOWLES');
insert into students values (19, 'ANNA', 'JACKSON');
insert into students values (20, 'BRANDON', 'DENNING');
insert into students values (21, 'DANA', 'ADYLOVA');

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
