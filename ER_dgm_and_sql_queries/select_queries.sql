1. select the number of students in each department in the descending order of department name

SELECT DEPT_NAME , COUNT(*) FROM STUDENT JOIN DEPARTMENT ON DEPT_ID = DEPARTMENT_ID  GROUP BY DEPARTMENT_ID ORDER BY DEPT_NAME DESC;

2.select the names of the department and manager of the department. 

SELECT DEPT_NAME,FACULTY_NAME AS DEPT_MANAGER_NAME FROM FACULTY JOIN DEPARTMENT ON MGR_ID = FACULTY_ID;

3. select the department that offers highest number of courses

CREATE VIEW VW AS (SELECT DEPT_NAME,COUNT(*) AS COURSE_COUNT FROM DEPARTMENT AS D,COURSE AS C WHERE D.DEPARTMENT_ID = C.DEPT_ID GROUP BY DEPT_NAME);
SELECT * FROM VW;
SELECT DEPT_NAME,COURSE_COUNT AS MAX_COURSE_COUNT FROM VW WHERE COURSE_COUNT IN (SELECT MAX(COURSE_COUNT) FROM VW);

4. select the names of the students who doesnot live in hostel

SELECT STUD_NAME FROM STUDENT WHERE SRN IN
(SELECT S.SRN FROM STUDENT AS S 
EXCEPT 
SELECT SH.SRN FROM STUD_HOSTEL AS SH
);

5. select the name of the students who failed in a particluar course

SELECT STUD_NAME,MARKS FROM EXAM_STUD,EXAM,COURSE,STUDENT WHERE EM_ID = EXAM_ID AND CRS_ID = COURSE_ID AND EXAM_STUD.SRN = STUDENT.SRN AND COURSE_NAME = 'DATA SCIENCE' AND MARKS < 50;

6. select average marks of a section in a particular subject

SELECT SECTION,AVG(MARKS) AS AVG_SECTION_MARKS FROM EXAM_STUD AS ES,EXAM,COURSE,STUDENT AS S WHERE EXAM_ID = EM_ID AND S.SRN = ES.SRN AND CRS_ID = COURSE_ID AND COURSE_NAME='DATA SCIENCE' GROUP BY SECTION;

7. select a particular book that a student took from library

select distinct s.stud_name,b.return_date,b1.book_name 
from book_stud as b,student as s,book as b1
 where b.srn='ABC4567898' and b1.isbn=b.isbn and b.srn=s.srn;

8.  get average marks of a particular student

select AVG(e.marks)
from exam_stud as e,student as s
where s.srn=e.srn and s.stud_name='ADARSH'
group by e.srn;


9. select students with average greater than 70

select s.stud_name
from student as s
where s.srn IN
(
select e.srn
from student as s,exam_stud as e
where e.srn=s.srn
group by e.srn
having AVG(e.marks)>70
)
;


10. select the faculty-course combination with a faculty rating = 5 for a particular course


select faculty_name,course_name from faculty_course,course,faculty 
where course_id = crs_id and fac_rating = '5' and faculty_id = fac_id ;


