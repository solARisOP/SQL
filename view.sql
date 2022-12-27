use org;

	-- creating view 
CREATE VIEW custom AS SELECT fname, age FROM EMPLOYEE; 

	-- viewing from view
SELECT * FROM custom;

	-- alter view
ALTER VIEW custom AS SELECT fname, lname, age FROM EMPLOYEE; 

	-- drop view
DROP VIEW IF EXISTS custom;     