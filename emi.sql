CREATE TABLE emi_param (
  sno number(10) NOT NULL,
  principal  NUMBER(12,2)  NOT NULL,
  rate_of_interest NUMBER(4,2)  NOT NULL,
  period_in_months NUMBER(3)  NOT NULL,
  no_of_installments number(5) NOT NULL,
  emi NUMBER(12,2) ,
  breakup number(3),
  PRIMARY KEY(sno)
)


drop table emi_param;




commit;
rollback;


INSERT INTO emi_param(sno, principal, rate_of_interest, period_in_months,no_of_installments,breakup)
VALUES (2,10000,10,12,12,0);

desc emi_param;
select * from emi_param;




CREATE TABLE component (
  installment_no number(10) NOT NULL,
  outstanding_principal number(12,2)  NOT NULL,
  interest_component  NUMBER(12,2)  NOT NULL,
  principal_component  NUMBER(12,2)  NOT NULL,
  emi NUMBER(12,2) ,
  PRIMARY KEY(installment_no)
)


commit;
rollback;





INSERT INTO component(installment_no, outstanding_principal, interest_component, principal_component,emi)
VALUES (3,9000,200,789,893);

delete from component;

select * from component;
select count(*) from component;





