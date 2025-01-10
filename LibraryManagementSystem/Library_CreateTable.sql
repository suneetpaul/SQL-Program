
# Create a Database called 'Library' 
CREATE DATABASE library;
USE library;

# create table "Branch"
CREATE TABLE Branch(
Branch_no VARCHAR(10) PRIMARY KEY,
Manager_id VARCHAR(10),
Branch_address VARCHAR(30),
Contact_no VARCHAR(15)
);

DESC branch;

# Create table "Employee"

CREATE TABLE Employee(
Emp_id VARCHAR(10) PRIMARY KEY,
Emp_name VARCHAR(30),
Position VARCHAR(30),
Salary DECIMAL(10,2)
);

DESC employee;

# Create table "Customer"
CREATE TABLE Customer(
Customer_Id VARCHAR(10) PRIMARY KEY,
Customer_name VARCHAR(30),
Customer_address VARCHAR(30),
Reg_date DATE
);

DESC customer;

# Create table "IssueStatus"
CREATE TABLE IssueStatus(
Issue_Id VARCHAR(10) PRIMARY KEY,
Issued_cust VARCHAR(30),
Issued_book_name VARCHAR(50),
Issue_date DATE,
Isbn_book VARCHAR(15)
);
DESC issuestatus;

ALTER TABLE issuestatus MODIFY COLUMN Issued_book_name VARCHAR(80);

ALTER TABLE issuestatus MODIFY COLUMN Isbn_book VARCHAR(25);

# Create table "ReturnStatus"

CREATE TABLE ReturnStatus(
Return_id VARCHAR(10) PRIMARY KEY,
Return_cust VARCHAR(30),
Return_book_name VARCHAR(50),
Return_date DATE,
isbn_book2 VARCHAR(15)
);
DESC returnstatus;

ALTER TABLE returnstatus MODIFY COLUMN Return_book_name VARCHAR(80);
ALTER TABLE returnstatus MODIFY COLUMN isbn_book2 VARCHAR(25);

# Create table "Books"

CREATE TABLE Books(
ISBN VARCHAR(10) PRIMARY KEY,
Book_title VARCHAR(50),
Category VARCHAR(30),
Rental_Price DECIMAL(10,2),
Status ENUM('Yes','No'),
Author VARCHAR(30),
Publisher VARCHAR(30)
);

DESC Books;

alter TABLE books MODIFY COLUMN ISBN VARCHAR(25);

alter TABLE books MODIFY COLUMN Book_title VARCHAR(80);

SHOW TABLES;
