CREATE DATABASE IF NOT EXISTS TWDemo
default charset utf8 COLLATE utf8_general_ci;

USE TWDemo;

CREATE TABLE IF NOT EXISTS course(
    id int NOT NULL PRIMARY KEY,
    name varchar(20) NULL,
    credit double(2, 1) NOT NULL
);


CREATE TABLE IF NOT EXISTS grade(
    id int NOT NULL PRIMARY KEY,
    name varchar(10) NULL
);


CREATE TABLE IF NOT EXISTS schedule(
    id int NOT NULL PRIMARY KEY,
    start_time date NOT NULL,
    end_time date NOT NULL,
    student_id int NOT NULL
);


CREATE TABLE IF NOT EXISTS schedule_course(
    schedule_id int NOT NULL,
    course_id int NOT NULL,
    PRIMARY KEY(schedule_id, course_id)
);


CREATE TABLE IF NOT EXISTS student(
    id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name varchar(20) NULL,
    sex ENUM('female', 'male') NOT NULL,
    age int NOT NULL,
    grade_id int NOT NULL
);
ALTER TABLE student AUTO_INCREMENT = 1001;


CREATE TABLE IF NOT EXISTS teacher(
    id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name varchar(20) NULL,
    sex ENUM('female', 'male') NOT NULL
);
ALTER TABLE teacher AUTO_INCREMENT = 2001;


CREATE TABLE IF NOT EXISTS teacher_course(
    id int NOT NULL PRIMARY KEY,
    teacher_id int NOT NULL,
    course_id int NOT NULL
);


ALTER TABLE schedule_course ADD CONSTRAINT schedule_course_course FOREIGN KEY schedule_course_course(course_id)
REFERENCES course(id);

ALTER TABLE schedule_course ADD CONSTRAINT schedule_course_schedule FOREIGN KEY schedule_course_schedule(schedule_id)
REFERENCES schedule(id);

ALTER TABLE schedule ADD CONSTRAINT schedule_student FOREIGN KEY schedule_student(student_id)
REFERENCES student(id);

ALTER TABLE student ADD CONSTRAINT student_grade FOREIGN KEY student_grade(grade_id)
REFERENCES grade(id);

ALTER TABLE teacher_course ADD CONSTRAINT teacher_course_course FOREIGN KEY teacher_course_course(course_id)
REFERENCES course(id);

ALTER TABLE teacher_course ADD CONSTRAINT teacher_course_teacher FOREIGN KEY teacher_course_teacher(teacher_id)
REFERENCES teacher(id);
