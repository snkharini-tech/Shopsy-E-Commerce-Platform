SQL> SELECT * FROM Product;

PRODUCT_ID PRODUCT_NAME                                        SELLER_ID
---------- -------------------------------------------------- ----------
CATEGORY_ID      PRICE      STOCK
----------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
       101 Laptop                                                      1
         10      55000         20
Dell Laptop

       102 Smartphone                                                  2
         20      25000         30
Android Smartphone

PRODUCT_ID PRODUCT_NAME                                        SELLER_ID
---------- -------------------------------------------------- ----------
CATEGORY_ID      PRICE      STOCK
----------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------

       103 Headphones                                                  3
         30       2500         50
Wireless Headphones

       104 Keyboard                                                    4
         30       1500         40

PRODUCT_ID PRODUCT_NAME                                        SELLER_ID
---------- -------------------------------------------------- ----------
CATEGORY_ID      PRICE      STOCK
----------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
USB Keyboard

       105 Mouse                                                       5
         30        800         60
Wireless Mouse

       106 Monitor                                                     6

PRODUCT_ID PRODUCT_NAME                                        SELLER_ID
---------- -------------------------------------------------- ----------
CATEGORY_ID      PRICE      STOCK
----------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
         10      12000         15
LED Monitor


6 rows selected.

SQL> SELECT Product_ID, Product_Name, Price
  2  FROM Product;

PRODUCT_ID PRODUCT_NAME                                            PRICE
---------- -------------------------------------------------- ----------
       101 Laptop                                                  55000
       102 Smartphone                                              25000
       103 Headphones                                               2500
       104 Keyboard                                                 1500
       105 Mouse                                                     800
       106 Monitor                                                 12000

6 rows selected.

SQL> SELECT * FROM Product
  2  WHERE Price < 1000;

PRODUCT_ID PRODUCT_NAME                                        SELLER_ID
---------- -------------------------------------------------- ----------
CATEGORY_ID      PRICE      STOCK
----------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
       105 Mouse                                                       5
         30        800         60
Wireless Mouse

SQL> SELECT * FROM Product
  2  WHERE Price > 100;

PRODUCT_ID PRODUCT_NAME                                        SELLER_ID
---------- -------------------------------------------------- ----------
CATEGORY_ID      PRICE      STOCK
----------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
       101 Laptop                                                      1
         10      55000         20
Dell Laptop

       102 Smartphone                                                  2
         20      25000         30
Android Smartphone

PRODUCT_ID PRODUCT_NAME                                        SELLER_ID
---------- -------------------------------------------------- ----------
CATEGORY_ID      PRICE      STOCK
----------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------

       103 Headphones                                                  3
         30       2500         50
Wireless Headphones

       104 Keyboard                                                    4
         30       1500         40

PRODUCT_ID PRODUCT_NAME                                        SELLER_ID
---------- -------------------------------------------------- ----------
CATEGORY_ID      PRICE      STOCK
----------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
USB Keyboard

       105 Mouse                                                       5
         30        800         60
Wireless Mouse

       106 Monitor                                                     6

PRODUCT_ID PRODUCT_NAME                                        SELLER_ID
---------- -------------------------------------------------- ----------
CATEGORY_ID      PRICE      STOCK
----------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
         10      12000         15
LED Monitor


6 rows selected.

SQL> SELECT Product_ID, Product_Name, Price
  2  FROM Product
  3  ORDER BY Price ASC;

PRODUCT_ID PRODUCT_NAME                                            PRICE
---------- -------------------------------------------------- ----------
       105 Mouse                                                     800
       104 Keyboard                                                 1500
       103 Headphones                                               2500
       106 Monitor                                                 12000
       102 Smartphone                                              25000
       101 Laptop                                                  55000

6 rows selected.

SQL> SELECT Product_ID, Product_Name, Price
  2  FROM Product
  3  ORDER BY Price DESC;

