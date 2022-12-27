use org;

SELECT * FROM CLIENTS;
SELECT * FROM EMPLOYEE;
SELECT * FROM PROJECT;

SELECT * FROM EMPLOYEE WHERE age IN (SELECT age FROM EMPLOYEE WHERE age > 30);

SELECT * FROM EMPLOYEE WHERE id IN (SELECT emp_id FROM PROJECT GROUP BY emp_id HAVING count(emp_id) > 1);

SELECT * FROM EMPLOYEE WHERE age > (SELECT AVG(age) FROM EMPLOYEE);

SELECT MAX(age) FROM (SELECT age FROM EMPLOYEE WHERE fname like '%a%') AS p; -- AS because every derived table has to have alias 

	-- coorelated subquery 
SELECT * FROM EMPLOYEE e1 WHERE 3 = (SELECT COUNT(e2.age) FROM EMPLOYEE e2 WHERE e2.age >= e1.age); -- for each age of e1 inner query is running completly for e2 
