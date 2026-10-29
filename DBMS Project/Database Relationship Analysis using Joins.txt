SQL> SELECT C.ID,
  2         C.NAME,
  3         O.Order_ID,
  4         O.Order_Date
  5  FROM Customer C
  6  INNER JOIN Orders O
  7  ON C.ID = O.Customer_ID;

        ID NAME                             ORDER_ID ORDER_DAT
---------- ------------------------------ ---------- ---------
         1 Ramesh                               1001 01-SEP-26
         2 Khilan                               1002 03-SEP-26
         3 Koushik                              1003 05-SEP-26
         4 Chaitali                             1004 07-SEP-26
         5 Hardik                               1005 10-SEP-26
         1 Ramesh                               1006 12-SEP-26
         3 Koushik                              1007 15-SEP-26
         5 Hardik                               1008 18-SEP-26

8 rows selected.

SQL> SELECT O.Order_ID,
  2         O.Order_Date,
  3         P.Payment_ID,
  4         P.Payment_Method,
  5         P.Payment_Status,
  6         P.Amount
  7  FROM Orders O
  8  INNER JOIN Payment P
  9  ON O.Order_ID = P.Order_ID;

  ORDER_ID ORDER_DAT PAYMENT_ID PAYMENT_METHOD
---------- --------- ---------- ------------------------------
PAYMENT_STATUS           AMOUNT
-------------------- ----------
      1001 01-SEP-26       1001 UPI
Successful                 2500

      1002 03-SEP-26       1002 Cash
Successful                 1499

      1003 05-SEP-26       1003 UPI
Successful                 2598


  ORDER_ID ORDER_DAT PAYMENT_ID PAYMENT_METHOD
---------- --------- ---------- ------------------------------
PAYMENT_STATUS           AMOUNT
-------------------- ----------
      1004 07-SEP-26       1004 Card
Successful                 1999

      1005 10-SEP-26       1005 UPI
Pending                     450

      1006 12-SEP-26       1006 Cash
Successful                 1299


6 rows selected.

SQL> SELECT P.Product_ID,
  2         P.Product_Name,
  3         OD.Order_ID,
  4         OD.Quantity
  5  FROM Product P
  6  INNER JOIN Order_Details OD
  7  ON P.Product_ID = OD.Product_ID;

PRODUCT_ID PRODUCT_NAME                                         ORDER_ID
---------- -------------------------------------------------- ----------
  QUANTITY
----------
       101 Laptop                                                    201
         3

       102 Smartphone                                                201
         1

       103 Headphones                                                202
         2


PRODUCT_ID PRODUCT_NAME                                         ORDER_ID
---------- -------------------------------------------------- ----------
  QUANTITY
----------
       104 Keyboard                                                  202
         1

       105 Mouse                                                     203
         2

       106 Monitor                                                   203
         1


6 rows selected.

SQL> SELECT C.ID, C.NAME,
  2         O.ORDER_ID, O.ORDER_DATE
  3  FROM Customer C
  4  LEFT JOIN Orders O
  5  ON C.ID = O.CUSTOMER_ID;

        ID NAME                             ORDER_ID ORDER_DAT
---------- ------------------------------ ---------- ---------
         1 Ramesh                               1001 01-SEP-26
         2 Khilan                               1002 03-SEP-26
         3 Koushik                              1003 05-SEP-26
         4 Chaitali                             1004 07-SEP-26
         5 Hardik                               1005 10-SEP-26
         1 Ramesh                               1006 12-SEP-26
         3 Koushik                              1007 15-SEP-26
         5 Hardik                               1008 18-SEP-26

8 rows selected.

SQL> SELECT O.ORDER_ID, O.CUSTOMER_ID, O.ORDER_DATE,
  2         C.ID, C.NAME
  3  FROM Customer C
  4  RIGHT JOIN Orders O
  5  ON C.ID = O.CUSTOMER_ID;

  ORDER_ID CUSTOMER_ID ORDER_DAT         ID NAME
