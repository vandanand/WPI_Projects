--Script to create exercise database
--Jan 25 2016

.echo ON

.mode list
.separator "  |  "

.output YourName_Tutorial02_out.txt

.open TUT_Two.db

PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS order_detail;
DROP TABLE IF EXISTS shipment_line;
DROP TABLE IF EXISTS shipment;
DROP TABLE IF EXISTS inventory;
DROP TABLE IF EXISTS color;
DROP TABLE IF EXISTS item;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customer;


CREATE TABLE Customer
(c_id		CHAR(10), 
c_last 		VARCHAR(30),
c_first		VARCHAR(30),
c_middle             VARCHAR(30),
c_dob                   DATE,
c_addr_line1		VARCHAR(30),
c_addr_line2		VARCHAR(30),
c_addr_comments	VARCHAR(30),
c_city		VARCHAR(30),
c_state		CHAR(2),
c_zip		VARCHAR(10),
c_ephone             VARCHAR(10),
c_userid		VARCHAR(10),
c_password		VARCHAR(15),
CONSTRAINT customer_c_id_pk PRIMARY KEY (c_id));

CREATE TABLE Orders
(ord_id 		CHAR(10),
ord_date		DATE,
ord_c_id		CHAR(10),
Ord_methodof_payment    VARCHAR(10),
Ord_methodof_order	VARCHAR(8),
Ord_methodof_delivery	VARCHAR(10),
CONSTRAINT orders_ord_id_pk PRIMARY KEY (ord_id),
CONSTRAINT orders_c_id_fk FOREIGN KEY (ord_c_id) REFERENCES customer(c_id));

CREATE TABLE Category
(cat_id			CHAR(3),
cat_desc		NVARCHAR2(10),
CONSTRAINT category_cat_id_pk PRIMARY KEY (cat_id));

CREATE TABLE Item
(item_id		CHAR(4),
 item_desc		VARCHAR(30),
 item_cat_id	        CHAR(3),
CONSTRAINT item_id_pk PRIMARY KEY (item_id),
CONSTRAINT item_cat_id_fk FOREIGN KEY (item_cat_id) REFERENCES category(cat_id));

CREATE TABLE Color
(color_code             VARCHAR(20),
 CONSTRAINT color_code_pk PRIMARY KEY (color_code));

CREATE TABLE Inventory
(inv_id                 INTEGER,
 inv_item_id            CHAR(4),
 inv_color              VARCHAR(20),
 inv_size               CHAR(5),
 inv_item_price         DECIMAL(7,2),
 inv_QOH                INTEGER,
 CONSTRAINT inv_id_pk PRIMARY KEY (inv_id),
 CONSTRAINT inv_item_id_fk FOREIGN KEY (inv_item_id) REFERENCES item(item_id),
 CONSTRAINT inv_color_fk FOREIGN KEY (inv_color) REFERENCES Color(color_code));

CREATE TABLE shipment
(ship_id INTEGER,
ship_address VARCHAR(20),
ship_date_expected DATE,
CONSTRAINT shipment_ship_id_pk PRIMARY KEY (ship_id));

CREATE TABLE shipment_line
(ship_id INTEGER, 
inv_id INTEGER,
sl_quantity INTEGER,
sl_date_received DATE, 
CONSTRAINT shipment_line_ship_id_fk FOREIGN KEY (ship_id) REFERENCES shipment(ship_id),
CONSTRAINT shipment_line_inv_id_fk FOREIGN KEY (inv_id) REFERENCES inventory(inv_id),
CONSTRAINT shipment_line_shipid_invid_pk PRIMARY KEY(ship_id, inv_id));

CREATE TABLE order_detail 
(od_o_id    CHAR(10), 
 od_inv_id  INTEGER, 
od_quantity INTEGER NOT NULL, 
CONSTRAINT  order_detail_o_id_fk FOREIGN KEY (od_o_id) REFERENCES orders(ord_id),
CONSTRAINT  order_detail_inv_id_fk FOREIGN KEY (od_inv_id) REFERENCES inventory(inv_id),
CONSTRAINT  order_detail_oid_invid_pk PRIMARY KEY (od_o_id, od_inv_id));


--- inserting records into CUSTOMER
INSERT INTO CUSTOMER VALUES
(1, 'Tulu', 'Bengisu', NULL, date('1967-12-10'), '9815 Circle Dr.', NULL, NULL, 'Tallahassee', 'FL', '32308', '904558599', 'tulub', 'barbiecar');

