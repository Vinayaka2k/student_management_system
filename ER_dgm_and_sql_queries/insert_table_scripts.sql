INSERT INTO DEPARTMENT VALUES(
'101','CSE',NULL
);

INSERT INTO DEPARTMENT VALUES(
'102','ECE',NULL
);

INSERT INTO DEPARTMENT VALUES(
'103','EEE',NULL
);

INSERT INTO DEPARTMENT VALUES(
'104','MECH',NULL
);

INSERT INTO DEPARTMENT VALUES(
'105','CV',NULL
);

INSERT INTO DEPARTMENT VALUES(
'106','BT',NULL
);




INSERT INTO STUDENT VALUES(
'ADARSH','ABC4567898','B','ADDR1','101'
);

INSERT INTO STUDENT VALUES(
'GAGAN','FAR5896548','G','ADDR2','101'
);

INSERT INTO STUDENT VALUES(
'PRANAV','ZAA9854755','B','ADDR3','102'
);

INSERT INTO STUDENT VALUES(
'ADITYA','SFE5578845','D','ADDR4','103'
);

INSERT INTO STUDENT VALUES(
'PRAVEEN','EEW4457778','G','ADDR5','104'
);

INSERT INTO STUDENT VALUES(
'PAVAN','PPS4587458','H','ADDR6','105'
);

INSERT INTO STUDENT VALUES(
'AKASH','YRD4587599','A','ADDR7','102'
);


INSERT INTO STUDENT VALUES(
'ASHWIN','EWD4587432','B','ADDR8','103'
);


INSERT INTO STUDENT VALUES(
'GOPAL','RES4578126','B','ADDR9','102'
);


INSERT INTO STUDENT VALUES(
'SHASHIDHAR','DDS4581265','C','ADDR10','104'
);


INSERT INTO STUDENT VALUES(
'VIGNESH','THA4584723','B','ADDR11','105'
);


INSERT INTO STUDENT VALUES(
'SAGAR','BNW4751268','B','ADDR12','106'
);








INSERT INTO FACULTY VALUES(
'1104','SHYLAJA','101'
);

INSERT INTO FACULTY VALUES(
'2108','VRINDA','102'
);

INSERT INTO FACULTY VALUES(
'3467','SHILPA','103'
);

INSERT INTO FACULTY VALUES(
'4987','PRIYA','104'
);

INSERT INTO FACULTY VALUES(
'5492','VENKATESH','105'
);

INSERT INTO FACULTY VALUES(
'3589','HEMANTH','101'
);

INSERT INTO FACULTY VALUES(
'4264','RAGHAVENDRA','102'
);

INSERT INTO FACULTY VALUES(
'3547','HRITHIK','104'
);

INSERT INTO FACULTY VALUES(
'5547','ROHAN','105'
);

INSERT INTO FACULTY VALUES(
'5024','ABHAY','105'
);

INSERT INTO FACULTY VALUES(
'2104','JOEY','102'
);

INSERT INTO FACULTY VALUES(
'6148','ASH','106'
);

INSERT INTO FACULTY VALUES(
'8447','ASHISH','106'
);





INSERT INTO COURSE VALUES(
'6543','MACHINE LEARNING','1104','101'
);

INSERT INTO COURSE VALUES(
'8732','DBMS','3589','101'
);

INSERT INTO COURSE VALUES(
'5489','DATA SCIENCE','3589','101'
);

INSERT INTO COURSE VALUES(
'2188','VLSI DESIGN','4264','102'
);

INSERT INTO COURSE VALUES(
'3235','HEAT ENGINES','3547','104'
);

INSERT INTO COURSE VALUES(
'4877','DYNAMICS','5492','105'
);

INSERT INTO COURSE VALUES(
'5554','STATICS','5024','105'
);

INSERT INTO COURSE VALUES(
'4887','ROBOTICS','2104','102'
);

INSERT INTO COURSE VALUES(
'9856','BT INTRO','8447','106'
);

INSERT INTO COURSE VALUES(
'7845','EEE INTRO','3467','103'
);


UPDATE DEPARTMENT SET MGR_ID = '1104' WHERE DEPARTMENT_ID IN('101');
UPDATE DEPARTMENT SET MGR_ID = '2108' WHERE DEPARTMENT_ID IN('102');
UPDATE DEPARTMENT SET MGR_ID = '3467' WHERE DEPARTMENT_ID IN('103');
UPDATE DEPARTMENT SET MGR_ID = '4987' WHERE DEPARTMENT_ID IN('104');
UPDATE DEPARTMENT SET MGR_ID = '5492' WHERE DEPARTMENT_ID IN('105');
UPDATE DEPARTMENT SET MGR_ID = '6148' WHERE DEPARTMENT_ID IN('106');


