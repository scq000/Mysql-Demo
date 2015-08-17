USE TWDemo;

ALTER TABLE schedule_course DROP FOREIGN KEY schedule_course_course;
ALTER TABLE schedule_course DROP FOREIGN KEY schedule_course_schedule;
ALTER TABLE schedule DROP FOREIGN KEY schedule_student;
ALTER TABLE student DROP FOREIGN KEY student_grade;
ALTER TABLE teacher_course DROP FOREIGN KEY teacher_course_course;
ALTER TABLE teacher_course DROP FOREIGN KEY teacher_course_teacher;


DROP TABLE course;

DROP TABLE grade;

DROP TABLE schedule;

DROP TABLE schedule_course;

DROP TABLE student;

DROP TABLE teacher;

DROP TABLE teacher_course;

DROP DATABASE TWDemo;
