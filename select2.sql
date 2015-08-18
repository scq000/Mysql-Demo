USE TWDemo;

SELECT student.name AS '学生姓名',group_concat(course.name) AS '所选课程' FROM student,course,student_course WHERE student_id=student.id AND course_id=course.id GROUP BY student_id;

SELECT grade.name AS "班级",COUNT(grade_id) AS "人数", SUM(student.sex='female') AS "男生",SUM(student.sex='male') AS '女生' FROM student,grade WHERE grade_id = grade.id GROUP BY grade_id;


SELECT sex as '性别',COUNT(id) AS '人数' FROM student GROUP BY sex;
