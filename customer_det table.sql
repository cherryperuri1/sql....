--------------------------------------------------------
--  File created - Wednesday-November-28-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CUSTOMER_DET
--------------------------------------------------------

  CREATE TABLE "HR"."CUSTOMER_DET" 
   (	"CUSTOMERID" NUMBER(10,0), 
	"CUSTOMERCODE" VARCHAR2(30 BYTE), 
	"CUSTUMERNAME" VARCHAR2(30 BYTE), 
	"CUSTOMERADDRESS1" VARCHAR2(100 BYTE), 
	"CUSTOMERADDRESS2" VARCHAR2(100 BYTE), 
	"CUSTOMERPINCODE" NUMBER(6,0), 
	"EMAILADDRESS" VARCHAR2(100 BYTE), 
	"CONTACTNUMBER" NUMBER(20,0), 
	"PRIMARYCONTACTPERSON" VARCHAR2(100 BYTE), 
	"RECORDSTATUS" VARCHAR2(1 BYTE), 
	"ACTIVEINACTIVFLAG" VARCHAR2(1 BYTE), 
	"CREATEDATE" DATE, 
	"CREATEDBY" VARCHAR2(30 BYTE), 
	"MODIFIEDDATE" DATE, 
	"MODIFIEDBY" VARCHAR2(30 BYTE), 
	"AUTHORIZEDDATE" DATE, 
	"AUTHORIZEDBY" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
INSERT INTO customer(CUSTOMER_CODE, CUSTOMER_NAME, CUSTOMER_ADDRESS, CUSTOMER_PINCODE, CUSTOMER_EMAIL, CONTACT_NUMBER, REGISTRATION_DATE, CREATED_BY, MODIFIED_DATE)
VALUES (2,'charan','kavali','524201','charan@gmail.com','9542634566','24/08/1996','charan','24/08/1996');