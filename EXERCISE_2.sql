-- CREATING THE CONTACT TABLE 

CREATE TABLE CONTACT(
ID INT PRIMARY KEY NOT NULL,
EMAIL VARCHAR(30) NOT NULL,
FNAME VARCHAR(30) NOT NULL,
LNAME VARCHAR(30) NOT NULL,
COMPANY VARCHAR(30) NOT NULL,
ACTIVE_FLAG INT NOT NULL,
OPT_OUT INT
);

-- INSERTING THE VALUES INTO THE CONTACT TABLE 

INSERT INTO CONTACT VALUES 
(123,"a@a.com","Klan","Seth","ABC",1,1),
(133,"b@a.com","Neha","Seth","ABC",1,0),
(234,"c@c.com","Puru","Malik","CDF",0,0),
(342,"d@d.com","Sid","Maan","TEG",1,0);



-- SELECT ALL COLUMUNS FROM THE CONTACT TABLE WHERE THE ACTIVE FLAG IS 1

SELECT * FROM CONTACT WHERE ACTIVE_FLAG =1;

-- DEACTIVATE CONTACTS WHO ARE OPTED OUT 

UPDATE CONTACT SET ACTIVE_FLAG = 0 WHERE OPT_OUT=0;

-- DELETE ALL THE CONTACTS WHO HAVE THE COMPANY NAME AS 'ABC'

DELETE FROM CONTACT WHERE COMPANY = "ABC";

-- INSERT A NEW ROW WITH ID AS 658, NAME AS 'mill', email as 'mili@gmail.com',the company as 'DGH', active flag as 1, opt_out flag as 1

INSERT INTO CONTACT (ID,EMAIL ,FNAME,LNAME,COMPANY,ACTIVE_FLAG,OPT_OUT) VALUES 
(658,"mill@gmail.com","mill","NULL","DGH",1,1);

-- PULL OUT THE UNIQUE VALUES OF THE COMPANY COLUMN

SELECT DISTINCT COMPANY FROM CONTACT;

-- UPDATE NAME "mill" to "niti". 

UPDATE CONTACT SET FNAME = "niti" WHERE FNAME = "mill";


SELECT * FROM CONTACT;