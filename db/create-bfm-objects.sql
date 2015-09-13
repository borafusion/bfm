  DROP SEQUENCE XXBFM_CUSTOMER_SEQ;
  /
  DROP TABLE XXBFM_CUSTOMER_ALL CASCADE CONSTRAINTS;
  /
  CREATE TABLE XXBFM.XXBFM_CUSTOMER_ALL
    (
      CUSTOMER_ID       NUMBER NOT NULL,
      NAME              VARCHAR2(256),
      SITE              VARCHAR2(256),
      ADDRESS           VARCHAR2(2048) ,
      START_DATE        TIMESTAMP(6) ,
      END_DATE          TIMESTAMP(6) ,
      CREATED_BY        VARCHAR2(256) NOT NULL ,
      CREATION_DATE     TIMESTAMP(6) NOT NULL ,
      LAST_UPDATED_BY   VARCHAR2(256) NOT NULL ,
      LAST_UPDATE_DATE  TIMESTAMP(6) NOT NULL ,
      LAST_UPDATE_LOGIN VARCHAR2(32),
      TENANT_ID         NUMBER
    );
CREATE SEQUENCE XXBFM_CUSTOMER_SEQ MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 101 CACHE 20 ORDER NOCYCLE ;
  ALTER TABLE "XXBFM_CUSTOMER_ALL" ADD CONSTRAINT "XXBFM_CUSTOMER_PK" PRIMARY KEY ("CUSTOMER_ID") ENABLE;
CREATE OR REPLACE VIEW XXBFM_CUSTOMER_V
AS
  ( SELECT * FROM XXBFM_CUSTOMER_ALL
  );
-------------------------
DROP SEQUENCE XXBFM_CURRENCY_SEQ;
/
DROP TABLE XXBFM_CURRENCY_ALL CASCADE CONSTRAINTS;
/
CREATE TABLE XXBFM.XXBFM_CURRENCY_ALL
  (
    CURRENCY_ID       NUMBER NOT NULL,
    CURRENCY_CODE     VARCHAR2(3) NOT NULL ,
    NAME              VARCHAR2(256) NOT NULL ,
    BASE_CURRENCY     VARCHAR2(3) ,
    CONVERSION_RATE   NUMBER ,
    START_DATE        TIMESTAMP(6) ,
    END_DATE          TIMESTAMP(6) ,
    CREATED_BY        VARCHAR2(256) NOT NULL ,
    CREATION_DATE     TIMESTAMP(6) NOT NULL ,
    LAST_UPDATED_BY   VARCHAR2(256) NOT NULL ,
    LAST_UPDATE_DATE  TIMESTAMP(6) NOT NULL ,
    LAST_UPDATE_LOGIN VARCHAR2(32),
    TENANT_ID         NUMBER
  );
CREATE SEQUENCE XXBFM_CURRENCY_SEQ MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 101 CACHE 20 ORDER NOCYCLE ;
  ALTER TABLE "XXBFM_CURRENCY_ALL" ADD CONSTRAINT "XXBFM_CURRENCY_PK" PRIMARY KEY ("CURRENCY_ID") ENABLE;
CREATE OR REPLACE VIEW XXBFM_CURRENCY_V
AS
  ( SELECT * FROM XXBFM_CURRENCY_ALL
  );
  --------------------------------------------------
  DROP SEQUENCE XXBFM_BANK_SEQ;
  /
  DROP TABLE XXBFM_BANK_ALL CASCADE CONSTRAINTS;
  /
  CREATE TABLE XXBFM.XXBFM_BANK_ALL
    (
      BANK_ID           NUMBER NOT NULL,
      BANK_SHORTNAME    VARCHAR2(256) NOT NULL ,
      BANK_NAME         VARCHAR2(256) NOT NULL ,
      BRANCH_ADDRESS    VARCHAR2(256) NOT NULL ,
      ACCOUNTNO         VARCHAR2(256) NOT NULL ,
      START_DATE        TIMESTAMP(6)  ,
      END_DATE          TIMESTAMP(6) ,
      CREATED_BY        VARCHAR2(256) NOT NULL ,
      CREATION_DATE     TIMESTAMP(6) NOT NULL ,
      LAST_UPDATED_BY   VARCHAR2(256) NOT NULL ,
      LAST_UPDATE_DATE  TIMESTAMP(6) NOT NULL ,
      LAST_UPDATE_LOGIN VARCHAR2(32),
	  TENANT_ID         NUMBER
    );