INSERT INTO FACULTY_COURSE VALUES(
'1104','6543','5'
);

INSERT INTO FACULTY_COURSE VALUES(
'1104','8732','5'
);

INSERT INTO FACULTY_COURSE VALUES(
'1104','5489','5'
);

INSERT INTO FACULTY_COURSE VALUES(
'2108','2188','5'
);

INSERT INTO FACULTY_COURSE VALUES(
'2108','4887','5'
);


INSERT INTO FACULTY_COURSE VALUES(
'5492','4877','5'
);

INSERT INTO FACULTY_COURSE VALUES(
'5547','4887','5'
);

INSERT INTO FACULTY_COURSE VALUES(
'5024','4887','5'
);

INSERT INTO FACULTY_COURSE VALUES(
'3589','6543','5'
);

INSERT INTO FACULTY_COURSE VALUES(
'3589','8732','5'
);

INSERT INTO FACULTY_COURSE VALUES(
'3589','5489','5'
);

INSERT INTO FACULTY_COURSE VALUES(
'4264','2188','5'
);

INSERT INTO FACULTY_COURSE VALUES(
'4264','4887','5'
);

INSERT INTO FACULTY_COURSE VALUES(
'3547','3235','5'
);

INSERT INTO FACULTY_COURSE VALUES(
'5492','5554','5'
);

INSERT INTO FACULTY_COURSE VALUES(
'5024','5554','5'
);

INSERT INTO FACULTY_COURSE VALUES(
'2104','4887','5'
);

INSERT INTO FACULTY_COURSE VALUES(
'4987','3235','5'
);

INSERT INTO FACULTY_COURSE VALUES(
'3467','7845','5'
);

INSERT INTO FACULTY_COURSE VALUES(
'6148','9856','5'
);

INSERT INTO FACULTY_COURSE VALUES(
'8447','9856','5'
);




INSERT INTO LIBRARY VALUES(
'12345','101'
);

INSERT INTO LIBRARY VALUES(
'67234','101'
);

INSERT INTO LIBRARY VALUES(
'89243','102'
);

INSERT INTO LIBRARY VALUES(
'34334','103'
);

INSERT INTO LIBRARY VALUES(
'92679','101'
);

INSERT INTO LIBRARY VALUES(
'11123','104'
);

INSERT INTO LIBRARY VALUES(
'42148','105'
);

INSERT INTO LIBRARY VALUES(
'82268','106'
);

INSERT INTO LIBRARY VALUES(
'71124','102'
);

INSERT INTO LIBRARY VALUES(
'24124','105'
);

INSERT INTO LIBRARY VALUES(
'66168','102'
);







INSERT INTO BOOK VALUES(
'1625954058582','1','B1','A1','P1','12345'
);



INSERT INTO BOOK VALUES(
'1625954058582','2','B1','A1','P1','12345'
);


INSERT INTO BOOK VALUES(
'1625954058582','3','B1','A1','P1','67234'
);


INSERT INTO BOOK VALUES(
'1625954058582','4','B1','A1','P1','67234'
);


INSERT INTO BOOK VALUES(
'1625954058582','5','B1','A1','P1','92679'
);


INSERT INTO BOOK VALUES(
'1625954058582','6','B1','A1','P1','12345'
);





INSERT INTO BOOK VALUES(
'6481856385823','1','B2','A2','P2','12345'
);

INSERT INTO BOOK VALUES(
'6481856385823','2','B2','A2','P2','67234'
);

INSERT INTO BOOK VALUES(
'6481856385823','3','B2','A2','P2','92679'
);




INSERT INTO BOOK VALUES(
'0450552086748','1','B3','A3','P3','89243'
);


INSERT INTO BOOK VALUES(
'0450552086748','2','B3','A3','P3','71124'
);


INSERT INTO BOOK VALUES(
'0450552086748','3','B3','A3','P3','71124'
);


INSERT INTO BOOK VALUES(
'0450552086748','4','B3','A3','P3','66168'
);




INSERT INTO BOOK VALUES(
'0176674020844','1','B4','A4','P4','66168'
);

INSERT INTO BOOK VALUES(
'0176674020844','2','B4','A4','P4','71124'
);





INSERT INTO BOOK VALUES(
'9685895986047','1','B5','A5','P5','34334'
);

INSERT INTO BOOK VALUES(
'9685895986047','2','B5','A5','P5','34334'
);

INSERT INTO BOOK VALUES(
'9685895986047','3','B5','A5','P5','34334'
);




INSERT INTO BOOK VALUES(
'2850921121907','1','B6','A6','P6','11123'
);


INSERT INTO BOOK VALUES(
'2850921121907','2','B6','A6','P6','11123'
);


