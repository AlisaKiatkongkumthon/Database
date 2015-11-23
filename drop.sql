/* ---------------------------------------------------------------------- */
/* Script generated with: DeZign for Databases V9.0.0                     */
/* Target DBMS:           Oracle 10g                                      */
/* Project file:          Project2 (1).dez                                */
/* Project name:                                                          */
/* Author:                                                                */
/* Script type:           Database drop script                            */
/* Created on:            2015-11-23 19:53                                */
/* ---------------------------------------------------------------------- */


/* ---------------------------------------------------------------------- */
/* Drop foreign key constraints                                           */
/* ---------------------------------------------------------------------- */

ALTER TABLE orders DROP CONSTRAINT Customer_orders;

ALTER TABLE Evidence DROP CONSTRAINT Customer_Evidence;

ALTER TABLE Transfer DROP CONSTRAINT Product_Transfer;

ALTER TABLE Order_Detail DROP CONSTRAINT orders_Order_Detail;

ALTER TABLE Order_Detail DROP CONSTRAINT Product_Order_Detail;

/* ---------------------------------------------------------------------- */
/* Drop table "Order_Detail"                                              */
/* ---------------------------------------------------------------------- */

/* Drop constraints */

ALTER TABLE Order_Detail DROP CONSTRAINT NN_Order_Detail_ORDER_ID;

ALTER TABLE Order_Detail DROP CONSTRAINT NN_Order_Detail_PROD_ID;

ALTER TABLE Order_Detail DROP CONSTRAINT PK_Order_Detail;

DROP TABLE Order_Detail;

/* ---------------------------------------------------------------------- */
/* Drop table "orders"                                                    */
/* ---------------------------------------------------------------------- */

/* Drop constraints */

ALTER TABLE orders DROP CONSTRAINT NN_orders_ORDER_ID;

ALTER TABLE orders DROP CONSTRAINT PK_orders;

DROP TABLE orders;

/* ---------------------------------------------------------------------- */
/* Drop table "Transfer"                                                  */
/* ---------------------------------------------------------------------- */

/* Drop constraints */

ALTER TABLE Transfer DROP CONSTRAINT NN_Transfer_TRAN_NO;

ALTER TABLE Transfer DROP CONSTRAINT NN_Transfer_PROD_ID;

ALTER TABLE Transfer DROP CONSTRAINT PK_Transfer;

DROP TABLE Transfer;

/* ---------------------------------------------------------------------- */
/* Drop table "Product"                                                   */
/* ---------------------------------------------------------------------- */

/* Drop constraints */

ALTER TABLE Product DROP CONSTRAINT NN_Product_PROD_ID;

ALTER TABLE Product DROP CONSTRAINT PK_Product;

DROP TABLE Product;

/* ---------------------------------------------------------------------- */
/* Drop table "Evidence"                                                  */
/* ---------------------------------------------------------------------- */

/* Drop constraints */

ALTER TABLE Evidence DROP CONSTRAINT NN_Evidence_EVID_NO;

ALTER TABLE Evidence DROP CONSTRAINT PK_Evidence;

DROP TABLE Evidence;

/* ---------------------------------------------------------------------- */
/* Drop table "Customer"                                                  */
/* ---------------------------------------------------------------------- */

/* Drop constraints */

ALTER TABLE Customer DROP CONSTRAINT NN_Customer_CUST_ID;

ALTER TABLE Customer DROP CONSTRAINT PK_Customer;

DROP TABLE Customer;
