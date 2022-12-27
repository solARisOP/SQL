use temp1;

CREATE TABLE acc_balance(
	id INT PRIMARY KEY,
    name VARCHAR(255) UNIQUE,
    balance INT,
    loan INT DEFAULT 0
);
INSERT INTO acc_balance VALUES(44, 'maji', 4765, 0),
(45, 'kam', 8765, 0),
(46, 'op', 7658, 0),
(48, 'uuil', 6578, 0),
(50, 'amp', 5678, 0);
SELECT * FROM acc_balance;

	-- REPLACE
REPLACE INTO acc_balance (id, name) values (45, 'karim'); -- remaining every values will be NULL or default
REPLACE INTO acc_balance (id, name) values (51, 'aimsh'); -- that row doesnot exist then it will be inserted as new data

REPLACE INTO acc_balance SET id = 9, name = 'kalesh';

REPLACE INTO acc_balance(id, name) SELECT id, name FROM acc_balance WHERE id = 9; -- to keep some attribute values as it is and making others NULL


 
		
