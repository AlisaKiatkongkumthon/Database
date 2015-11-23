/* ---------------------------------------------------------------------- */
/* Script generated with: DeZign for Databases V9.0.0                     */
/* Target DBMS:           Oracle 10g                                      */
/* Project file:          Project2 (1).dez                                */
/* Project name:                                                          */
/* Author:                                                                */
/* Script type:           Database creation script                        */
/* Created on:            2015-11-23 19:53                                */
/* ---------------------------------------------------------------------- */


/* ---------------------------------------------------------------------- */
/* Add tables                                                             */
/* ---------------------------------------------------------------------- */

/* ---------------------------------------------------------------------- */
/* Add table "Customer"                                                   */
/* ---------------------------------------------------------------------- */
create schema 5605104029db;
use 5605104029db;
CREATE TABLE Customer (
    CUST_ID VARCHAR2(4) CONSTRAINT NN_Customer_CUST_ID NOT NULL,
    CUST_NAME VARCHAR2(40),
    CUST_ADDRESS VARCHAR2(100),
    CUST_PHONE VARCHAR2(10),
    EMAIL VARCHAR2(40),
    CONSTRAINT PK_Customer PRIMARY KEY (CUST_ID)
);

/* ---------------------------------------------------------------------- */
/* Add table "Evidence"                                                   */
/* ---------------------------------------------------------------------- */

CREATE TABLE Evidence (
    EVID_NO VARCHAR2(7) CONSTRAINT NN_Evidence_EVID_NO NOT NULL,
    CUST_ID VARCHAR2(4),
    TIME VARCHAR2(5),
    Ev_DATE DATE,
    MONEY NUMBER,
    CONSTRAINT PK_Evidence PRIMARY KEY (EVID_NO)
);

/* ---------------------------------------------------------------------- */
/* Add table "Product"                                                    */
/* ---------------------------------------------------------------------- */

CREATE TABLE Product (
    PROD_ID VARCHAR2(10) CONSTRAINT NN_Product_PROD_ID NOT NULL,
    PROD_NAME VARCHAR2(40),
    PROD_CATEGORY VARCHAR2(25),
    PROD_COLOR VARCHAR2(10),
    PROD_PRICE NUMBER(10,2),
    CONSTRAINT PK_Product PRIMARY KEY (PROD_ID)
);

/* ---------------------------------------------------------------------- */
/* Add table "Transfer"                                                   */
/* ---------------------------------------------------------------------- */

CREATE TABLE Transfer (
    TRAN_NO VARCHAR2(5) CONSTRAINT NN_Transfer_TRAN_NO NOT NULL,
    PROD_ID VARCHAR2(4) CONSTRAINT NN_Transfer_PROD_ID NOT NULL,
    CUST_NAME VARCHAR2(7),
    CUST_ADDRESS VARCHAR2(100),
    CONSTRAINT PK_Transfer PRIMARY KEY (TRAN_NO)
);

/* ---------------------------------------------------------------------- */
/* Add table "orders"                                                     */
/* ---------------------------------------------------------------------- */

CREATE TABLE orders (
    ORDER_ID VARCHAR2(5) CONSTRAINT NN_orders_ORDER_ID NOT NULL,
    CUST_ID VARCHAR2(4),
    PROD_ID VARCHAR2(6),
    AMOUNT VARCHAR2(10),
    PRICE NUMBER(10),
    CUST_NAME VARCHAR2(35),
    ORDER_DATE DATE,
    CONSTRAINT PK_orders PRIMARY KEY (ORDER_ID)
);

/* ---------------------------------------------------------------------- */
/* Add table "Order_Detail"                                               */
/* ---------------------------------------------------------------------- */

CREATE TABLE Order_Detail (
    ORDER_ID VARCHAR2(5) CONSTRAINT NN_Order_Detail_ORDER_ID NOT NULL,
    PROD_ID VARCHAR2(10) CONSTRAINT NN_Order_Detail_PROD_ID NOT NULL,
    ORDER_NAME VARCHAR2(40),
    AMOUNT VARCHAR2(6),
    CONSTRAINT PK_Order_Detail PRIMARY KEY (ORDER_ID, PROD_ID)
);

/* ---------------------------------------------------------------------- */
/* Add foreign key constraints                                            */
/* ---------------------------------------------------------------------- */

ALTER TABLE orders ADD CONSTRAINT Customer_orders 
    FOREIGN KEY (CUST_ID) REFERENCES Customer (CUST_ID);

ALTER TABLE Evidence ADD CONSTRAINT Customer_Evidence 
    FOREIGN KEY (CUST_ID) REFERENCES Customer (CUST_ID);

ALTER TABLE Transfer ADD CONSTRAINT Product_Transfer 
    FOREIGN KEY (PROD_ID) REFERENCES Product (PROD_ID);

ALTER TABLE Order_Detail ADD CONSTRAINT orders_Order_Detail 
    FOREIGN KEY (ORDER_ID) REFERENCES orders (ORDER_ID);

ALTER TABLE Order_Detail ADD CONSTRAINT Product_Order_Detail 
    FOREIGN KEY (PROD_ID) REFERENCES Product (PROD_ID);
