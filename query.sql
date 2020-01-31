/*

Danny Pham
CSC 134
HW3 - Section 2: Make Queries

Note: I misunderstood HW2 in making the times attribute for the TEACH table the actual time, I have corrected it to make the value INT value to be able to query it.

*/

/*Query 1 Retrieve the TID, first name and last name of the teacher(s) who teaches the subject “Maths”. */
SELECT  t.TID, FirstName, LastName
FROM    TEACHER as t, SUBJECT as s
WHERE   t.TID = s.TID AND Subject = 'Math';

/*Query 2 Retrieve the SID, first name, last name and address of all female student(s).*/
SELECT  SID, FN, LN, Address
FROM    STUDENT
WHERE   Gender = 'F';

/*Query 3 Retrieve the MID, Date, Time and Location of the meetings that are longer than 1 hour. */
SELECT  MID, Date, Time, Location
FROM    PARENT_MEETING
WHERE   Hours > 1;

/*Query 4 For teachers who attend more than 2 parent meetings, retrieve the TID, first name, and last name. */
SELECT  TID, FirstName, LastName
FROM    TEACHER
WHERE   (SELECT COUNT(*) FROM PARENT_MEETING WHERE TID = TeacherID) > 2;

/*Query 5 For teachers who teach more than 3 students, retrieve the TID, office, first name, and last name.*/
SELECT  TID, Office, FirstName, LastName
FROM    TEACHER as t1
WHERE   (SELECT COUNT(*) FROM TEACH as t2 WHERE t1.TID = t2.TID) > 3;

/*Query 6 Retrieve the SID, first name, last name and address of students whose parent name is “John”.*/
SELECT  s.SID, FN, LN, Address
FROM    STUDENT as s, PARENTS as p
WHERE   s.SID = p.SID AND Name = 'John';

/*Query 7 Retrieve the SID, first name, and last name of students who have been taught by Teacher Mary Green 4 times. “Mary” is the teacher’s first name and “Green” is the last name.*/
SELECT  s.SID, FN, LN
FROM    STUDENT as s, TEACHER as t1, TEACH as t2
WHERE   t1.TID = t2.TID AND s.SID = t2.SID AND FirstName = 'Mary' AND LastName = 'Green' AND times = '4';

/*Query 8 For the parent meetings that the father of student “Alice Smith” has attended, retrieve the MID, date, and time.*/
SELECT  MID, Date, Time
FROM    PARENT_MEETING as pm, PARENTS as p, STUDENT as s
WHERE   s.SID = p.SID AND pm.Parent_Name = p.Name AND Relationship = 'Father' AND FN = 'Alice' AND LN = 'Smith';