INSERT INTO CUSTOMER VALUES
(2, 'Elmes', 'Michael', 'B', date('1958-08-14'), '172 Alto Park', NULL, NULL, 'Seattle', 'WA','42180', '4185556643', 'elmesmb', 'qwert5');

INSERT INTO CUSTOMER VALUES
(3, 'Strong', 'Diana', 'M', date('1960-04-12'), '850 East Main', NULL, NULL, 'Santa Ana', 'MA', '51875', '3075559852', 'strongdm', 'joshua5');

INSERT INTO CUSTOMER VALUES
(4, 'Eleanor', 'Loiacono', 'T', date('1981-01-18'), '994 Kirkman Rd.', NULL, NULL, 'Northpoint', 'NY', '11795', '4825558219', 'eleanorlt', 'hold98er');

INSERT INTO CUSTOMER VALUES
(5, 'Wulf', 'Sharon', 'A', date('1978-08-30'), '195 College Blvd.', NULL, NULL, 'Newton', 'GA', '37812', '3525551811', 'wulfsa', '125pass');

INSERT INTO CUSTOMER VALUES
(6, 'Wilkinson', 'Norm', 'D', date('1973-06-01'), '348 Rice Lane', NULL, NULL, 'Radcliff', 'WY', '87195', '7615553319', 'wilkinsonnd', 'nok$tell');

--- inserting records into orders
INSERT INTO orders VALUES
(1, DATE('2012-05-29'), 1, 'CC', 'Phone', "UPS");

INSERT INTO orders VALUES
(2, DATE('2012-05-29'), 5, 'CC', 'Phone', "USPS");

INSERT INTO orders VALUES
(3, DATE('2012-05-31'), 2, 'CHECK', 'F2F', "CUST");

INSERT INTO orders VALUES
(4, DATE('2012-05-31'), 3, 'CC', 'Web', "UPS");

INSERT INTO orders VALUES
(5, DATE('2012-06-01'), 4, 'CC', 'F2F', "CUST");

INSERT INTO orders VALUES
(6, DATE('2012-06-01'), 6, 'CC', 'Web', "FedEx");

--- inserting records into CATEGORY
INSERT INTO category VALUES (1, 'Organization');
INSERT INTO category VALUES (2, 'Paper');
INSERT INTO category VALUES (3, 'Office supplies');
INSERT INTO category VALUES (4, 'Furniture');

--- inserting records into ITEM
INSERT INTO item VALUES
(1, 'Pencil', 3);

INSERT INTO item VALUES
(2, 'Desk', 4);

INSERT INTO item VALUES
(3, 'Binder', 1);

INSERT INTO item VALUES
(4, 'Folder', 1);

INSERT INTO item VALUES
(5, 'Notebook', 2);

INSERT INTO item VALUES
(6, 'Post-it Notes', 2);

INSERT INTO item VALUES
(7, 'chair', 4);

--- inserting records into COLOR
INSERT INTO color VALUES ('Sky Blue');
INSERT INTO color VALUES ('Light Grey');
INSERT INTO color VALUES ('Khaki');
INSERT INTO color VALUES ('Navy');
INSERT INTO color VALUES ('Royal');
INSERT INTO color VALUES ('Eggplant');
INSERT INTO color VALUES ('Blue');
INSERT INTO color VALUES ('Red');
INSERT INTO color VALUES ('Spruce');
INSERT INTO color VALUES ('Turquoise');
INSERT INTO color VALUES ('Bright Pink');
INSERT INTO color VALUES ('White');

--- inserting records into INVENTORY
INSERT INTO inventory VALUES
(1, 2, 'Sky Blue', NULL, 259.99, 16);

INSERT INTO inventory VALUES
(2, 2, 'Light Grey', NULL, 259.99, 12);

INSERT INTO inventory VALUES
(3, 3, 'Khaki', 'S', 29.95, 150);

INSERT INTO inventory VALUES
(4, 3, 'Khaki', 'M', 29.95, 147);

INSERT INTO inventory VALUES
(5, 3, 'Khaki', 'L', 29.95, 0);

INSERT INTO inventory VALUES
(6, 3, 'Navy', 'S', 29.95, 139);

INSERT INTO inventory VALUES
(7, 3, 'Navy', 'M', 29.95, 137);

INSERT INTO inventory VALUES
(8, 3, 'Navy', 'L', 29.95, 115);

INSERT INTO inventory VALUES
(9, 4, 'Eggplant', 'S', 59.95, 135);

INSERT INTO inventory VALUES
(10, 4, 'Eggplant', 'M', 59.95, 168);