---------- ----------- --------- ---------- ------------------------------
      1001           1 01-SEP-26          1 Ramesh
      1006           1 12-SEP-26          1 Ramesh
      1002           2 03-SEP-26          2 Khilan
      1003           3 05-SEP-26          3 Koushik
      1007           3 15-SEP-26          3 Koushik
      1004           4 07-SEP-26          4 Chaitali
      1005           5 10-SEP-26          5 Hardik
      1008           5 18-SEP-26          5 Hardik

8 rows selected.

SQL> SELECT C.ID, C.NAME,
  2         O.ORDER_ID, O.ORDER_DATE, O.ORDER_STATUS, O.TOTAL_AMOUNT,
  3         P.PAYMENT_ID, P.PAYMENT_METHOD, P.PAYMENT_STATUS, P.AMOUNT
  4  FROM Customer C
  5  INNER JOIN Orders O
  6  ON C.ID = O.CUSTOMER_ID
  7  INNER JOIN Payment P
  8  ON O.ORDER_ID = P.ORDER_ID
  9  ORDER BY O.ORDER_ID;

        ID NAME                             ORDER_ID ORDER_DAT
---------- ------------------------------ ---------- ---------
ORDER_STATUS         TOTAL_AMOUNT PAYMENT_ID PAYMENT_METHOD
-------------------- ------------ ---------- ------------------------------
PAYMENT_STATUS           AMOUNT
-------------------- ----------
         1 Ramesh                               1001 01-SEP-26
Placed                       2098       1001 UPI
Successful                 2500

         2 Khilan                               1002 03-SEP-26
Confirmed                    1499       1002 Cash
Successful                 1499

        ID NAME                             ORDER_ID ORDER_DAT
---------- ------------------------------ ---------- ---------
ORDER_STATUS         TOTAL_AMOUNT PAYMENT_ID PAYMENT_METHOD
-------------------- ------------ ---------- ------------------------------
PAYMENT_STATUS           AMOUNT
-------------------- ----------

         3 Koushik                              1003 05-SEP-26
Shipped                      2598       1003 UPI
Successful                 2598

         4 Chaitali                             1004 07-SEP-26
Delivered                    1999       1004 Card

        ID NAME                             ORDER_ID ORDER_DAT
---------- ------------------------------ ---------- ---------
ORDER_STATUS         TOTAL_AMOUNT PAYMENT_ID PAYMENT_METHOD
-------------------- ------------ ---------- ------------------------------
PAYMENT_STATUS           AMOUNT
-------------------- ----------
Successful                 1999

         5 Hardik                               1005 10-SEP-26
Placed                        450       1005 UPI
Pending                     450

         1 Ramesh                               1006 12-SEP-26

        ID NAME                             ORDER_ID ORDER_DAT
---------- ------------------------------ ---------- ---------
ORDER_STATUS         TOTAL_AMOUNT PAYMENT_ID PAYMENT_METHOD
-------------------- ------------ ---------- ------------------------------
PAYMENT_STATUS           AMOUNT
-------------------- ----------
Confirmed                    1299       1006 Cash
Successful                 1299


6 rows selected.

SQL> SELECT C.ID, C.NAME,
  2         O.ORDER_ID, O.ORDER_DATE,
  3         O.ORDER_STATUS, O.TOTAL_AMOUNT
  4  FROM Customer C
  5  INNER JOIN Orders O
  6  ON C.ID = O.CUSTOMER_ID
  7  ORDER BY C.ID, O.ORDER_DATE;

        ID NAME                             ORDER_ID ORDER_DAT
---------- ------------------------------ ---------- ---------
ORDER_STATUS         TOTAL_AMOUNT
-------------------- ------------
         1 Ramesh                               1001 01-SEP-26
Placed                       2098

         1 Ramesh                               1006 12-SEP-26
Confirmed                    1299

         2 Khilan                               1002 03-SEP-26
Confirmed                    1499


        ID NAME                             ORDER_ID ORDER_DAT
---------- ------------------------------ ---------- ---------
ORDER_STATUS         TOTAL_AMOUNT
-------------------- ------------
         3 Koushik                              1003 05-SEP-26