INSERT INTO BOOK VALUES(
'6351914189465','1','B7','A7','P7','42148'
);


INSERT INTO BOOK VALUES(
'2126687485627','1','B8','A8','P8','82268'
);







INSERT INTO BOOK_STUD VALUES(
'2019/2/1','2019/2/15','1625954058582','1','ABC4567898'
);

INSERT INTO BOOK_STUD VALUES(
'2019/2/1','2019/2/15','6481856385823','2','ABC4567898'
);


INSERT INTO BOOK_STUD VALUES(
'2019/2/1','2019/2/15','1625954058582','5','FAR5896548'
);

INSERT INTO BOOK_STUD VALUES(
'2019/2/1','2019/2/15','0450552086748','2','ZAA9854755'
);

INSERT INTO BOOK_STUD VALUES(
'2019/2/1','2019/2/15','0176674020844','1','ZAA9854755'
);

INSERT INTO BOOK_STUD VALUES(
'2019/2/1','2019/2/15','9685895986047','2','SFE5578845'
);

INSERT INTO BOOK_STUD VALUES(
'2019/2/1','2019/2/15','2850921121907','1','EEW4457778'
);

INSERT INTO BOOK_STUD VALUES(
'2019/2/1','2019/2/15','6351914189465','1','PPS4587458'
);




INSERT INTO HOSTEL VALUES(
'654686','HOSTEL1','HOSTEL_ADDR1'
);

INSERT INTO HOSTEL VALUES(
'547885','HOSTEL2','HOSTEL_ADDR2'
);

INSERT INTO HOSTEL VALUES(
'425221','HOSTEL3','HOSTEL_ADDR3'
);





INSERT INTO STUD_HOSTEL VALUES(
'G1','GADDR1','543','654686','ZAA9854755'
);

INSERT INTO STUD_HOSTEL VALUES(
'G2','GADDR2','334','425221','ABC4567898'
);

INSERT INTO STUD_HOSTEL VALUES(
'G3','GADDR3','22','547885','FAR5896548'
);

INSERT INTO STUD_HOSTEL VALUES(
'G4','GADDR4','321','654686','SFE5578845'
);

INSERT INTO STUD_HOSTEL VALUES(
'G5','GADDR5','12','547885','EEW4457778'
);

INSERT INTO STUD_HOSTEL VALUES(
'G6','GADDR6','326','425221','YRD4587599'
);

INSERT INTO STUD_HOSTEL VALUES(
'G7','GADDR7','54','654686','DDS4581265'
);

INSERT INTO STUD_HOSTEL VALUES(
'G8','GADDR8','84','547885','EWD4587432'
);

INSERT INTO STUD_HOSTEL VALUES(
'G9','GADDR9','687','425221','THA4584723'
);






INSERT INTO EXAM VALUES(
'32154','100','6543','2019/01/03'
);


INSERT INTO EXAM VALUES(
'34855','100','5489','2019/04/05'
);


INSERT INTO EXAM VALUES(
'44444','100','2188','2019/07/09'
);


INSERT INTO EXAM VALUES(
'23321','100','4887','2019/05/02'
);


INSERT INTO EXAM VALUES(
'98567','100','3235','2019/02/25'
);


INSERT INTO EXAM VALUES(
'87244','100','5554','2019/06/13'
);


INSERT INTO EXAM VALUES(
'38452','100','5489','2019/12/24'
);



INSERT INTO EXAM VALUES(
'01501','100','6543','2019/06/12'
);


INSERT INTO EXAM VALUES(
'10502','100','3235','2019/05/11'
);


INSERT INTO EXAM VALUES(
'30446','100','5554','2019/12/12'
);















INSERT INTO EXAM_STUD VALUES(
'85','A','ABC4567898','32154'
);

INSERT INTO EXAM_STUD VALUES(
'14','F','ABC4567898','38452'
);

INSERT INTO EXAM_STUD VALUES(
'95','S','FAR5896548','34855'
);


INSERT INTO EXAM_STUD VALUES(
'77','B','FAR5896548','38452'
);


INSERT INTO EXAM_STUD VALUES(
'50','D','ZAA9854755','23321'
);

INSERT INTO EXAM_STUD VALUES(
'44','F','ZAA9854755','44444'
);


INSERT INTO EXAM_STUD VALUES(
'32','F','EEW4457778','98567'
);

INSERT INTO EXAM_STUD VALUES(
'99','S','EEW4457778','10502'
);

INSERT INTO EXAM_STUD VALUES(
'80','A','DDS4581265','10502'
);

INSERT INTO EXAM_STUD VALUES(
'85','A','PPS4587458','30446'
);

INSERT INTO EXAM_STUD VALUES(
'85','A','PPS4587458','87244'
);

