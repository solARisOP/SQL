use org;

	-- wildcard
SELECT * FROM worker WHERE f_name like "___i%"; -- here one _ is replaced by only one character and % is replaced by one or many characters

	-- sorting during retrieval
SELECT * FROM worker ORDER BY l_name; -- this will give us in ascending order as it is default;
SELECT * FROM worker ORDER BY l_name ASC; -- this will give us in ascending order;
SELECT * FROM worker ORDER BY l_name DESC; -- this will give us in descending order;

	-- DISTINCT
SELECT DISTINCT l_name FROM worker; -- this doesnot repeat values of an attribute which are same

	-- GROUP BY
SELECT dept, COUNT(dept) FROM worker GROUP BY dept; -- here agrregation function COUNT() works through GROUP BY 
SELECT dept, AVG(salary) FROM worker GROUP BY dept;
SELECT dept, SUM(salary) FROM worker GROUP BY dept;
SELECT dept, MIN(salary) FROM worker GROUP BY dept;
SELECT dept, MAX(salary) FROM worker GROUP BY dept;
-- if we dont write the agrregate function in the syntax then the command acts like same as distinct command

	-- HAVING
SELECT dept, COUNT(dept) FROM worker GROUP BY dept HAVING COUNT(dept) > 2; -- HAVING should be written after GROUP BY and it is used to filter rows in GROUP BY
    

     