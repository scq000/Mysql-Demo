USE TWDemo;

INSERT INTO grade(name) VALUES("一班"), ("二班"), ("三班"), ("四班"), ("五班");

DELIMITER //

    CREATE PROCEDURE dowhile()
    BEGIN
        DECLARE i INT DEFAULT 1;

        WHILE i <= 50 DO

            INSERT INTO course(name, credit, day) VALUES(concat("课程", i), floor(1+rand()*4)*0.5,floor(1+rand()*5));

            INSERT INTO student(name, sex, age, grade_id) VALUES(concat("学生", i), floor(1+rand()*2), floor(20+rand()*5), floor(1+rand()*5));

            INSERT INTO teacher(name, sex) VALUES(concat("老师", i),  floor(1+rand()*2));

            INSERT INTO student_course(student_id, course_id) VALUES(1000+i, i);

            INSERT INTO teacher_course(teacher_id, course_id) VALUES(2000 + i, i);

            SET i = i + 1;

        END WHILE;

    END;

//


CALL dowhile(); //
