CREATE TABLE STUDENT
(
  STUD_NAME VARCHAR(20) NOT NULL,
  SRN CHAR(10) ,
  SECTION CHAR(1) NOT NULL,
  ADDRESS VARCHAR(100) NOT NULL,
  PRIMARY KEY (SRN),
  DEPT_ID CHAR(3)
);

CREATE TABLE DEPARTMENT
(
  DEPARTMENT_ID CHAR(3),
  DEPT_NAME VARCHAR(10) NOT NULL,
  MGR_ID CHAR(4),
  PRIMARY KEY (DEPT_ID),
  UNIQUE (DEPT_NAME)
);

ALTER TABLE STUDENT ADD CONSTRAINT fk_deptid FOREIGN KEY(DEPT_ID) REFERENCES DEPARTMENT(DEPARTMENT_ID);

CREATE TABLE FACULTY
(
  FACULTY_ID CHAR(4),
  FACULTY_NAME VARCHAR(20) NOT NULL,
  PRIMARY KEY (FACULTY_ID),
  DEPT_ID CHAR(3),
  FOREIGN KEY (DEPT_ID) REFERENCES DEPARTMENT(DEPARTMENT_ID)
);

ALTER TABLE DEPARTMENT ADD CONSTRAINT fk_mgrid FOREIGN KEY(MGR_ID) REFERENCES FACULTY(FACULTY_ID);

CREATE TABLE HOSTEL
(
  HOSTEL_ID CHAR(6),
  HOSTEL_NAME VARCHAR(10) NOT NULL,
  HOSTEL_ADDR VARCHAR(100) NOT NULL,
  PRIMARY KEY (HOSTEL_ID)
);

CREATE TABLE STUD_HOSTEL
(
  GUARDIAN_NAME VARCHAR(10) NOT NULL,
  GUARDIAN_ADDR VARCHAR(100) NOT NULL,
  ROOM_NO INT NOT NULL,
  HOST_ID CHAR(6) ,
  SRN CHAR(10),
  FOREIGN KEY (HOST_ID) REFERENCES HOSTEL(HOSTEL_ID),
  FOREIGN KEY (SRN) REFERENCES STUDENT(SRN)
);


CREATE TABLE COURSE
(
  COURSE_ID CHAR(4),
  COURSE_NAME VARCHAR(20) NOT NULL,
  COURSE_HEAD VARCHAR(4) ,
  PRIMARY KEY (COURSE_ID),
  DEPT_ID CHAR(3),
  FOREIGN KEY (DEPT_ID) REFERENCES DEPARTMENT(DEPARTMENT_ID),
  FOREIGN KEY (COURSE_HEAD) REFERENCES FACULTY(FACULTY_ID),
  UNIQUE (COURSE_NAME)
);

CREATE TABLE FACULTY_COURSE
(
  FAC_ID CHAR(4),
  CRS_ID CHAR(4),
  FAC_RATING CHAR(1) NOT NULL,
  PRIMARY KEY (FAC_ID, CRS_ID),
  FOREIGN KEY (FAC_ID) REFERENCES FACULTY(FACULTY_ID),
  FOREIGN KEY (CRS_ID) REFERENCES COURSE(COURSE_ID)
);

CREATE TABLE EXAM
(
  EXAM_ID CHAR(5) , 
  MAX_MARKS INT NOT NULL,
  CRS_ID CHAR(4),
  EXAM_DATE DATE,
  PRIMARY KEY (EXAM_ID),
  FOREIGN KEY (CRS_ID) REFERENCES COURSE(COURSE_ID)
);

CREATE TABLE EXAM_STUD
(
  MARKS INT NOT NULL,
  GRADE CHAR(1) NOT NULL, 
  SRN CHAR(10),
  EM_ID CHAR(5),
  PRIMARY KEY (SRN, EM_ID),
  FOREIGN KEY (SRN) REFERENCES STUDENT(SRN),
  FOREIGN KEY (EM_ID) REFERENCES EXAM(EXAM_ID)
);

CREATE TABLE LIBRARY
(
  LIBRARY_ID CHAR(5),
  PRIMARY KEY (LIBRARY_ID),
  DEPT_ID CHAR(3),
  FOREIGN KEY (DEPT_ID) REFERENCES DEPARTMENT(DEPARTMENT_ID)
);

CREATE TABLE BOOK
(
  ISBN CHAR(13),
  COPY_NO INT,
  BOOK_NAME VARCHAR(50) NOT NULL,
  AUTHOR VARCHAR(10) NOT NULL,
  PUBLISHER VARCHAR(20) NOT NULL,
  PRIMARY KEY (ISBN, COPY_NO),
  LIB_ID CHAR(5),
  FOREIGN KEY (LIB_ID) REFERENCES LIBRARY(LIBRARY_ID)
);

CREATE TABLE BOOK_STUD
(
  ISSUE_DATE DATE NOT NULL,
  RETURN_DATE DATE NOT NULL,
  ISBN CHAR(13),
  COPY_NO INT,
  SRN CHAR(10), 
  FOREIGN KEY (ISBN, COPY_NO) REFERENCES BOOK(ISBN, COPY_NO),
  FOREIGN KEY (SRN) REFERENCES STUDENT(SRN)
);