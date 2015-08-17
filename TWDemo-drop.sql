USE TWDemo;

ALTER TABLE student_course DROP FOREIGN KEY student_course_course;
ALTER TABLE student_course DROP FOREIGN KEY student_course_student;
ALTER TABLE student DROP FOREIGN KEY student_grade;
ALTER TABLE teacher_course DROP FOREIGN KEY teacher_course_course;
ALTER TABLE teacher_course DROP FOREIGN KEY teacher_course_teacher;


DROP TABLE course;

DROP TABLE grade;

DROP TABLE student;

DROP TABLE student_course;

DROP TABLE teacher;

DROP TABLE teacher_course;

DROP DATABASE TWDemo;
