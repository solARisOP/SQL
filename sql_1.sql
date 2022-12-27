CREATE DATABASE org;
USE org;

CREATE TABLE worker(
worker_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
f_name varchar(255),
l_name VARCHAR(255),
salary INT,
dept VARCHAR(255)
);

ALTER TABLE worker
RENAME COLUMN woker_id TO worker_id;

INSERT INTO worker VALUES(1,"abhishek", "suman", 123456, "OS"),
(2, "pankaj", "kumar", 876543, "DB"),
(3, "raushan", "kumar", 567843, "WD"),
(4, "nitish", "rao", "874978", "SDE"),
(5, "krishi", "ranjan", "244978", "SDE"),
(6, "raushan", "rai", "774978", "SDE"),
(7, "ramadhar", "kaveri", "986532", "SDE");

SELECT * FROM worker;

CREATE TABLE title(
worker_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
worker_title VARCHAR(255),
affected_from DATE,
FOREIGN KEY(worker_id) REFERENCES worker(worker_id) ON DELETE CASCADE
);
-- AN ATTRIBUTE CAN BE PRIMARY KEY AND FOREIGN KEY BOTH	

INSERT INTO title VALUES(4, "king", "2022-09-12");

-- > DRL commands
SELECT * FROM worker; -- * means all columns of that particular table 
SELECT worker_id FROM worker ; -- only one column whose name is worker_id
SELECT worker_id, salary FROM worker ; -- this syntax is for two or more columns;
SELECT UCASE("happy"); -- these are some select commands without using the from clause

	-- WHERE
SELECT 	worker_id FROM worker WHERE salary > 1000;   

	-- BETWEEN
SELECT 	worker_id FROM worker WHERE salary BETWEEN 500000 AND 800000; -- here 500000 and 800000 are inclusive

	-- IN
SELECT f_name FROM worker WHERE l_name IN("kumar", "rao", "suman"); -- reduces the syntax of the OR condition

	-- NOT
SELECT f_name from worker WHERE l_name NOT IN ("kumar"); 

	-- NULL
SELECT f_name FROM worker WHERE l_name IS NOT NULL;    
   

    

   