CREATE SEQUENCE XXBFM_BANK_SEQ MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 101 CACHE 20 ORDER NOCYCLE ;
  ALTER TABLE "XXBFM_BANK_ALL" ADD CONSTRAINT "XXBFM_BANK_PK" PRIMARY KEY ("BANK_ID") ENABLE;
CREATE OR REPLACE VIEW XXBFM_BANK_V
AS
  ( SELECT * FROM XXBFM_BANK_ALL
  );
  -----------------------
  DROP SEQUENCE XXBFM_BUSINESS_ENTITY_SEQ;
  /
  DROP TABLE XXBFM_BUSINESS_ENTITY_ALL CASCADE CONSTRAINTS;
  /
  CREATE TABLE XXBFM.XXBFM_BUSINESS_ENTITY_ALL
    (
      BUSINESS_ENTITY_ID NUMBER NOT NULL ,
      BUSINESS_ENTITY    VARCHAR2(256) NOT NULL ,
      BUSINESS_GROUP     VARCHAR2(256) NOT NULL ,
      PROJECT_CODE       VARCHAR2(256) ,
      COMBINATION        VARCHAR2(1024) ,
      STATUS             VARCHAR2(256) ,
      CREATED_BY         VARCHAR2(256),
      CREATION_DATE      TIMESTAMP(6) ,
      LAST_UPDATED_BY    VARCHAR2(256),
      LAST_UPDATE_DATE   TIMESTAMP(6) ,
      LAST_UPDATE_LOGIN  VARCHAR2(32),
	  TENANT_ID         NUMBER
    );
CREATE SEQUENCE XXBFM_BUSINESS_ENTITY_SEQ MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 101 CACHE 20 ORDER NOCYCLE ;
  ALTER TABLE "XXBFM_BUSINESS_ENTITY_ALL" ADD CONSTRAINT "XXBFM_BUSINESS_ENTITY_PK" PRIMARY KEY ("BUSINESS_ENTITY_ID") ENABLE;
CREATE OR REPLACE VIEW XXBFM_BUSINESS_ENTITY_V
AS
  ( SELECT * FROM XXBFM_BUSINESS_ENTITY_ALL
  );
  -----------------------
  DROP SEQUENCE XXBFM_FACILITY_STRUCTURE_SEQ;
  /
  DROP TABLE XXBFM_FACILITY_STRUCTURE_ALL CASCADE CONSTRAINTS;
  /
  CREATE TABLE XXBFM.XXBFM_FACILITY_STRUCTURE_ALL
    (
      FACILITY_STRUCTURE_ID NUMBER NOT NULL ,
      FACILITY_NAME         VARCHAR2(256) NOT NULL ,
      COMPONENT             VARCHAR2(256),
      SUB_COMP              VARCHAR2(256),
      FACILITY_COMBINATION  VARCHAR2(1024),
      START_DATE            TIMESTAMP(6),
      END_DATE              TIMESTAMP(6),
      CREATED_BY            VARCHAR2(256),
      CREATION_DATE         TIMESTAMP(6) ,
      LAST_UPDATED_BY       VARCHAR2(256) ,
      LAST_UPDATE_DATE      TIMESTAMP(6) ,
      LAST_UPDATE_LOGIN     VARCHAR2(32),
	  TENANT_ID         NUMBER
    );
CREATE SEQUENCE XXBFM_FACILITY_STRUCTURE_SEQ MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 101 CACHE 20 ORDER NOCYCLE ;
  ALTER TABLE "XXBFM_FACILITY_STRUCTURE_ALL" ADD CONSTRAINT "XXBFM_FACILITY_STRUCTURE_PK" PRIMARY KEY ("FACILITY_STRUCTURE_ID") ENABLE;
