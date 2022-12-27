use temp1;

DESC acc_details;

INSERT INTO acc_details VALUES(44, 'maji', 4765, 0),
(45, 'kam', 8765, 0),
(46, 'op', 7658, 0),
(48, 'uuil', 6578, 0),
(50, 'amp', 5678, 0);

SELECT * FROM acc_details;

INSERT INTO acc_details (id, full_name) VALUES (7, 'KKK');

	-- UPDATE
UPDATE acc_details SET balance = 5678, interest = 9 WHERE id = 7;

	-- update multiple rowa
SET SQL_SAFE_UPDATES = 0; -- if we dont make it 0 then mysql wont allow us to update all rows at once

UPDATE acc_details SET interest = 7;    -- update all rows
SET SQL_SAFE_UPDATES = 1;

	-- delete row
DELETE FROM acc_details WHERE id = 7;    
DELETE FROM acc_details; -- delete all rows in table 