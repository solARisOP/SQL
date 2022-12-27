use temp1;

create table dept1(
empid INT PRIMARY KEY,
name VARCHAR(255),
roles VARCHAR(255)
);

create table dept2(
empid INT PRIMARY KEY,
name VARCHAR(255),
roles VARCHAR(255)
);



INSERT INTO dept1 VALUES(1, 'A', 'engineer'),
(2, 'B', 'salesman'),
(3, 'C', 'manager'),
(4, 'D', 'salesman'), 
(5, 'E', 'engineer');

INSERT INTO dept2 VALUES(3, 'C', 'manager'),
(6, 'F', 'marketing'),
(7, 'G', 'salesman');

	-- UNION
SELECT * FROM dept1 UNION SELECT * FROM dept2;

SELECT * FROM dept1 WHERE roles='salesman' UNION SELECT * FROM dept2 WHERE roles='salesman';

	-- INTERSECT
SELECT dept1.* FROM dept1 INNER JOIN dept2 using(empid);

	-- MINUS
SELECT dept1.* FROM dept1 LEFT JOIN dept2 USING(empid) WHERE dept2.empid is NULL;