CREATE OR REPLACE VIEW XXBFM_FACILITY_STRUCTURE_V
AS
  ( SELECT * FROM XXBFM_FACILITY_STRUCTURE_ALL
  );
  -----------------------
  /*DROP TABLE XXBFM.XXBFM_STATUS;
  CREATE TABLE XXBFM.XXBFM_STATUS
  (
  ID                   NUMBER NOT NULL ,
  FACILITY_COMBINATION VARCHAR2(256) NOT NULL ,
  XXLEVEL                VARCHAR2(256) ,
  SEQ                  VARCHAR2(256) ,
  STATUS               VARCHAR2(256) ,
  ALERT_API            VARCHAR2(256) ,
  APPROVAL_API         VARCHAR2(256) ,
  ACCOUNTING_API       VARCHAR2(256),
  CREATED_BY           VARCHAR2(256) NOT NULL ,
  CREATION_DATE        DATE NOT NULL ,
  LAST_UPDATED_BY      VARCHAR2(256) NOT NULL ,
  LAST_UPDATE_DATE     DATE NOT NULL ,
  LAST_UPDATE_LOGIN    VARCHAR2(32)
  );*/
 --------------------------------------
  DROP SEQUENCE XXBFM_LOOKUP_TYPE_SEQ;
  /
  DROP TABLE XXBFM_LOOKUP_TYPE_ALL CASCADE CONSTRAINTS;
  /
  CREATE TABLE XXBFM.XXBFM_LOOKUP_TYPE_ALL
    (
      LOOKUP_TYPE_ID    NUMBER NOT NULL,
      LOOKUP_TYPE       VARCHAR2(256) NOT NULL ,
      DESCRIPTION       VARCHAR2(256) NOT NULL ,
      START_DATE        TIMESTAMP(6) ,
      END_DATE          TIMESTAMP(6) ,
      STATUS            VARCHAR2(256),
      CREATED_BY        VARCHAR2(256) ,
      CREATION_DATE     TIMESTAMP(6) ,
      LAST_UPDATED_BY   VARCHAR2(256)  ,
      LAST_UPDATE_DATE  TIMESTAMP(6) ,
      LAST_UPDATE_LOGIN VARCHAR2(32),
	  TENANT_ID         NUMBER
    );
CREATE SEQUENCE XXBFM_LOOKUP_TYPE_SEQ MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 101 CACHE 20 ORDER NOCYCLE ;
  ALTER TABLE "XXBFM_LOOKUP_TYPE_ALL" ADD CONSTRAINT "XXBFM_LOOKUP_TYPE_PK" PRIMARY KEY ("LOOKUP_TYPE_ID") ENABLE;
  ALTER TABLE "XXBFM_LOOKUP_TYPE_ALL" ADD CONSTRAINT "XXBFM_LOOKUP_TYPE_UK" UNIQUE (LOOKUP_TYPE) ENABLE;
CREATE OR REPLACE VIEW XXBFM_LOOKUP_TYPE_V
AS
  ( SELECT * FROM XXBFM_LOOKUP_TYPE_ALL
  );
  -----------------------
  DROP SEQUENCE XXBFM_LOOKUP_VALUE_SEQ;
  /
  DROP TABLE XXBFM_LOOKUP_VALUE_ALL CASCADE CONSTRAINTS;
  /
  CREATE TABLE XXBFM.XXBFM_LOOKUP_VALUE_ALL
    (
      LOOKUP_VALUE_ID   NUMBER NOT NULL,
      LOOKUP_TYPE       VARCHAR2(256) NOT NULL ,
      LOOKUP_VALUE      VARCHAR2(256) NOT NULL ,
      DESCRIPTION       VARCHAR2(256) NOT NULL ,
      START_DATE        TIMESTAMP(6) ,
      END_DATE          TIMESTAMP(6) ,
      STATUS            VARCHAR2(256),
      CREATED_BY        VARCHAR2(256),
      CREATION_DATE     TIMESTAMP(6) ,
      LAST_UPDATED_BY   VARCHAR2(256) ,
      LAST_UPDATE_DATE  TIMESTAMP(6) ,
      LAST_UPDATE_LOGIN VARCHAR2(32),
	  TENANT_ID         NUMBER
    );
CREATE SEQUENCE XXBFM_LOOKUP_VALUE_SEQ MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 101 CACHE 20 ORDER NOCYCLE ;
  ALTER TABLE "XXBFM_LOOKUP_VALUE_ALL" ADD CONSTRAINT "XXBFM_LOOKUP_VALUE_PK" PRIMARY KEY ("LOOKUP_VALUE_ID") ENABLE;
  ALTER TABLE "XXBFM_LOOKUP_VALUE_ALL" ADD CONSTRAINT "XXBFM_LOOKUP_VALUE_UK" UNIQUE (LOOKUP_TYPE, LOOKUP_VALUE) ENABLE;
  ALTER TABLE "XXBFM_LOOKUP_VALUE_ALL" ADD CONSTRAINT "XXBFM_LOOKUP_VALUE_FK1" FOREIGN KEY ("LOOKUP_TYPE") REFERENCES "XXBFM_LOOKUP_TYPE_ALL" ("LOOKUP_TYPE") ENABLE;
