USE TWDemo;

DELETE expect FROM student expect INNER JOIN (SELECT * FROM student LIMIT 29,11) result on expect.id = result.id;
