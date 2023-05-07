-- CREATING A TABLE 
CREATE TABLE CUSTOMER(
CUSTOMER_ID INT NOT NULL PRIMARY KEY,
CUST_NAME VARCHAR(30) NOT NULL,
CITY VARCHAR(35) NOT NULL,
GRADE INT NOT NULL,
SALESMAN_ID INT,
UNIQUE (SALESMAN_ID)
);

-- INSERTING THE DATA INTO THE CUSTOMER TABLE 

INSERT INTO CUSTOMER VALUES 
(3002,"Nick Rimando","New York",100,5001),
(3007,"Brad Davis","New York",200,5002),
(3005,"Graham Zusi","California",88,5003),
(3008,"Julian Green","London",55,5004),
(3004,"Fabian Johnson","Paris",300,5005),
(3009,"Geoff Cameron","Berlin",400,5006),
(3003,"Jozy Altidor","Moscow",200,5007),
(3001,"Brad Guzan","London",88,5008);


-- CREATING A SALESMAN TABLE 

CREATE TABLE SALESMAN (
SALESMAN_ID INT NOT NULL,
NAME VARCHAR(30) NOT NULL,
CITY VARCHAR(35) NOT NULL,
COMMISSION FLOAT NOT NULL,
FOREIGN KEY (SALESMAN_ID) REFERENCES CUSTOMER(SALESMAN_ID)
);

-- INSERTING THE DATA INTO THE SALMAN TALBE 

INSERT INTO SALESMAN VALUES 
(5001,"James Hoog","New York",0.15),
(5002,"Nail Knite","Paris",0.13),
(5005,"Pit Alex","London",0.11),
(5006,"Mc Lyon","paris",0.14),
(5007,"Paul Adam","Rome",0.13),
(5003,"Lauson Hen","San Jose",0.12);

-- WRITE A SQL QUERY TO FIND THOSE CUSTOMERS WITH A GRADE LESS THAN 100. 
-- IT SHOULD RETURN CUST_NAME, CUST_CITY GRADE,SALESMAN AND SALESMAN_CITY. 
-- THE RESULT SHOULD BE ORDERED BY ASCENDING CUSTOMER_ID

SELECT CUST_NAME, T1.CITY AS CUST_CITY ,GRADE,NAME, T2.CITY AS SALES_MAN_CITY FROM CUSTOMER AS T1   
 LEFT JOIN SALESMAN AS T2 ON 
T1.SALESMAN_ID = T2.SALESMAN_ID
WHERE T1.GRADE < 100 
ORDER BY T1.CUSTOMER_ID ASC;