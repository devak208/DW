CREATE TABLE PRODUCT (
    PRODUCTKEY INT PRIMARY KEY,
    PRODUCTNAME VARCHAR (100),
    BRANCHNAME VARCHAR (50)
);

CREATE TABLE CUSTOMER (
    CUSTOMERKEYINTPRIMARY KEY,
    CUSTOMERNAME VARCHAR (100),
    CUSTOMERADDRESS VARCHAR (100)
);

CREATE TABLE TIMES (
    TIMEKEY INT PRIMARY KEY,
    DATE - DATE,
    MONTHS VARCHAR (20),
    YEARS INT
);

CREATE TABLE SALESREP (
    SALES_REPKEY INT PRIMARY KEY,
    SALES_PERSON_NAME VARCHAR (100),
    TERRITORY_NAME VARCHAR (50),
    REGION_NAME VARCHAR (100)
);

CREATE TABLE SALES_FACT (
    SALESID INT PRIMARY KEY,
    PRODUCTKEY INT,
    TIMEKEY INT,
    CUSTOMERKEY INT,
    SALES_REPKEY INT,
    SALESQUANTITY INT,
    SALESPRICE DECIMAL (10, 2),
    FOREIGN KEY(PRODUCTKEY) REFERENCES PRODUCT(PRODUCTKEY),
    FOREIGN KEY(TIMEKEY) REFERENCES TIMES(TIMEKEY),
    FOREIGN KEY(CUSTOMERKEY) REFERENCES CUSTOMER(CUSTOMERKEY),
    FOREIGN KEY(SALES_REPKEY) REFERENCES SALESREP(SALES_REPKEY)
);