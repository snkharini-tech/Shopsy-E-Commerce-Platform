CREATE TABLE Customer (
  2      Customer_ID NUMBER(3) PRIMARY KEY,
  3      Customer_Name VARCHAR2(30) NOT NULL,
  4      Email VARCHAR2(40) UNIQUE,
  5      Phone VARCHAR2(10),
  6      Address VARCHAR2(50),
  7      Date_of_Birth DATE
  8  );

Table created.

SQL> INSERT INTO Customer VALUES (101,'Harini','harini@gmail.com','9876543210','Chennai','15-APR-2005');

1 row created.

SQL> INSERT INTO Customer VALUES (102,'Priya','priya@gmail.com','9876543211','Tambaram','10-AUG-2004');

1 row created.

SQL> INSERT INTO Customer VALUES (103,'Divya','divya@gmail.com','9876543212','Chrompet','20-DEC-2003');

1 row created.

SQL> INSERT INTO Customer VALUES (104,'Anu','anu@gmail.com','9876543213','Velachery','18-JUN-2005');

1 row created.

SQL> INSERT INTO Customer VALUES (105,'Meena','meena@gmail.com','9876543214','Guindy','30-NOV-2004');

1 row created.

SQL> INSERT INTO Customer VALUES (106,'Kaviya','kaviya@gmail.com','9876543215','Anna Nagar','25-SEP-2005');

1 row created.

SQL> INSERT INTO Customer VALUES (107,'Nisha','nisha@gmail.com','9876543216','Adyar','05-MAR-2003');

1 row created.

SQL> INSERT INTO Customer VALUES (108,'Swathi','swathi@gmail.com','9876543217','T Nagar','12-JAN-2004');

1 row created.

SQL> INSERT INTO Customer VALUES (109,'Keerthi','keerthi@gmail.com','9876543218','Porur','08-JUL-2005');

1 row created.

SQL> INSERT INTO Customer VALUES (110,'Deepa','deepa@gmail.com','9876543219','Pallavaram','22-MAY-2004');

1 row created.

SQL> SELECT * FROM Customer;

CUSTOMER_ID CUSTOMER_NAME
----------- ------------------------------
EMAIL                                    PHONE
---------------------------------------- ----------
ADDRESS                                            DATE_OF_B
-------------------------------------------------- ---------
        101 Harini
harini@gmail.com                         9876543210
Chennai                                            15-APR-05

        102 Priya
priya@gmail.com                          9876543211
Tambaram                                           10-AUG-04

CUSTOMER_ID CUSTOMER_NAME
----------- ------------------------------
EMAIL                                    PHONE
---------------------------------------- ----------
ADDRESS                                            DATE_OF_B
-------------------------------------------------- ---------

        103 Divya
divya@gmail.com                          9876543212
Chrompet                                           20-DEC-03

        104 Anu
anu@gmail.com                            9876543213

CUSTOMER_ID CUSTOMER_NAME
----------- ------------------------------
EMAIL                                    PHONE
---------------------------------------- ----------
ADDRESS                                            DATE_OF_B
-------------------------------------------------- ---------
Velachery                                          18-JUN-05

        105 Meena
meena@gmail.com                          9876543214
Guindy                                             30-NOV-04

        106 Kaviya

CUSTOMER_ID CUSTOMER_NAME
----------- ------------------------------
EMAIL                                    PHONE
---------------------------------------- ----------
ADDRESS                                            DATE_OF_B
-------------------------------------------------- ---------
kaviya@gmail.com                         9876543215
Anna Nagar                                         25-SEP-05

        107 Nisha
nisha@gmail.com                          9876543216
Adyar                                              05-MAR-03


CUSTOMER_ID CUSTOMER_NAME
----------- ------------------------------
EMAIL                                    PHONE
---------------------------------------- ----------
ADDRESS                                            DATE_OF_B
-------------------------------------------------- ---------
        108 Swathi
swathi@gmail.com                         9876543217
T Nagar                                            12-JAN-04

        109 Keerthi
keerthi@gmail.com                        9876543218
Porur                                              08-JUL-05

CUSTOMER_ID CUSTOMER_NAME
----------- ------------------------------
EMAIL                                    PHONE
---------------------------------------- ----------
ADDRESS                                            DATE_OF_B
-------------------------------------------------- ---------

        110 Deepa
deepa@gmail.com                          9876543219
Pallavaram                                         22-MAY-04


10 rows selected.

SQL> UPDATE Customer
  2  SET Address = 'Madurai'
  3  WHERE Customer_ID = 103;

1 row updated.

SQL> UPDATE Customer
  2  SET Phone = '9998887776'
  3  WHERE Customer_ID = 108;

