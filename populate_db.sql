/*

Danny Pham
CSC 134
HW2 - Section 4: POPULATE DATABASE

*/
/* STUDENT DATA */
INSERT into STUDENT values
('1111', 'Aldo', 'Anderson', '111 Apple Dr', 'M');

INSERT into STUDENT values
('2222', 'Bill', 'Barker', '222 Berry Dr', 'M');

INSERT into STUDENT values
('3333', 'Candace', 'Carter', '333 Carrot Dr', 'F');

INSERT into STUDENT values
('4444', 'Daisy', 'Douglas', '444 Deli Dr', 'F');

INSERT into STUDENT values
('5555', 'Alice', 'Smith', '555 Starry Dr', 'F');


/* TEACHER DATA */
INSERT into TEACHER values
('9999', 'Hall A', 'Mary', 'Green');

INSERT into TEACHER values
('8888', 'Hall B', 'Adam', 'Jones');

INSERT into TEACHER values
('7777', 'Hall C', 'Tony', 'Hill');


/* PARENTS DATA */
INSERT into PARENTS values
('2222', 'John', 'Father');

INSERT into PARENTS values
('3333', 'Laura', 'Mother');

INSERT into PARENTS values
('5555', 'Matthew', 'Father');


/* PARENT MEETING DATA */
INSERT into PARENT_MEETING values
('1234', '2018-12-25', '11 AM', 'Hall X', '7777', '2', '3333', 'Laura');

INSERT into PARENT_MEETING values
('5678', '2018-12-21', '4 PM', 'Hall Y', '7777', '1', '2222', 'John');

INSERT into PARENT_MEETING values
('1011', '2018-03-23', '10 AM', 'Hall T', '7777', '3', '5555', 'Matthew');

INSERT into PARENT_MEETING values
('1213', '2018-10-13', '5 PM', 'Hall Z', '9999', '1', '5555', 'Matthew');

INSERT into PARENT_MEETING values
('1415', '2018-01-05', '4 PM', 'Hall S', '8888', '1', '3333', 'Laura');


/* SUBJECT DATA */
INSERT into SUBJECT values
('9999', 'History');

INSERT into SUBJECT values
('8888', 'Math');

INSERT into SUBJECT values
('7777', 'English');


/* TEACH DATA */
INSERT into TEACH values
('9999', '1111', '1');

INSERT into TEACH values
('9999', '2222', '2');

INSERT into TEACH values
('9999', '3333', '3');

INSERT into TEACH values
('9999', '4444', '4');

INSERT into TEACH values
('8888', '5555', '1');

INSERT into TEACH values
('7777', '3333', '2');

INSERT into TEACH values
('7777', '4444', '3');


/* DISPLAY DATA */
SELECT * FROM TEACHER;
SELECT * FROM STUDENT;
SELECT * FROM PARENT_MEETING;
SELECT * FROM PARENTS;
SELECT * FROM SUBJECT;
SELECT * FROM TEACH;
