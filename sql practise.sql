select * from customer;
desc customer;
select * from employees;
select * from departments;

/*natural join automatically fetches the identical columns making our work easier*/
select e.first_name, e.last_name, e.hire_date, d.department_name from employees e natural join departments d;

select e.first_name, e.last_name, e.hire_date, d.department_name from employees e left join departments d on e.department_id=d.department_id;

select e.first_name, e.last_name, e.hire_date, d.department_name from employees e right join departments d on e.department_id=d.department_id;

select e.first_name, e.last_name, e.hire_date, d.department_name from employees e full join departments d on e.department_id=d.department_id;

select max(salary),department_id from employees group by department_id;

select max(salary), departmentid from myEmployee group by departmentid;

select * from myEmployee;

select max(salary), departmentid, design from myEmployee group by departmentid, design;

select max(salary), departmentid from myEmployee where salary>=35000 group by departmentid ;

select * from constraint;
/*a table can have more than one unique constraints but only one primary key*/
CREATE TABLE constraint (
  first_name varchar(30) not null ,
  last_name varchar(65) ,
  email varchar(50) unique,
  phone varchar(10) unique,
  PRIMARY KEY (first_name)
)
/*unique columns can be null where as primary can't be null*/
INSERT INTO constraint(first_name, last_name, email, phone)
VALUES ('','maddala','jag@gmai.com',98700001234);
/*unique can be null*/
INSERT INTO constraint(first_name, last_name)
VALUES ('ram','pothineni');

/*ORA-00001: unique constraint (HR.SYS_C007058) violated while trying to insert same phone number
*/
INSERT INTO constraint(first_name, last_name, phone)
VALUES ('ram','pothineni',98700001234);



/*non-equi joins*/
CREATE TABLE marks_grades (
  min number(5) NOT NULL,
  max number(5) NOT NULL,
  grade varchar(2) NOT NULL,
  PRIMARY KEY (grade)
)

INSERT INTO marks_grades(min, max, grade)
VALUES (100,90,'A');

CREATE TABLE STUDENT (
  ROLL number(3) NOT NULL UNIQUE,
  NAME varchar(25) NOT NULL ,
  MARKS NUMBER(4) NOT NULL,
  PRIMARY KEY (NAME)
)

INSERT INTO STUDENT(ROLL,NAME,MARKS) VALUES (4,'KRISHNA',86);

DESC MARKS_GRADES;
DESC STUDENT;

SELECT * FROM MARKS_GRADES;
SELECT * FROM STUDENT;

SELECT S.NAME,S.ROLL,S.MARKS,M.GRADE 
FROM STUDENT S JOIN MARKS_GRADES M 
 WHERE S.MARKS>= M.MIN AND S.MARKS<M.MAX;

SELECT S.NAME,S.ROLL,S.MARKS,M.GRADE 
FROM STUDENT S JOIN MARKS_GRADES M 
 WHERE S.MARKS>= M.MIN AND S.MARKS<M.MAX;
 /*00905. 00000 -  "missing keyword"*/
 
 /*SELF JOIN*/
 SELECT E1.EMPLOYEE_ID ID,E1.FIRST_NAME NAME, E1.SALARY,E1.PHONE_NUMBER,E2.FIRST_NAME MANAGER_NAME
FROM EMPLOYEES E1 ,EMPLOYEES E2
WHERE E1.MANAGER_ID=E2.EMPLOYEE_ID;

/*views*/
/*simple view*/
create view l1
as
select * from employees;

select * from l1;


/* All columns       having salary greater than 7000*/
create view l2
as
select * from employees where salary>7000;

select * from l2;

/* All rows       only columns related to contact details*/
create view contact
as
select first_name,email,phone_number from employees; 

select * from contact;

/* updating data of underlying table by using one of it's views*/
update  contact set phone_number =987654321 where first_name='Steven';
select * from employees;

rollback;

/*one more view on which permissions can be given to finance department*/
create view finance
as
select salary, commission_pct from employees; 

select * from finance;


/*read only view*/

create view viewonly
as
select salary, commission_pct from employees; 
with readonly;                                    /*not working*/
select * from viewonly;

create or replace view viewonly 
as
select salary, commission_pct from employees
with read only;

select * from viewonly where salary=24000;
update viewonly set SALARY=20000 where salary=24000;

select * from employees;
commit;
rollback;


/*we can not delete views because it is under integrity constraint*/
delete viewonly;
/*42399.0000 - "cannot perform a DML operation on a read-only view"
*/
delete finance;
/* ORA-02292: integrity constraint (HR.DEPT_MGR_FK) violated - child record found
*/



/*cross join*/
CREATE TABLE shop (
  name varchar(20) NOT NULL,
  PRIMARY KEY (name)
)
CREATE TABLE mobile (
  name varchar(25) NOT NULL,
  PRIMARY KEY (name)
)

INSERT INTO mobile(name) VALUES ('apple');

select * from shop;
select * from mobile;

INSERT INTO mobile(name) VALUES ('apple');

select s.name,m.name 
from shop s cross join mobile m;

/*applying join in view*/
create view mobshop
as 
select s.name shopname, m.name mobilename
from shop s cross join mobile m;

select * from mobshop;


