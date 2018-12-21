desc customer;
select * from customer;
desc employees;
select * from login_creds;

delete from login_creds where USER_NAME='charan';
desc login_cred;
commit;

alter table login_cred drop column role;
select * from customer;
select * from myEmployee;

CREATE TABLE login_cred (
  USER_NAME varchar(30) NOT NULL,
  PASSWORD varchar(65) NOT NULL,
  PRIMARY KEY (USER_NAME)
)


CREATE TABLE login_creds (
  USER_NAME varchar(30) NOT NULL,
  PASSWORD varchar(65) NOT NULL,
  ROLE varchar(10) DEFAULT NULL,
  PRIMARY KEY (USER_NAME)
)


delete from customer where customer_code=381;
commit;
select * from login_creds;
select count(*) from login_creds;
desc customer;
select * from customer;
select count(*) from customer;








 
 
