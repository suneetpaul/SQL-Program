/*--CREATE TABLES--*/
create database Employee;
/*---------------------------------------------------*/
use Employee;
CREATE TABLE Employee(
  Employee_Id int(6),
  First_Name VARCHAR(25),
  Last_Name VARCHAR(25),
  Hire_Date DATE,
  City VARCHAR(25),
  State VARCHAR(25),
  CONSTRAINT EMPLOYEE_PK PRIMARY KEY (Employee_Id));
/*---------------------------------------------------
Department
---------------------------------------------------*/
  CREATE TABLE Department(
  Department_Id int,
  Department_Name VARCHAR(30),
  CONSTRAINT DEPARTMENT_PK PRIMARY KEY (Department_Id)
  );
  
  /*-------------------------------------------------
  Salary
  -------------------------------------------------*/
  
  CREATE TABLE Salary(
  Salary_Id int ,
  Gross_Salary int,
  Hourly_Pay int,
  State_Tax int,
  Federal_Tax int,
  Account_Id int,
  CONSTRAINT SALARY_PK PRIMARY KEY (Salary_Id),
  FOREIGN KEY (Account_Id)
        REFERENCES ACCOUNTDETAILS(Account_Id)
  );
  
  /*-------------------------------------------------
  DepartmentProject Bridge
  -------------------------------------------------*/
  CREATE TABLE DepartmentProject(
  Department_Id int,
  Project_Id int,
  CONSTRAINT DEPTPROJECT_PK PRIMARY KEY (Department_Id,Project_Id),
  FOREIGN KEY (Department_Id)
        REFERENCES Department(Department_Id),
  FOREIGN KEY (Project_Id)
        REFERENCES Project(Project_Id)
  );
 /* --------------------------------------------------
  Project
  --------------------------------------------------*/
  CREATE TABLE Project(
  Project_Id int,
  Project_Name VARCHAR(50),
  Project_Description VARCHAR(50),
  CONSTRAINT Project_PK PRIMARY KEY (Project_Id)
  );
  
  /*---------------------------------------------------
  AccountDetails
  ---------------------------------------------------*/
  
  CREATE TABLE AccountDetails(
  Account_Id int,
  Bank_Name VARCHAR(50),
  Account_Number VARCHAR(50),
  Employee_Id int,
  CONSTRAINT Account_PK PRIMARY KEY (Account_Id),
  FOREIGN KEY (Employee_Id)
        REFERENCES Employee(Employee_Id)
  );
  /*---------------------------------------------------
  Education
  ---------------------------------------------------*/
  CREATE TABLE Education(
  Education_Id int,
  Employee_Id int,
  Degree VARCHAR(30),
  Graduation_Year int(4),
  CONSTRAINT Location_PK PRIMARY KEY (Education_Id),
  FOREIGN KEY (Employee_Id)
        REFERENCES Employee(Employee_Id)
  );
  /*---------------------------------------------------
  Leave
  ---------------------------------------------------*/
  
  CREATE TABLE Leavee(
  Leave_Id int,
  Employee_Id int,
  Leave_date DATE,
  CONSTRAINT Leave_PK PRIMARY KEY (Leave_Id),
  FOREIGN KEY (Employee_Id)
        REFERENCES Employee(Employee_Id)
  );
  
 /*----------------------------------------------------
 EmployeeAttendance Bridge
 ----------------------------------------------------*/
  
  CREATE TABLE Employee_Attendance(
  Employee_Id int,
  Attendance_Id int,
  CONSTRAINT DEPARTMENTPROJECT_PK PRIMARY KEY (Employee_Id,Attendance_Id),
  FOREIGN KEY (Employee_Id)
        REFERENCES Employee(Employee_Id),
  FOREIGN KEY (Attendance_Id)
        REFERENCES Attendance(Attendance_Id)
  );
  
 /* ----------------------------------------------------
  Attendance
  ----------------------------------------------------*/
   
  CREATE TABLE Attendance(
  Attendance_Id int,
  Hours_Worked int,
  CONSTRAINT Attendance_PK PRIMARY KEY (Attendance_Id)
  );
  
  /*----------------------------------------------------
  WorkLocation
  ----------------------------------------------------*/
  CREATE TABLE Work_Location(
  Location_Id int,
  Location VARCHAR(25),
  Number_Of_Employees int,
  City VARCHAR(25),
  State VARCHAR(25),
  CONSTRAINT Loc_PK PRIMARY KEY (Location_Id)
  );
  
  
  