PRODUCT_ID PRODUCT_NAME                                            PRICE
---------- -------------------------------------------------- ----------
       101 Laptop                                                  55000
       102 Smartphone                                              25000
       106 Monitor                                                 12000
       103 Headphones                                               2500
       104 Keyboard                                                 1500
       105 Mouse                                                     800

6 rows selected.

SQL> SELECT DISTINCT Category_ID
  2  FROM Product;

CATEGORY_ID
-----------
         10
         20
         30

SQL> SELECT Product_ID, Product_Name, Price
  2  FROM Product
  3  WHERE Price BETWEEN 100 AND 1000;

PRODUCT_ID PRODUCT_NAME                                            PRICE
---------- -------------------------------------------------- ----------
       105 Mouse                                                     800

SQL> SELECT *
  2  FROM Customer
  3  WHERE ID = 1;

        ID NAME                        AGE ADDRESS
---------- -------------------- ---------- ------------------------------
    SALARY
----------
         1 Ramesh                       32 Ahmedabad
     30000

SQL> SELECT *
  2  FROM PRODUCT
  3  WHERE Price < 1000
  4  AND Category_ID = 30;

PRODUCT_ID PRODUCT_NAME                                        SELLER_ID
---------- -------------------------------------------------- ----------
CATEGORY_ID      PRICE      STOCK
----------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
       105 Mouse                                                       5
         30        800         60
Wireless Mouse

SQL> SELECT *
  2  FROM Product
  3  WHERE Category_ID = 20
  4     OR Category_ID = 30;

PRODUCT_ID PRODUCT_NAME                                        SELLER_ID
---------- -------------------------------------------------- ----------
CATEGORY_ID      PRICE      STOCK
----------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
       102 Smartphone                                                  2
         20      25000         30
Android Smartphone

       103 Headphones                                                  3
         30       2500         50
Wireless Headphones

PRODUCT_ID PRODUCT_NAME                                        SELLER_ID
---------- -------------------------------------------------- ----------
CATEGORY_ID      PRICE      STOCK
----------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------

       104 Keyboard                                                    4
         30       1500         40
USB Keyboard

       105 Mouse                                                       5
         30        800         60

PRODUCT_ID PRODUCT_NAME                                        SELLER_ID
---------- -------------------------------------------------- ----------
CATEGORY_ID      PRICE      STOCK
----------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
Wireless Mouse


SQL> SELECT *
  2  FROM PRODUCT
  3  WHERE Category_ID IN (10,20,30);

PRODUCT_ID PRODUCT_NAME                                        SELLER_ID
---------- -------------------------------------------------- ----------
CATEGORY_ID      PRICE      STOCK
----------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
       101 Laptop                                                      1
         10      55000         20
Dell Laptop

       102 Smartphone                                                  2
         20      25000         30
Android Smartphone

PRODUCT_ID PRODUCT_NAME                                        SELLER_ID
---------- -------------------------------------------------- ----------
CATEGORY_ID      PRICE      STOCK
----------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------

       103 Headphones                                                  3
         30       2500         50
Wireless Headphones

       104 Keyboard                                                    4
         30       1500         40

PRODUCT_ID PRODUCT_NAME                                        SELLER_ID
---------- -------------------------------------------------- ----------
CATEGORY_ID      PRICE      STOCK
----------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
USB Keyboard

       105 Mouse                                                       5
         30        800         60
Wireless Mouse

       106 Monitor                                                     6

PRODUCT_ID PRODUCT_NAME                                        SELLER_ID
---------- -------------------------------------------------- ----------
CATEGORY_ID      PRICE      STOCK
----------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
         10      12000         15
LED Monitor


6 rows selected.


SQL> SELECT *
  2  FROM PRODUCT
  3  WHERE Price BETWEEN 100 AND 1000;

PRODUCT_ID PRODUCT_NAME                                        SELLER_ID
---------- -------------------------------------------------- ----------
CATEGORY_ID      PRICE      STOCK
----------- ---------- ----------
DESCRIPTION
--------------------------------------------------------------------------------
       105 Mouse                                                       5
         30        800         60