Shipped                      2598

         3 Koushik                              1007 15-SEP-26
Shipped                      1999

         4 Chaitali                             1004 07-SEP-26
Delivered                    1999


        ID NAME                             ORDER_ID ORDER_DAT
---------- ------------------------------ ---------- ---------
ORDER_STATUS         TOTAL_AMOUNT
-------------------- ------------
         5 Hardik                               1005 10-SEP-26
Placed                        450

         5 Hardik                               1008 18-SEP-26
Delivered                    1049


8 rows selected.

SQL> SELECT C.ID, C.NAME,
  2         O.ORDER_ID, O.ORDER_DATE, O.ORDER_STATUS,
  3         P.PAYMENT_METHOD, P.PAYMENT_STATUS, P.AMOUNT
  4  FROM Customer C
  5  INNER JOIN Orders O
  6  ON C.ID = O.CUSTOMER_ID
  7  INNER JOIN Payment P
  8  ON O.ORDER_ID = P.ORDER_ID
  9  ORDER BY O.ORDER_ID;

        ID NAME                             ORDER_ID ORDER_DAT
---------- ------------------------------ ---------- ---------
ORDER_STATUS         PAYMENT_METHOD                 PAYMENT_STATUS
-------------------- ------------------------------ --------------------
    AMOUNT
----------
         1 Ramesh                               1001 01-SEP-26
Placed               UPI                            Successful
      2500

         2 Khilan                               1002 03-SEP-26
Confirmed            Cash                           Successful
      1499

        ID NAME                             ORDER_ID ORDER_DAT
---------- ------------------------------ ---------- ---------
ORDER_STATUS         PAYMENT_METHOD                 PAYMENT_STATUS
-------------------- ------------------------------ --------------------
    AMOUNT
----------

         3 Koushik                              1003 05-SEP-26
Shipped              UPI                            Successful
      2598

         4 Chaitali                             1004 07-SEP-26
Delivered            Card                           Successful

        ID NAME                             ORDER_ID ORDER_DAT
---------- ------------------------------ ---------- ---------
ORDER_STATUS         PAYMENT_METHOD                 PAYMENT_STATUS
-------------------- ------------------------------ --------------------
    AMOUNT
----------
      1999

         5 Hardik                               1005 10-SEP-26
Placed               UPI                            Pending
       450

         1 Ramesh                               1006 12-SEP-26

        ID NAME                             ORDER_ID ORDER_DAT
---------- ------------------------------ ---------- ---------
ORDER_STATUS         PAYMENT_METHOD                 PAYMENT_STATUS
-------------------- ------------------------------ --------------------
    AMOUNT
----------
Confirmed            Cash                           Successful
      1299


6 rows selected.

SQL> SELECT P.PAYMENT_ID, P.ORDER_ID,
  2         P.PAYMENT_METHOD, P.PAYMENT_STATUS,
  3         P.PAYMENT_DATE, P.AMOUNT,
  4         O.CUSTOMER_ID, O.ORDER_STATUS
  5  FROM Payment P
  6  INNER JOIN Orders O
  7  ON P.ORDER_ID = O.ORDER_ID
  8  ORDER BY P.PAYMENT_ID;

PAYMENT_ID   ORDER_ID PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
PAYMENT_D     AMOUNT CUSTOMER_ID ORDER_STATUS
--------- ---------- ----------- --------------------
      1001       1001 UPI                            Successful
27-OCT-26       2500           1 Placed

      1002       1002 Cash                           Successful
27-OCT-26       1499           2 Confirmed

      1003       1003 UPI                            Successful
27-OCT-26       2598           3 Shipped


PAYMENT_ID   ORDER_ID PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
PAYMENT_D     AMOUNT CUSTOMER_ID ORDER_STATUS
--------- ---------- ----------- --------------------
      1004       1004 Card                           Successful
27-OCT-26       1999           4 Delivered

      1005       1005 UPI                            Pending
27-OCT-26        450           5 Placed

      1006       1006 Cash                           Successful
27-OCT-26       1299           1 Confirmed


6 rows selected.