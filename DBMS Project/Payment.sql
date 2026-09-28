CREATE TABLE Payment (
        Payment_ID NUMBER PRIMARY KEY,
        Order_ID NUMBER,
        Payment_Method VARCHAR2(30),
        Payment_Status VARCHAR2(20),
        Payment_Date DATE,
        Amount NUMBER(10,2),
        FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID)
    );


INSERT INTO Payment VALUES
(1, 1001, 'Credit Card', 'Successful', DATE '2026-09-01', 2098.00);

1 row created.

INSERT INTO Payment VALUES
(2, 1002, 'UPI', 'Successful', DATE '2026-09-03', 1499.00);

1 row created.

INSERT INTO Payment VALUES
(3, 1003, 'Debit Card', 'Successful', DATE '2026-09-05', 2598.00);

1 row created.

INSERT INTO Payment VALUES
(4, 1004, 'Cash on Delivery', 'Successful', DATE '2026-09-07', 1999.00);

1 row created.

INSERT INTO Payment VALUES
  2  (5, 1005, 'UPI', 'Failed', DATE '2026-09-10', 450.00);

1 row created.

INSERT INTO Payment VALUES
(6, 1006, 'Credit Card', 'Successful', DATE '2026-09-12', 1299.00);

1 row created.

INSERT INTO Payment VALUES
(7, 1007, 'Net Banking', 'Failed', DATE '2026-09-15', 1999.00);

1 row created.

INSERT INTO Payment VALUES
(8, 1008, 'Debit Card', 'Successful', DATE '2026-09-18', 1049.00);

1 row created.

SELECT * FROM Payment;

PAYMENT_ID   ORDER_ID PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
PAYMENT_D     AMOUNT
--------- ----------
         1       1001 Credit Card                    Successful
01-SEP-26       2098

         2       1002 UPI                            Successful
03-SEP-26       1499

         3       1003 Debit Card                     Successful
05-SEP-26       2598


PAYMENT_ID   ORDER_ID PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
PAYMENT_D     AMOUNT
--------- ----------
         4       1004 Cash on Delivery               Successful
07-SEP-26       1999

         5       1005 UPI                            Failed
10-SEP-26        450

         6       1006 Credit Card                    Successful
12-SEP-26       1299


PAYMENT_ID   ORDER_ID PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
PAYMENT_D     AMOUNT
--------- ----------
         7       1007 Net Banking                    Failed
15-SEP-26       1999

         8       1008 Debit Card                     Successful
18-SEP-26       1049


8 rows selected.

SELECT * FROM Payment
    WHERE Payment_Status = 'Successful';

PAYMENT_ID   ORDER_ID PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
PAYMENT_D     AMOUNT
--------- ----------
         1       1001 Credit Card                    Successful
01-SEP-26       2098

         2       1002 UPI                            Successful
03-SEP-26       1499

         3       1003 Debit Card                     Successful
05-SEP-26       2598


PAYMENT_ID   ORDER_ID PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
PAYMENT_D     AMOUNT
--------- ----------
         4       1004 Cash on Delivery               Successful
07-SEP-26       1999

         6       1006 Credit Card                    Successful
12-SEP-26       1299

         8       1008 Debit Card                     Successful
18-SEP-26       1049


6 rows selected.

SELECT * FROM Payment
    WHERE Payment_Status = 'Failed';

PAYMENT_ID   ORDER_ID PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
PAYMENT_D     AMOUNT
--------- ----------
         5       1005 UPI                            Failed
10-SEP-26        450

         7       1007 Net Banking                    Failed
15-SEP-26       1999


UPDATE Payment
    SET Payment_Status = 'Successful'
    WHERE Payment_ID = 5;

1 row updated.

UPDATE Payment
    SET Payment_Status = 'Successful'
    WHERE Payment_ID = 7;

1 row updated.

SELECT Payment_Method,
          COUNT(*) AS Total_Transactions
     FROM Payment
     GROUP BY Payment_Method;

PAYMENT_METHOD                 TOTAL_TRANSACTIONS
------------------------------ ------------------
Credit Card                                     2
UPI                                             2
Debit Card                                      2
Cash on Delivery                                1
Net Banking                                     1

SELECT Payment_Method,
           SUM(Amount) AS Total_Amount
     FROM Payment
     GROUP BY Payment_Method;

PAYMENT_METHOD                 TOTAL_AMOUNT
------------------------------ ------------
Credit Card                            3397
UPI                                    1949
Debit Card                             3647
Cash on Delivery                       1999
Net Banking                            1999

SELECT
       Payment_ID,
       Order_ID,
       Payment_Method,
       Payment_Status,
       Payment_Date,
       Amount
   FROM Payment
   ORDER BY Payment_Date;

PAYMENT_ID   ORDER_ID PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
PAYMENT_D     AMOUNT
--------- ----------
         1       1001 Credit Card                    Successful
01-SEP-26       2098

         2       1002 UPI                            Successful
03-SEP-26       1499

         3       1003 Debit Card                     Successful
05-SEP-26       2598


PAYMENT_ID   ORDER_ID PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
PAYMENT_D     AMOUNT
--------- ----------
         4       1004 Cash on Delivery               Successful
07-SEP-26       1999

         5       1005 UPI                            Successful
10-SEP-26        450

         6       1006 Credit Card                    Successful
12-SEP-26       1299


PAYMENT_ID   ORDER_ID PAYMENT_METHOD                 PAYMENT_STATUS
---------- ---------- ------------------------------ --------------------
PAYMENT_D     AMOUNT
--------- ----------
         7       1007 Net Banking                    Successful
15-SEP-26       1999

         8       1008 Debit Card                     Successful
18-SEP-26       1049


8 rows selected.