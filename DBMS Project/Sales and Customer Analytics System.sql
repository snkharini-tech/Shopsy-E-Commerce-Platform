SQL> SELECT COUNT(Order_ID) AS Total_Orders
  2  FROM Orders;

TOTAL_ORDERS
------------
           8

SQL> SELECT SUM(Total_Amount) AS Total_Sales
  2  FROM Orders;

TOTAL_SALES
-----------
      12991

SQL> SELECT AVG(Total_Amount) AS Average_Order
  2  FROM Orders;

AVERAGE_ORDER
-------------
     1623.875

SQL> SELECT MIN(Total_Amount) AS Minimum_Order
  2  FROM Orders;

MINIMUM_ORDER
-------------
          450

SQL> SELECT MAX(Total_Amount) AS Maximum_Order
  2  FROM Orders;

MAXIMUM_ORDER
-------------
         2598

SQL> SELECT
  2      COUNT(Order_ID) AS Total_Orders,
  3      SUM(Total_Amount) AS Total_Sales,
  4      AVG(Total_Amount) AS Average_Order_Value,
  5      MIN(Total_Amount) AS Minimum_Order,
  6      MAX(Total_Amount) AS Maximum_Order
  7  FROM Orders;

TOTAL_ORDERS TOTAL_SALES AVERAGE_ORDER_VALUE MINIMUM_ORDER MAXIMUM_ORDER
------------ ----------- ------------------- ------------- -------------
           8       12991            1623.875           450          2598

SQL> SELECT
  2      C.ID,
  3      C.NAME,
  4      SUM(O.TOTAL_AMOUNT) AS TOTAL_PURCHASE
  5  FROM Customer C
  6  JOIN Orders O
  7      ON C.ID = O.CUSTOMER_ID
  8  GROUP BY
  9      C.ID,
 10      C.NAME
 11  ORDER BY TOTAL_PURCHASE DESC;

        ID NAME                           TOTAL_PURCHASE
---------- ------------------------------ --------------
         3 kaushik                                  4597
         1 Ramesh                                   3397
         4 Chaitali                                 1999
         2 Khilan                                   1499
         5 Hardik                                   1499

SQL> SELECT
  2      C.ID,
  3      C.NAME,
  4      SUM(O.TOTAL_AMOUNT) AS TOTAL_PURCHASE
  5  FROM Customer C
  6  JOIN Orders O
  7      ON C.ID = O.CUSTOMER_ID
  8  GROUP BY
  9      C.ID,
 10      C.NAME
 11  ORDER BY TOTAL_PURCHASE DESC;

        ID NAME                           TOTAL_PURCHASE
---------- ------------------------------ --------------
         3 kaushik                                  4597
         1 Ramesh                                   3397
         4 Chaitali                                 1999
         2 Khilan                                   1499
         5 Hardik                                   1499

SQL> SELECT
  2      P.PRODUCT_ID,
  3      P.PRODUCT_NAME,
  4      SUM(OD.QUANTITY) AS TOTAL_QUANTITY_SOLD
  5  FROM PRODUCT P
  6  JOIN ORDER_DETAILS OD
  7      ON P.PRODUCT_ID = OD.PRODUCT_ID
  8  GROUP BY
  9      P.PRODUCT_ID,
 10      P.PRODUCT_NAME
 11  ORDER BY TOTAL_QUANTITY_SOLD DESC;

PRODUCT_ID PRODUCT_NAME
---------- --------------------------------------------------
TOTAL_QUANTITY_SOLD
-------------------
       101 Laptop
                  3

       103 Headphones
                  2

       105 Mouse
                  2


PRODUCT_ID PRODUCT_NAME
---------- --------------------------------------------------
TOTAL_QUANTITY_SOLD
-------------------
       104 Keyboard
                  1

       106 Monitor
                  1

       102 Smartphone
                  1


6 rows selected.

SQL> SELECT
  2      P.PRODUCT_ID,
  3      P.PRODUCT_NAME,
  4      SUM(OD.QUANTITY) AS TOTAL_QUANTITY_SOLD,
  5      SUM(OD.SUBTOTAL) AS TOTAL_SALES
  6  FROM PRODUCT P
  7  JOIN ORDER_DETAILS OD
  8      ON P.PRODUCT_ID = OD.PRODUCT_ID
  9  GROUP BY
 10      P.PRODUCT_ID,
 11      P.PRODUCT_NAME
 12  ORDER BY TOTAL_SALES DESC;

PRODUCT_ID PRODUCT_NAME
---------- --------------------------------------------------
TOTAL_QUANTITY_SOLD TOTAL_SALES
------------------- -----------
       103 Headphones
                  2         700

       105 Mouse
                  2         500

       104 Keyboard
                  1         450


PRODUCT_ID PRODUCT_NAME
---------- --------------------------------------------------
TOTAL_QUANTITY_SOLD TOTAL_SALES
------------------- -----------
       101 Laptop
                  3         390

       102 Smartphone
                  1         180

       106 Monitor
                  1         120


6 rows selected.

SQL> SELECT
  2      C.CATEGORY_ID,
  3      C.CATEGORY_NAME,
  4      SUM(OD.QUANTITY) AS TOTAL_QUANTITY_SOLD,
  5      SUM(OD.SUBTOTAL) AS TOTAL_SALES
  6  FROM CATEGORY C
  7  JOIN PRODUCT P
  8      ON C.CATEGORY_ID = P.CATEGORY_ID
  9  JOIN ORDER_DETAILS OD
 10      ON P.PRODUCT_ID = OD.PRODUCT_ID
 11  GROUP BY
 12      C.CATEGORY_ID,
 13      C.CATEGORY_NAME
 14  ORDER BY TOTAL_SALES DESC;

CATEGORY_ID
-----------
CATEGORY_NAME
--------------------------------------------------------------------------------
TOTAL_QUANTITY_SOLD TOTAL_SALES
------------------- -----------
          1
Mobile Accessories
                  6        1830

          3
Home Appliances
                  4         510