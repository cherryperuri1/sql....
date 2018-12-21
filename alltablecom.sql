select * from temp_customer_det;
delete from temp_customer_det;
commit;
rollback;
select * from customer;
delete from customer;

select * from customers;

