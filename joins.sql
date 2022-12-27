use org;

CREATE TABLE EMPLOYEE(
id INT PRIMARY KEY,
fname VARCHAR(255),
lname VARCHAR(255),
age INT,
emailid VARCHAR(255),
ph_no INT,
city VARCHAR(255)
);

CREATE TABLE CLIENTS(
id INT PRIMARY KEY,
fname VARCHAR(255),
lname VARCHAR(255),
age INT,
emailid VARCHAR(255),
ph_no INT,
city VARCHAR(255),
emp_id INT,
FOREIGN KEY(emp_id) REFERENCES EMPLOYEE(id)
);

CREATE TABLE PROJECT(
id INT PRIMARY KEY,
emp_id INT,
name VARCHAR(255),
startdate DATE,
client_id INT,
FOREIGN KEY(emp_id) REFERENCES EMPLOYEE(id),
FOREIGN KEY(client_id) REFERENCES CLIENTS(id)
);

INSERT INTO EMPLOYEE VALUES(1, 'Aman', 'Proto', 32, 'aman@gmail.com', 898, 'Delhi'),
(2, 'Yagya', 'Narayan', 44, 'yagya@gmail.com', 222, 'Palam'),
(3, 'Rahul', 'BD', 22, 'rahul@gmail.com', 444, 'Kolkata'),	
(4, 'Jatin', 'Hermit', 31, 'jatin@gmail.com', 666, 'Raipur'),	
(5, 'PK', 'Pandey', 21, 'pk@gmail.com', 555, 'Jaipur');
SELECT * FROM EMPLOYEE;

INSERT INTO CLIENTS VALUES(1, 'Mac', 'Rogers', 47, 'mac@gmail.com', 333, 'Kolkata', 3),
(2, 'Max', 'Poirier', 27, 'max@gmail.com', 222, 'Kolkata', 3),
(3, 'Peter', 'Jain', 24, 'peter@gmail.com', 111, 'Delhi', 1),
(4, 'Sushant', 'Aggarwal', 23, 'sushant@gmail.com', 45454, 'Hyderabad', 5),
(5, 'Pratap', 'Singh', 36, 'p@gmail.com', 77767, 'Mumbai', 2);
SELECT * FROM CLIENTS;

INSERT INTO PROJECT VALUES(1, 1, 'A', '2021-04-21', 3),
(2, 2, 'B', '2021-03-12', 1),
(3, 3, 'C', '2021-01-16', 5),
(4, 3, 'D', '2021-04-27', 2),
(5, 5, 'E', '2021-05-01', 4);
SELECT * FROM PROJECT;

	-- INNER JOIN
SELECT e.id, e.fname, e.lname, p.id, p.name FROM EMPLOYEE AS e INNER JOIN PROJECT AS p ON e.id = p.emp_id;  
 
SELECT e.id, e.fname, e.lname, p.id, p.name FROM EMPLOYEE AS e, PROJECT AS p WHERE e.id = p.emp_id;   -- the above command can also be written like this

SELECT e.id, e.emailid, e.ph_no, c.fname, c.lname FROM EMPLOYEE AS e INNER JOIN CLIENTS AS C ON e.id = c.emp_id WHERE e.city = 'Jaipur' AND c.city = 'Hyderabad';

	-- LEFT JOIN
SELECT * FROM EMPLOYEE AS e LEFT JOIN PROJECT AS p ON e.id = p.emp_id;   

	-- RIGHT JOIN
SELECT p.id, p.name, e.fname, e.lname, e.emailid FROM EMPLOYEE AS e RIGHT JOIN PROJECT AS p ON e.id = p.emp_id;    

	-- CROSS JOIN
SELECT e.fname, e.lname, p.id, p.name FROM EMPLOYEE AS e CROSS JOIN PROJECT AS p;    