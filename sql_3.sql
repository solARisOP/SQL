use temp1;

CREATE TABLE ACC_BALANCE(
	id INT PRIMARY KEY,
    name VARCHAR(255) UNIQUE,
    balance INT,
    CONSTRAINT chk CHECK(balance > 1000),
    loan INT DEFAULT 0
);

DROP TABLE acc_balance;

INSERT INTO ACC_BALANCE (ID, NAME , BALANCE) VALUES(1, 'raj', 1234),
(2, 'jacob', 6234);
INSERT INTO ACC_BALANCE VALUES(3, 'jacob',  3456);

Select * from acc_balance;

DESC acc_details;

	-- add new column
ALTER TABLE acc_balance ADD interest FLOAT NOT NULL;

	-- modify
ALTER TABLE acc_balance MODIFY interest DOUBLE NOT NULL DEFAULT 0;

	-- RENAME column name
ALTER TABLE acc_balance CHANGE COLUMN name full_name VARCHAR(255);

	-- drop column
ALTER TABLE acc_balance DROP COLUMN loan;

	-- rename table name
ALTER TABLE acc_balance RENAME TO acc_details;    
        