INSERT INTO inventory VALUES
(11, 4, 'Eggplant', 'L', 59.95, 187);

INSERT INTO inventory VALUES
(12, 4, 'Royal', 'S', 59.95, 0);

INSERT INTO inventory VALUES
(13, 4, 'Royal', 'M', 59.95, 124);

INSERT INTO inventory VALUES
(14, 4, 'Royal', 'L', 59.95, 112);

INSERT INTO inventory VALUES
(15, 5, 'Turquoise', '10', 15.99, 121);

INSERT INTO inventory VALUES
(16, 5, 'Turquoise', '11', 15.99, 111);

INSERT INTO inventory VALUES
(17, 5, 'Turquoise', '12', 15.99, 113);

INSERT INTO inventory VALUES
(18, 5, 'Turquoise', '1', 15.99, 121);

INSERT INTO inventory VALUES
(19, 5, 'Bright Pink', '10', 15.99, 148);

INSERT INTO inventory VALUES
(20, 5, 'Bright Pink', '11', 15.99, 137);

INSERT INTO inventory VALUES
(21, 5, 'Bright Pink', '12', 15.99, 134);

INSERT INTO inventory VALUES
(22, 5, 'Bright Pink', '1', 15.99, 123);

INSERT INTO inventory VALUES
(23, 1, 'Spruce', 'S', 199.95, 114);

INSERT INTO inventory VALUES
(24, 1,  'Spruce', 'M',199.95, 17);

INSERT INTO inventory VALUES
(25, 1, 'Spruce', 'L', 209.95, 0);

INSERT INTO inventory VALUES
(26, 1, 'Spruce', 'XL', 209.95, 12);

INSERT INTO inventory VALUES
(27, 6, 'Blue', 'S', 15.95, 50);

INSERT INTO inventory VALUES
(28, 6, 'Blue', 'M', 15.95, 100);

INSERT INTO inventory VALUES
(29, 6, 'Blue', 'L', 15.95, 100);

INSERT INTO inventory VALUES
(30, 7, 'White', 'S', 19.99, 100);

INSERT INTO inventory VALUES
(31, 7, 'White', 'M', 19.99, 100);

INSERT INTO inventory VALUES
(32, 7, 'White', 'L', 19.99, 100);

--inserting records into SHIPMENT

INSERT INTO shipment VALUES
(1, NULL, DATE('2006-09-15'));

INSERT INTO shipment VALUES
(2, NULL, DATE('2006-11-15'));

INSERT INTO shipment VALUES
(3, NULL, DATE('2006-06-25'));

INSERT INTO shipment VALUES
(4, NULL, DATE('2006-06-25'));

INSERT INTO shipment VALUES
(5, NULL, DATE('2006-08-15'));

--inserting records into SHIPMENT_LINE
INSERT INTO shipment_line VALUES
(1, 1, 25, DATE('2006-09-10'));

INSERT INTO shipment_line VALUES
(1, 2, 25, DATE('2006-09-10'));

INSERT INTO shipment_line VALUES
(2, 2, 25, NULL);

INSERT INTO shipment_line VALUES
(3, 5, 200, NULL);

INSERT INTO shipment_line VALUES
(3, 6, 200, NULL);

INSERT INTO shipment_line VALUES
(3, 7, 200, NULL);

INSERT INTO shipment_line VALUES
(4, 12, 100, DATE('2012-08-15'));

INSERT INTO shipment_line VALUES
(4, 13, 100, DATE('2012-08-25'));

INSERT INTO shipment_line VALUES
(5, 23, 50, DATE('2012-08-15'));

INSERT INTO shipment_line VALUES
(5, 24, 100, DATE('2012-08-15'));

INSERT INTO shipment_line VALUES
(5, 25, 100, DATE('2012-08-15'));

--- inserting records into order_detail
INSERT INTO order_detail VALUES (1, 1, 1);
INSERT INTO order_detail VALUES (1, 14, 2);
INSERT INTO order_detail VALUES (2, 19, 1);
INSERT INTO order_detail VALUES (3, 24, 1);
INSERT INTO order_detail VALUES (3, 26, 1);
INSERT INTO order_detail VALUES (4, 12, 2);
INSERT INTO order_detail VALUES (5, 8, 1);
INSERT INTO order_detail VALUES (5, 13, 1);
INSERT INTO order_detail VALUES (6, 2, 1);
INSERT INTO order_detail VALUES (6, 7, 3);

.output stdout
.echo OFF