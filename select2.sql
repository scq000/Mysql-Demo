USE TWDemo;

SELECT student.name AS "学生姓名",course.name AS "所选课程" from student,course,student_course where student_id= student.id and course_id = course.id;

SELECT grade.name AS "班级",COUNT(grade_id) AS "人数" FROM student,grade WHERE grade_id = grade.id GROUP BY grade_id;