CREATE OR REPLACE VIEW XXBFM_LOOKUP_VALUE_V
AS
  ( SELECT * FROM XXBFM_LOOKUP_VALUE_ALL
  );
  -----------------------
  DROP SEQUENCE XXBFM_DISCOUNTING_LIMIT_SEQ;
  /
  DROP TABLE XXBFM_DISCOUNTING_LIMIT_ALL CASCADE CONSTRAINTS;
  /
  CREATE TABLE XXBFM.XXBFM_DISCOUNTING_LIMIT_ALL
    (
      DISCOUNTING_LIMIT_ID NUMBER NOT NULL,
      CUSTOMER_ID          NUMBER ,
      CURRENCY_ID          NUMBER ,
      LIMIT_VALUE          NUMBER ,
      START_DATE           TIMESTAMP(6) ,
      END_DATE             TIMESTAMP(6),
      CREATED_BY           VARCHAR2(256),
      CREATION_DATE        TIMESTAMP(6) ,
      LAST_UPDATED_BY      VARCHAR2(256) ,
      LAST_UPDATE_DATE     TIMESTAMP(6),
      LAST_UPDATE_LOGIN    VARCHAR2(32),
	  TENANT_ID         NUMBER
    );
CREATE SEQUENCE XXBFM_DISCOUNTING_LIMIT_SEQ MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 101 CACHE 20 ORDER NOCYCLE ;
  ALTER TABLE "XXBFM_DISCOUNTING_LIMIT_ALL" ADD CONSTRAINT "XXBFM_DISCOUNTING_LIMIT_PK" PRIMARY KEY ("DISCOUNTING_LIMIT_ID") ENABLE;
  ALTER TABLE "XXBFM_DISCOUNTING_LIMIT_ALL" ADD CONSTRAINT "XXBFM_DISCOUNTING_LIMIT_FK1" FOREIGN KEY ("CUSTOMER_ID") REFERENCES "XXBFM_CUSTOMER_ALL" ("CUSTOMER_ID") ENABLE;
  ALTER TABLE "XXBFM_DISCOUNTING_LIMIT_ALL" ADD CONSTRAINT "XXBFM_DISCOUNTING_LIMIT_FK2" FOREIGN KEY ("CURRENCY_ID") REFERENCES "XXBFM_CURRENCY_ALL" ("CURRENCY_ID") ENABLE;
CREATE OR REPLACE VIEW XXBFM_DISCOUNTING_LIMIT_V
AS
  ( SELECT * FROM XXBFM_DISCOUNTING_LIMIT_ALL
  );
  -----------------------
  DROP SEQUENCE XXBFM_FACILITY_TRACKER_SEQ;
  /
  DROP TABLE XXBFM_FACILITY_TRACKER_ALL CASCADE CONSTRAINTS;
  /
  CREATE TABLE XXBFM.XXBFM_FACILITY_TRACKER_ALL
    (
      FACILITY_TRACKER_ID   NUMBER NOT NULL,
      BANK_ID               NUMBER NOT NULL ,
      BUSINESS_ENTITY_ID    NUMBER NOT NULL ,
      FACILITY_STRUCTURE_ID NUMBER NOT NULL ,
      CURRENCY_ID           NUMBER,
      FACILITY_VALUE        NUMBER (38,2),
      UTILIZED_VALUE	    NUMBER (38,2),
      BANK_REFERENCE        VARCHAR2(256) ,
      START_DATE            TIMESTAMP(6)  ,
      END_DATE              TIMESTAMP(6)  ,
      STATUS                VARCHAR2(256) ,
      CREATED_BY            VARCHAR2(256) ,
      CREATION_DATE         TIMESTAMP(6) ,
      LAST_UPDATED_BY       VARCHAR2(256) ,
      LAST_UPDATE_DATE      TIMESTAMP(6) ,
      LAST_UPDATE_LOGIN     VARCHAR2(32),
	  TENANT_ID         NUMBER
    );
  --fk TO BANKS, BUSINESS ENTTY, FACITLITY STRU, CURRENCY
