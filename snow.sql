CREATE TABLE DATE_TRANS (
    DATE_ID INT PRIMARY KEY,
    DATE_TRANS DATE,
    WEEK_ID INT
);

CREATE TABLE BRANCH (
    BRANCH_ID INT PRIMARY KEY,
    BRANCHNAME VARCHAR (50),
    SUBBRANCH_ID INT
);

CREATE TABLE MENU (
    MENU_ID INT PRIMARY KEY,
    MENUNAME VARCHAR (50),
    SUBMENU_ID INT
);

CREATE TABLE PAYMENT (
    PAY_ID INT PRIMARY KEY,
    WAYTOPAY VARCHAR (50),
    CATPAY_ID INT
);

CREATE TABLE SALE (
    MENU_ID INT,
    STAFF_ID INT,
    DATE_ID INT,
    BRANCH_ID INT,
    PAY_ID INT,
    QTY_BUY INT,
    SUB_TOTAL INT,
    FOREIGN KEY(DATE_ID) REFERENCES DATE_TRANS(DATE_ID),
    FOREIGN KEY(BRANCH_ID) REFERENCES BRANCH(BRANCH_ID),
    FOREIGN KEY(MENU_ID) REFERENCES MENU(MENU_ID),
    FOREIGN KEY(PAY_ID) REFERENCES PAYMENT(PAY_ID)
);

CREATE TABLE WEEK (
    WEEK_ID INT PRIMARY KEY,
    WEEKTRANS INT,
    MONTH_ID INT
);

CREATE TABLE SUB_BRANCH (
    SUBBRANCH_ID INT PRIMARY KEY,
    SUBBRANCHNAME VARCHAR (50)
);

CREATE TABLE CATPAYMENT (
    CATPAY_ID INT PRIMARY KEY,
    CATPAYNAME VARCHAR (50)
);

CREATE TABLE SUBMENU (
    SUBMENU_ID INT PRIMARY KEY,
    SUBMENUNAME VARCHAR (50),
    CATMENU_ID INT
);

ALTER TABLE
    DATE_TRANS
ADD
    FOREIGN KEY(WEEK_ID) REFERENCES WEEK(WEEK_ID);

ALTER TABLE
    BRANCH
ADD
    FOREIGN KEY(SUBBRANCH_ID) REFERENCES SUB_BRANCH(SUBBRANCH_ID);

ALTER TABLE
    MENUADD FOREIGN KEY(SUBMENU_ID) REFERENCES SUBMENU(SUBMENU_ID);

ALTER TABLE
    PAYMENTADD FOREIGN KEY(CATPAY_ID) REFERENCES CATPAYMENT(CATPAY_ID);