CREATE DATABASE IF NOT EXISTS TWDemo default charset utf8 COLLATE utf8_general_ci; 

USE TWDemo;

CREATE TABLE IF NOT EXISTS Grade (
	id int NOT NULL PRIMARY KEY,
	name varchar(20) NOT NULL
);


CREATE TABLE IF NOT EXISTS Course (
    id int NOT NULL PRIMARY KEY,
    name varchar(20) NOT NULL,
    credit double(2,1) NOT NULL
);


CREATE TABLE IF NOT EXISTS Schedule (
    id int NOT NULL PRIMARY KEY,
    startTime date NOT NULL ,
    endTime date NOT NULL ,
    gradeId int NOT NULL ,
    courseId int NOT NULL ,
    teacherId int NOT NULL
);


CREATE TABLE IF NOT EXISTS Student (
    id int NOT NULL  AUTO_INCREMENT PRIMARY KEY,
    name varchar(20) NOT NULL,
    sex ENUM('female', 'male') NOT NULL,
    age int NOT NULL ,
    gradeId int NOT NULL
);
ALTER TABLE Student AUTO_INCREMENT=1001;


CREATE TABLE IF NOT EXISTS Teacher (
    id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name varchar(20) NOT NULL,
    sex ENUM('female', 'male') NOT NULL
);
ALTER TABLE Teacher AUTO_INCREMENT=2001;


ALTER TABLE Schedule ADD CONSTRAINT Schedule_Grade FOREIGN KEY Schedule_Grade (gradeId)
    REFERENCES Grade (id);

ALTER TABLE Schedule ADD CONSTRAINT Schedule_Course FOREIGN KEY Schedule_Course (courseId)
    REFERENCES Course (id);

ALTER TABLE Schedule ADD CONSTRAINT Schedule_Teacher FOREIGN KEY Schedule_Teacher (teacherId)
    REFERENCES Teacher (id);

ALTER TABLE Student  ADD CONSTRAINT Student_Grade FOREIGN KEY Student_Grade (gradeId)
    REFERENCES Grade (id);