CREATE SEQUENCE XXBFM_FACILITY_TRACKER_SEQ MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 101 CACHE 20 ORDER NOCYCLE ;
  ALTER TABLE "XXBFM_FACILITY_TRACKER_ALL" ADD CONSTRAINT "XXBFM_FACILITY_TRACKER_PK" PRIMARY KEY ("FACILITY_TRACKER_ID") ENABLE;
  ALTER TABLE "XXBFM_FACILITY_TRACKER_ALL" ADD CONSTRAINT "XXBFM_FACILITY_TRACKER_FK1" FOREIGN KEY ("BANK_ID") REFERENCES "XXBFM_BANK_ALL" ("BANK_ID") ENABLE;
  ALTER TABLE "XXBFM_FACILITY_TRACKER_ALL" ADD CONSTRAINT "XXBFM_FACILITY_TRACKER_FK2" FOREIGN KEY ("BUSINESS_ENTITY_ID") REFERENCES "XXBFM_BUSINESS_ENTITY_ALL" ("BUSINESS_ENTITY_ID") ENABLE;
  ALTER TABLE "XXBFM_FACILITY_TRACKER_ALL" ADD CONSTRAINT "XXBFM_FACILITY_TRACKER_FK3" FOREIGN KEY ("FACILITY_STRUCTURE_ID") REFERENCES "XXBFM_FACILITY_STRUCTURE_ALL" ("FACILITY_STRUCTURE_ID") ENABLE;
  ALTER TABLE "XXBFM_FACILITY_TRACKER_ALL" ADD CONSTRAINT "XXBFM_FACILITY_TRACKER_FK4" FOREIGN KEY ("CURRENCY_ID") REFERENCES "XXBFM_CURRENCY_ALL" ("CURRENCY_ID") ENABLE;
