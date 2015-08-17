CREATE DATABASE IF NOT EXISTS TWDemo
default charset utf8 COLLATE utf8_general_ci;

USE TWDemo;

CREATE TABLE IF NOT EXISTS course(
    id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name varchar(20) NOT NULL,
    credit double(10,2) NOT NULL,
    day ENUM('Monday','Tuesday','Wednesday','Thursday','Friday') NOT NULL
);


CREATE TABLE IF NOT EXISTS grade(
    id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name varchar(10) NULL
);

CREATE TABLE IF NOT EXISTS student(
    id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name varchar(20) NULL,
    sex ENUM('female', 'male') NOT NULL,
    age int NOT NULL,
    grade_id int NOT NULL
);
ALTER TABLE student AUTO_INCREMENT = 1001;

CREATE TABLE IF NOT EXISTS student_course(
    student_id int NOT NULL,
    course_id  int NOT NULL,
    PRIMARY KEY(student_id,course_id)
);

CREATE TABLE IF NOT EXISTS teacher(
    id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name varchar(20) NULL,
    sex ENUM('female','male') NOT NULL
);
ALTER TABLE teacher AUTO_INCREMENT = 2001;


CREATE TABLE IF NOT EXISTS teacher_course(
    teacher_id int NOT NULL,
    course_id int NOT NULL,
    PRIMARY KEY(teacher_id,course_id)
);

CREATE VIEW schedule AS (SELECT student.name AS '学生姓名', course.name AS '课程名',course.credit AS '学分',course.day AS '上课时间' FROM student,course,student_course WHERE student.id = student_id AND course.id = course_id);

ALTER TABLE student ADD CONSTRAINT student_grade FOREIGN KEY student_grade(grade_id)
REFERENCES grade(id) ON DELETE CASCADE ON UPDATE CASCADE ;

ALTER TABLE student_course ADD CONSTRAINT student_course_student FOREIGN KEY student_course_student(student_id)
REFERENCES student(id)  ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE student_course ADD CONSTRAINT student_course_course FOREIGN KEY student_course_course(course_id)
REFERENCES course(id)  ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE teacher_course ADD CONSTRAINT teacher_course_course FOREIGN KEY teacher_course_course(course_id)
REFERENCES course(id)  ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE teacher_course ADD CONSTRAINT teacher_course_teacher FOREIGN KEY teacher_course_teacher(teacher_id)
REFERENCES teacher(id)  ON DELETE CASCADE ON UPDATE CASCADE;
