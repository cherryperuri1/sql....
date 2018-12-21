select count(*) from temp_customer_det;
select * from TEMP_CUSTOMER_DET;
delete from temp_customer_det;
commit;
rollback;


select max(customerid) from TEMP_CUSTOMER_DET;

select * from TEMP_CUSTOMER_DET where customercode='Bajaj16';
select * from login_db;
select count(*) from login_db;

update TEMP_CUSTOMER_DET set createdate='24/08/1996' where customercode='Nsbt01';
delete from TEMP_CUSTOMER_DET where customercode='Nsbt01';