CREATE OR REPLACE VIEW XXBFM_FACILITY_TRACKER_V
AS
  ( SELECT * FROM XXBFM_FACILITY_TRACKER_ALL
  );
  -----------------------
  
   DROP SEQUENCE XXBFM_PURCHASE_ORDER_SEQ;
  /
  DROP TABLE XXBFM_PURCHASE_ORDER CASCADE CONSTRAINTS;
  /
  
  CREATE TABLE "XXBFM"."XXBFM_PURCHASE_ORDER" 
   (	"PO_ID" NUMBER NOT NULL ENABLE, 
	"ORDER_NUMBER" VARCHAR2(100 BYTE) NOT NULL ENABLE, 
	"DESCRIPTION_OF_GOODS" VARCHAR2(500 BYTE), 
	"QUANTITY" NUMBER, 
	"UNIT_PRICE" NUMBER(10,4), 
	"CURRENCY_ID" NUMBER, 
	"TERMS_OF_DELIVERY" VARCHAR2(256 BYTE), 
	"DUE_DATE" DATE, 
	"BENEFICIARY_ID" NUMBER,
	"CREATED_BY" VARCHAR2(256 BYTE) NOT NULL ENABLE, 
	"CREATION_DATE" TIMESTAMP (6) NOT NULL ENABLE, 
	"LAST_UPDATED_BY" VARCHAR2(256 BYTE) NOT NULL ENABLE, 
	"LAST_UPDATE_DATE" TIMESTAMP (6) NOT NULL ENABLE, 
	"LAST_UPDATE_LOGIN" VARCHAR2(32 BYTE),
	"TENANT_ID"         NUMBER	
   );  
   
   CREATE SEQUENCE XXBFM_PURCHASE_ORDER_SEQ MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 101 CACHE 20 ORDER NOCYCLE ;
   
   ALTER TABLE "XXBFM_PURCHASE_ORDER" ADD CONSTRAINT "XXBFM_PURCHASE_ORDER_PK" PRIMARY KEY ("PO_ID") ENABLE;
   ALTER TABLE "XXBFM_PURCHASE_ORDER" ADD CONSTRAINT "XXBFM_PURCHASE_ORDER_FK1" FOREIGN KEY ("CURRENCY_ID") REFERENCES "XXBFM"."XXBFM_CURRENCY_ALL" ("CURRENCY_ID") ENABLE;
   ALTER TABLE "XXBFM_PURCHASE_ORDER" ADD CONSTRAINT "XXBFM_PURCHASE_ORDER_FK2" FOREIGN KEY ("BENEFICIARY_ID") REFERENCES "XXBFM"."XXBFM_BENEFICIARY_DETAIL" ("BENEFICIARY_ID") ENABLE;
   
  -----------------------
  DROP SEQUENCE XXBFM_INWARD_LC_TXN_SOURCE_SEQ;
  /
  DROP TABLE XXBFM_INWARD_LC_TXN_SOURCE CASCADE CONSTRAINTS;
  /
  
  CREATE TABLE "XXBFM"."XXBFM_INWARD_LC_TXN_SOURCE" 
   ("SOURCE_ID" NUMBER NOT NULL ENABLE, 
	"PO_ID" NUMBER, 
	"CREATED_BY" VARCHAR2(256 BYTE) NOT NULL ENABLE, 
	"CREATION_DATE" TIMESTAMP (6) NOT NULL ENABLE, 
	"LAST_UPDATED_BY" VARCHAR2(256 BYTE) NOT NULL ENABLE, 
	"LAST_UPDATE_DATE" TIMESTAMP (6) NOT NULL ENABLE, 
	"LAST_UPDATE_LOGIN" VARCHAR2(32 BYTE),
	"TENANT_ID"         NUMBER
   );  
   
   CREATE SEQUENCE XXBFM_INWARD_LC_TXN_SOURCE_SEQ MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 101 CACHE 20 ORDER NOCYCLE ;
   
   ALTER TABLE "XXBFM_INWARD_LC_TXN_SOURCE" ADD CONSTRAINT "XXBFM_INWARD_LC_TXN_SOURCE_PK" PRIMARY KEY ("SOURCE_ID") ENABLE;
   ALTER TABLE "XXBFM_INWARD_LC_TXN_SOURCE" ADD CONSTRAINT "XXBFM_INWARD_LC_TXN_SOURCE_FK1" FOREIGN KEY ("PO_ID") REFERENCES "XXBFM"."XXBFM_PURCHASE_ORDER" ("PO_ID") ENABLE;  
  -----------------------
  
  DROP SEQUENCE XXBFM_INWARD_LC_TRANS_DTL_SEQ;
  /
  DROP TABLE XXBFM_INWARD_LC_TRANS_DTL CASCADE CONSTRAINTS;
  /

  CREATE TABLE "XXBFM"."XXBFM_INWARD_LC_TRANS_DTL" 
   (	"TRANSACTION_ID" NUMBER NOT NULL ENABLE, 
	"TRANSACTION_TYPE" VARCHAR2(50 BYTE), 
	"TRANSACTION_DATE" DATE, 
	"TRANSACTION_NUMBER" VARCHAR2(100 BYTE), 
	"SOURCE_ID" NUMBER, 
	"BUSINESS_ENTITY_ID" NUMBER, 
	"ISSUING_BANK_ID" NUMBER, 
	"FACILITY_TRACKER_ID" NUMBER, 
	"APPROVAL_STATUS" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
	"BENEFICIARY_BANK_ID" NUMBER, 
	"SOURCE_TYPE" VARCHAR2(100 BYTE), 
	"INVOICE_NUMBER" VARCHAR2(100 BYTE),
	"INVOICE_DATE" DATE, 
	"INVOICE_VALUE" NUMBER, 
	"INVOICE_DUE_DATE" DATE, 
	"INVOICE_STATUS" VARCHAR2(100 BYTE), 
	"DOCUMENT_REF" VARCHAR2(200 BYTE),
	"DOCUMENT_DATE" DATE, 
	"CURRENCY_ID" NUMBER,
	"DOCUMENT_VAL" NUMBER,
	"EXCHG_RATE" NUMBER,
	"OTHER_REF" VARCHAR2(200 BYTE),
	"HEADER_NOTES" VARCHAR2(500 BYTE),
	"CREATED_BY" VARCHAR2(256 BYTE) NOT NULL ENABLE, 
	"CREATION_DATE" TIMESTAMP (6) NOT NULL ENABLE, 
	"LAST_UPDATED_BY" VARCHAR2(256 BYTE) NOT NULL ENABLE, 
	"LAST_UPDATE_DATE" TIMESTAMP (6) NOT NULL ENABLE, 
	"LAST_UPDATE_LOGIN" VARCHAR2(32 BYTE), 
	"VERSION" NUMBER,
	"TENANT_ID"         NUMBER);
        
   CREATE SEQUENCE XXBFM_INWARD_LC_TRANS_DTL_SEQ MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 101 CACHE 20 ORDER NOCYCLE ;
   
   ALTER TABLE "XXBFM_INWARD_LC_TRANS_DTL" ADD CONSTRAINT "XXBFM_INWARD_LC_TRANS_DTL_PK" PRIMARY KEY ("TRANSACTION_ID") ENABLE;
   ALTER TABLE "XXBFM_INWARD_LC_TRANS_DTL" ADD CONSTRAINT "XXBFM_INWARD_LC_TRANS_DTL_FK1" FOREIGN KEY ("BUSINESS_ENTITY_ID")
	  REFERENCES "XXBFM"."XXBFM_BUSINESS_ENTITY_ALL" ("BUSINESS_ENTITY_ID") ENABLE;
   ALTER TABLE "XXBFM_INWARD_LC_TRANS_DTL" ADD CONSTRAINT "XXBFM_INWARD_LC_TRANS_DTL_FK2" FOREIGN KEY ("ISSUING_BANK_ID")
	  REFERENCES "XXBFM"."XXBFM_BANK_ALL" ("BANK_ID") ENABLE;
   ALTER TABLE "XXBFM_INWARD_LC_TRANS_DTL" ADD CONSTRAINT "XXBFM_INWARD_LC_TRANS_DTL_FK3" FOREIGN KEY ("BENEFICIARY_BANK_ID")
	  REFERENCES "XXBFM"."XXBFM_BANK_ALL" ("BANK_ID") ENABLE;
   ALTER TABLE "XXBFM_INWARD_LC_TRANS_DTL" ADD CONSTRAINT "XXBFM_INWARD_LC_TRANS_DTL_FK4" FOREIGN KEY ("FACILITY_TRACKER_ID")
	  REFERENCES "XXBFM"."XXBFM_FACILITY_TRACKER_ALL" ("FACILITY_TRACKER_ID") ENABLE;
   ALTER TABLE "XXBFM_INWARD_LC_TRANS_DTL" ADD CONSTRAINT "XXBFM_INWARD_LC_TRANS_DTL_FK5" FOREIGN KEY ("SOURCE_ID")
	  REFERENCES "XXBFM"."XXBFM_INWARD_LC_TXN_SOURCE" ("SOURCE_ID") ENABLE;
          
  ------------------
  
  DROP SEQUENCE XXBFM_BENEFICIARY_DETAIL_SEQ;
  /
  DROP TABLE XXBFM_BENEFICIARY_DETAIL CASCADE CONSTRAINTS;
  /

  CREATE TABLE "XXBFM"."XXBFM_BENEFICIARY_DETAIL" 
   (	"BENEFICIARY_ID" NUMBER NOT NULL ENABLE, 
	"BENEFICIARY_TYPE" VARCHAR2(50 BYTE), 
	"BENEFICIARY_NAME" VARCHAR2(100 BYTE), 
	"CONTACT_NAME" VARCHAR2(100 BYTE), 
	"CONTACT_NUMBER" VARCHAR2(100 BYTE), 
	"CREATED_BY" VARCHAR2(256 BYTE) NOT NULL ENABLE, 
	"CREATION_DATE" TIMESTAMP (6) NOT NULL ENABLE, 
	"LAST_UPDATED_BY" VARCHAR2(256 BYTE) NOT NULL ENABLE, 
	"LAST_UPDATE_DATE" TIMESTAMP (6) NOT NULL ENABLE, 
	"LAST_UPDATE_LOGIN" VARCHAR2(32 BYTE), 
	"VERSION" NUMBER,
	"TENANT_ID"         NUMBER);
        
   CREATE SEQUENCE XXBFM_BENEFICIARY_DETAIL_SEQ MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 101 CACHE 20 ORDER NOCYCLE ;
   
   ALTER TABLE "XXBFM_BENEFICIARY_DETAIL" ADD CONSTRAINT "XXBFM_BENEFICIARY_DETAIL_PK" PRIMARY KEY ("BENEFICIARY_ID") ENABLE;          
  -----------------------  