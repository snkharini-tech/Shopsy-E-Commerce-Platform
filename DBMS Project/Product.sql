
CREATE TABLE Product (
       Product_ID NUMBER PRIMARY KEY,
       Product_Name VARCHAR2(100) NOT NULL,
       Seller_ID NUMBER,
       Category_ID NUMBER,
       Price NUMBER(10,2),
       Stock NUMBER,
       Description VARCHAR2(500),
       FOREIGN KEY (Category_ID) REFERENCES Category(Category_ID)
);

Table created.


INSERT INTO Product VALUES (101, 'Wireless Headphones', 1, 1, 1499.00, 25, 'Bluetooth wireless headphones');

1 row created.

INSERT INTO Product VALUES (102, 'Cotton T-Shirt', 2, 2, 599.00, 40, 'Comfortable cotton t-shirt');

1 row created.

INSERT INTO Product VALUES (103, 'Electric Kettle', 3, 3, 1299.00, 20, 'Stainless steel electric kettle');

1 row created.

INSERT INTO Product VALUES (104, 'Running Shoes', 4, 4, 1999.00, 15, 'Lightweight running shoes');

1 row created.

INSERT INTO Product VALUES (106, 'Smart Watch', 1, 1, 2499.00, 20, 'Fitness smart watch');

1 row created.

 SELECT * FROM Product;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
 SELLER_ID CATEGORY_ID      PRICE      STOCK
---------- ----------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
       101
Wireless Headphones
         1           1       1499         25
Bluetooth wireless headphones


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
 SELLER_ID CATEGORY_ID      PRICE      STOCK
---------- ----------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
       102
Cotton T-Shirt
         2           2        599         40
Comfortable cotton t-shirt


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
 SELLER_ID CATEGORY_ID      PRICE      STOCK
---------- ----------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
       103
Electric Kettle
         3           3       1299         20
Stainless steel electric kettle


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
 SELLER_ID CATEGORY_ID      PRICE      STOCK
---------- ----------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
       104
Running Shoes
         4           4       1999         15
Lightweight running shoes


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
 SELLER_ID CATEGORY_ID      PRICE      STOCK
---------- ----------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
       106
Smart Watch
         1           1       2499         20
Fitness smart watch


UPDATE Product
    SET Price = 1699.00
    WHERE Product_ID = 101;

1 row updated.

 DELETE FROM Product
   WHERE Product_ID = 102;

1 row deleted.

COMMIT;

Commit complete.