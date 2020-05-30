.echo ON

.mode list
.separator "  |  "

.output DMS_LibSQL_out.txt

PRAGMA foreign_keys = ON;

DROP TABLE CheckOut;
DROP TABLE LibBook;
DROP TABLE Student;

CREATE TABLE LibBook (
   lbcallnum	CHAR(2)		CONSTRAINT LibBook_lbcallnum_pk PRIMARY KEY,
   lbtitle	VARCHAR2(35)	NOT NULL
  );

CREATE TABLE Student (
   stid		CHAR(3)		CONSTRAINT student_sid_pk PRIMARY KEY,
   stname	VARCHAR2(25)	NOT NULL
  );

CREATE TABLE CheckOut (
   stid		CHAR(3)		CONSTRAINT CheckOut_stid_fk REFERENCES Student(stid),
   lbcallnum	CHAR(2)		CONSTRAINT CheckOut_lbcallnum_fk REFERENCES LibBook(lbcallnum),
   coduedate	DATE		NOT NULL,
   coreturned	CHAR(1)		CONSTRAINT CheckOut_coreturned_cc CHECK (
				(coreturned='N') OR (coreturned='Y') OR (coreturned=NULL)),
   cofine	NUMBER(7,2)	DEFAULT 0.0,
   CONSTRAINT	Checkout_stid_lbcallnum_pk PRIMARY KEY (stid, lbcallnum)
  );

INSERT INTO LibBook	VALUES ('a1', 'Software Engineering');
INSERT INTO LibBook	VALUES ('a2', 'Database Management');
INSERT INTO LibBook 	VALUES ('b1', 'Attitudes and Behavior');
INSERT INTO LibBook	VALUES ('b2', 'Fifth Discipline');
INSERT INTO LibBook	VALUES ('c1', 'Organizations');
INSERT INTO LibBook	VALUES ('c2', 'Psychology');
INSERT INTO LibBook	VALUES ('c3', 'Contract Law');

INSERT INTO Student	VALUES ('111', 'Gibson, J.');
INSERT INTO Student	VALUES ('222', 'Henderson, M.');
INSERT INTO Student	VALUES ('333', 'Jones, A.');
INSERT INTO Student	VALUES ('444', 'Jackson, T.');
INSERT INTO Student	VALUES ('555', 'Feedman, M.');
INSERT INTO Student	VALUES ('666', 'King, T.');
INSERT INTO Student	VALUES ('777', 'Bentley, P.');
INSERT INTO Student	VALUES ('888', 'Jefferson, B.');

INSERT INTO CheckOut	VALUES ('111', 'a1', DATE('2013-10-01'), 'N', 0.00);
INSERT INTO CheckOut	VALUES ('111', 'b2', DATE('2013-09-28'), 'N', 0.00);
INSERT INTO CheckOut	VALUES ('222', 'b2', DATE('2013-08-23'), 'Y', 2.50);
INSERT INTO CheckOut	VALUES ('444', 'b2', DATE('2013-09-03'), 'Y', 1.20);
INSERT INTO CheckOut	VALUES ('444', 'c2', DATE('2013-09-10'), 'Y', 3.00);
INSERT INTO CheckOut	VALUES ('444', 'c3', DATE('2013-10-01'), 'Y', 0.00);
INSERT INTO CheckOut	VALUES ('555', 'c3', DATE('2013-10-25'), 'N', 0.00);
INSERT INTO CheckOut	VALUES ('777', 'c3', DATE('2013-09-10'), 'Y', 1.00);
INSERT INTO CheckOut	VALUES ('777', 'a2', DATE('2013-08-25'), 'N', 2.00);
INSERT INTO CheckOut	VALUES ('777', 'b2', DATE('2013-09-23'), 'Y', 0.00);
INSERT INTO CheckOut	VALUES ('777', 'c1', DATE('2013-09-25'), 'Y', 1.50);
INSERT INTO CheckOut	VALUES ('888', 'b2', DATE('2013-10-01'), 'N', 0.00);

SELECT * FROM LibBook;
SELECT * FROM Student;
SELECT * FROM Checkout;

.output stdout
.echo OFF