1 row updated.

SQL> SELECT * FROM Customer;

CUSTOMER_ID CUSTOMER_NAME
----------- ------------------------------
EMAIL                                    PHONE
---------------------------------------- ----------
ADDRESS                                            DATE_OF_B
-------------------------------------------------- ---------
        101 Harini
harini@gmail.com                         9876543210
Chennai                                            15-APR-05

        102 Priya
priya@gmail.com                          9876543211
Tambaram                                           10-AUG-04

CUSTOMER_ID CUSTOMER_NAME
----------- ------------------------------
EMAIL                                    PHONE
---------------------------------------- ----------
ADDRESS                                            DATE_OF_B
-------------------------------------------------- ---------

        103 Divya
divya@gmail.com                          9876543212
Madurai                                            20-DEC-03

        104 Anu
anu@gmail.com                            9876543213

CUSTOMER_ID CUSTOMER_NAME
----------- ------------------------------
EMAIL                                    PHONE
---------------------------------------- ----------
ADDRESS                                            DATE_OF_B
-------------------------------------------------- ---------
Velachery                                          18-JUN-05

        105 Meena
meena@gmail.com                          9876543214
Guindy                                             30-NOV-04

        106 Kaviya

CUSTOMER_ID CUSTOMER_NAME
----------- ------------------------------
EMAIL                                    PHONE
---------------------------------------- ----------
ADDRESS                                            DATE_OF_B
-------------------------------------------------- ---------
kaviya@gmail.com                         9876543215
Anna Nagar                                         25-SEP-05

        107 Nisha
nisha@gmail.com                          9876543216
Adyar                                              05-MAR-03


CUSTOMER_ID CUSTOMER_NAME
----------- ------------------------------
EMAIL                                    PHONE
---------------------------------------- ----------
ADDRESS                                            DATE_OF_B
-------------------------------------------------- ---------
        108 Swathi
swathi@gmail.com                         9998887776
T Nagar                                            12-JAN-04

        109 Keerthi
keerthi@gmail.com                        9876543218
Porur                                              08-JUL-05

CUSTOMER_ID CUSTOMER_NAME
----------- ------------------------------
EMAIL                                    PHONE
---------------------------------------- ----------
ADDRESS                                            DATE_OF_B
-------------------------------------------------- ---------

        110 Deepa
deepa@gmail.com                          9876543219
Pallavaram                                         22-MAY-04


10 rows selected.

SQL> DELETE FROM Customer
  2  WHERE Customer_ID = 109;

1 row deleted.

SQL> DELETE FROM Customer
  2  WHERE Customer_ID = 110;

1 row deleted.

SQL> SELECT * FROM Customer;

CUSTOMER_ID CUSTOMER_NAME
----------- ------------------------------
EMAIL                                    PHONE
---------------------------------------- ----------
ADDRESS                                            DATE_OF_B
-------------------------------------------------- ---------
        101 Harini
harini@gmail.com                         9876543210
Chennai                                            15-APR-05

        102 Priya
priya@gmail.com                          9876543211
Tambaram                                           10-AUG-04

CUSTOMER_ID CUSTOMER_NAME
----------- ------------------------------
EMAIL                                    PHONE
---------------------------------------- ----------
ADDRESS                                            DATE_OF_B
-------------------------------------------------- ---------

        103 Divya
divya@gmail.com                          9876543212
Madurai                                            20-DEC-03

        104 Anu
anu@gmail.com                            9876543213

CUSTOMER_ID CUSTOMER_NAME
----------- ------------------------------
EMAIL                                    PHONE
---------------------------------------- ----------
ADDRESS                                            DATE_OF_B
-------------------------------------------------- ---------
Velachery                                          18-JUN-05

        105 Meena
meena@gmail.com                          9876543214
Guindy                                             30-NOV-04

        106 Kaviya

CUSTOMER_ID CUSTOMER_NAME
----------- ------------------------------
EMAIL                                    PHONE
---------------------------------------- ----------
ADDRESS                                            DATE_OF_B
-------------------------------------------------- ---------
kaviya@gmail.com                         9876543215
Anna Nagar                                         25-SEP-05

        107 Nisha
nisha@gmail.com                          9876543216
Adyar                                              05-MAR-03


CUSTOMER_ID CUSTOMER_NAME
----------- ------------------------------
EMAIL                                    PHONE
---------------------------------------- ----------
ADDRESS                                            DATE_OF_B
-------------------------------------------------- ---------
        108 Swathi
swathi@gmail.com                         9998887776
T Nagar                                            12-JAN-04


8 rows selected.

SQL> COMMIT;

Commit complete.