Wireless Mouse

SQL> SELECT Product_ID, Product_Name, Price
  2  FROM Product
  3  ORDER BY Price ASC;

PRODUCT_ID PRODUCT_NAME                                            PRICE
---------- -------------------------------------------------- ----------
       105 Mouse                                                     800
       104 Keyboard                                                 1500
       103 Headphones                                               2500
       106 Monitor                                                 12000
       102 Smartphone                                              25000
       101 Laptop                                                  55000

6 rows selected.

SQL>
SQL> SELECT Product_ID, Product_Name, Price
  2  FROM Product
  3  ORDER BY Price DESC;

PRODUCT_ID PRODUCT_NAME                                            PRICE
---------- -------------------------------------------------- ----------
       101 Laptop                                                  55000
       102 Smartphone                                              25000
       106 Monitor                                                 12000
       103 Headphones                                               2500
       104 Keyboard                                                 1500
       105 Mouse                                                     800

6 rows selected.


SQL> SELECT C.ID, C.NAME, O.Order_ID,
  2         O.Order_Date, O.Total_Amount
  3  FROM Customer C
  4  JOIN Orders O
  5  ON C.ID = O.Customer_ID;

        ID NAME                   ORDER_ID ORDER_DAT TOTAL_AMOUNT
---------- -------------------- ---------- --------- ------------
         1 Ramesh                     1001 01-SEP-26         2098
         2 Khilan                     1002 03-SEP-26         1499
         3 Kaushik                    1003 05-SEP-26         2598
         4 Chaitali                   1004 07-SEP-26         1999
         5 Hardik                     1005 10-SEP-26          450
         1 Ramesh                     1006 12-SEP-26         1299
         3 Kaushik                    1007 15-SEP-26         1999
         5 Hardik                     1008 18-SEP-26         1049

8 rows selected.

SQL> SELECT P.Product_ID, P.Product_Name,
  2         OD.Order_ID, OD.Quantity,
  3         OD.Unit_Price, OD.Subtotal
  4  FROM Product P
  5  JOIN Order_Details OD
  6  ON P.Product_ID = OD.Product_ID;

PRODUCT_ID PRODUCT_NAME                                         ORDER_ID
---------- -------------------------------------------------- ----------
  QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ----------
       101 Laptop                                                    201
         3        130        390

       102 Smartphone                                                201
         1        180        180

       103 Headphones                                                202
         2        350        700


PRODUCT_ID PRODUCT_NAME                                         ORDER_ID
---------- -------------------------------------------------- ----------
  QUANTITY UNIT_PRICE   SUBTOTAL
---------- ---------- ----------
       104 Keyboard                                                  202
         1        450        450

       105 Mouse                                                     203
         2        250        500

       106 Monitor                                                   203
         1        120        120


6 rows selected.

SQL> SELECT C.ID, C.NAME,
  2         COUNT(O.Order_ID) AS Total_Orders
  3  FROM Customer C
  4  JOIN Orders O
  5  ON C.ID = O.Customer_ID
  6  GROUP BY C.ID, C.NAME;

        ID NAME                 TOTAL_ORDERS
---------- -------------------- ------------
         1 Ramesh                          2
         2 Khilan                          1
         3 Kaushik                         2
         4 Chaitali                        1
         5 Hardik                          2

SQL>
SQL> SELECT C.ID, C.NAME,
  2         SUM(O.Total_Amount) AS Total_Purchase
  3  FROM Customer C
  4  JOIN Orders O
  5  ON C.ID = O.Customer_ID
  6  GROUP BY C.ID, C.NAME;

        ID NAME                 TOTAL_PURCHASE
---------- -------------------- --------------
         1 Ramesh                         3397
         2 Khilan                         1499
         3 Kaushik                        4597
         4 Chaitali                       1999
         5 Hardik                         1499
