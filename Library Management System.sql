-- Module 3: Library Management System
-- Create the Library database
CREATE DATABASE library;

-- Use the library database
USE library;
-- 1. Branch Branch_no - Set as PRIMARY KEY Manager_Id Branch_address Contact_no 
-- Create Branch table
CREATE TABLE Branch (
    Branch_No INT PRIMARY KEY,
    Manager_ID INT,
    Branch_Address VARCHAR(300),
    Contact_No VARCHAR(15)
);

INSERT INTO Branch (Branch_no, Manager_Id, Branch_address, Contact_no)
VALUES 
	(1, 1001, '123 Riyadh, Saudi Arabia', '1234567891'),
	(2, 1002, '456 Dammam, Saudi Arabia', '1234567892'),
	(3, 1003, '789 Jeddha, Saudi Arabia', '1234567893'),
	(4, 1004, '987 Jezan, Saudi Arabia', '1234567894')
;
SELECT * FROM Branch;

-- 2. Employee Emp_Id – Set as PRIMARY KEY Emp_name Position Salary Branch_no - Set as FOREIGN KEY and it refer Branch_no in Branch table 
-- Create Employee table
CREATE TABLE Employee (
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(150),
    Position VARCHAR(100),
    Salary DECIMAL(10,2),
    Branch_No INT,
    FOREIGN KEY (Branch_No) REFERENCES Branch(Branch_No)
);

INSERT INTO Employee (Emp_ID, Emp_Name, Position, Salary, Branch_No)
VALUES 
	(001, 'Naser Al Qahtani', 'Manager', 75000.00, 1),
	(002, 'Salem Al Darbas', 'Sales Associate', 45000.00, 2),
	(003, 'Ashraf Muhammed', 'Accountant', 55000.00, 3),
	(004, 'David John', 'HR Specialist', 60000.00, 4),
	(005, 'Ram Kumar', 'Manager', 75000.00, 2),
	(006, 'Basith Soudath Manzil', 'Sales Associate', 45000.00, 3),
	(007, 'Ramsey Sudheer', 'Accountant', 55000.00, 4),
	(008, 'Yusuf Alam', 'HR Specialist', 60000.00, 1),
	(009, 'Seema Kadhar', 'Manager', 75000.00, 1),
	(010, 'Senthil Kumar', 'Sales Associate', 40000.00, 2),
	(011, 'Samal Muhammad', 'Accountant', 56000.00, 3),
	(012, 'Justin Jacob', 'HR Specialist', 60000.00, 4),
	(013, 'Rose Rustin', 'Manager', 75000.00, 2),
	(014, 'Roopesh Kumar', 'Sales Associate', 45000.00, 3),
	(015, 'Rangannan Jr', 'Accountant', 55000.00, 4),
	(016, 'Najir Ramesh', 'HR Specialist', 60000.00, 1),
	(017, 'Naseem Sukoor', 'Accountant', 43000.00, 1),
	(018, 'Saleem Raj', 'Sales Associate', 45000.00, 4),
	(019, 'Alam Vinod', 'Sales Associate', 55000.00, 3),
	(020, 'Reshma Raj', 'Accountant', 43000.00, 4),
	(021, 'Ranjan Raj', 'Accountant', 45000.00, 1),
	(022, 'Basil Ramesh', 'Sales Associate', 45000.00, 3),
	(023, 'Yami Sharan', 'Sales Associate', 55000.00, 4),
	(024, 'Yani Goutham', 'Sales Associate', 40000.00, 1),
    (025, 'Christina Raj', 'Sales Associate', 55000.00, 3),
	(026, 'Farncis Ramesh', 'Sales Associate', 60000.00, 4),
	(027, 'Sunil Pradhan', 'Accountant', 75000.00, 1),
	(028, 'Jacob Jose', 'Sales Associate', 45000.00, 3),
	(029, 'Kadhar Hassan', 'Sales Associate', 55000.00, 4),
	(030, 'Anil Kumble', 'Sales Associate', 40000.00, 1)
;
SELECT * FROM Employee;
-- 3. Books ISBN - Set as PRIMARY KEY Book_title Category Rental_Price Status [Give yes if book available and no if book not available] Author Publisher 
-- Create Books table

CREATE TABLE Books (
    ISBN VARCHAR(13) PRIMARY KEY,
    Book_Title VARCHAR(255),
    Category VARCHAR(100),
    Rental_Price DECIMAL(10,2),
    Status VARCHAR(3) CHECK(Status IN ('Yes','No')),
    Author VARCHAR(255),
    Publisher VARCHAR(255)
);
INSERT INTO Books (ISBN, Book_Title, Category, Rental_Price, Status, Author, Publisher)
VALUES
	('0987654321001', 'ZYX', 'Thriller', 10.00, 'Yes', 'John Honayi', 'LMN'),
	('0987654321002', 'WVU', 'Anime', 5.00, 'No', 'James Cameroon ', 'IJK'),
	('0987654321003', 'TSR', 'Comic', 6.00, 'Yes', 'Christopher Nolan', 'FGH'),
	('0987654321004', 'QPO', 'Horror', 18.00, 'Yes', 'Shashank Aravind', 'CDE'),
	('0987654321005', 'NML', 'History', 15.00, 'Yes', 'John Honayi', 'LMN'),
	('0987654321006', 'KJI', 'Comic', 5.00, 'Yes', 'James Bond ', 'LMN'),
	('0987654321007', 'HGF', 'History', 26.00, 'Yes', 'Christopher Nolan', 'FGH'),
	('0987654321008', 'EDC', 'History', 30.00, 'Yes', 'Aravind Shankar', 'FGH'),
	('0987654321009', 'History Of Football', 'History', 15.00, 'Yes', 'Aravind Shankar', 'LMN'),
	('0987654321010', 'Poppeye', 'Comic', 5.00, 'Yes', 'James Bond ', 'CDE'),
	('0987654321011', 'History Of The Great China Wall', 'History', 26.00, 'Yes', 'Christopher Nolan', 'IJK'),
	('0987654321012', 'Russian History Of Culinary', 'History', 30.00, 'Yes', 'Aravind Shankar', 'CDE')
;
SELECT * FROM Books;
-- 4. Customer Customer_Id - Set as PRIMARY KEY Customer_name Customer_address Reg_date 
-- Create Customer table
CREATE TABLE Customer (
    Customer_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(255),
    Customer_Address VARCHAR(255),
    Reg_Date DATE
);
INSERT INTO Customer (Customer_ID, Customer_Name, Customer_Address, Reg_Date)
VALUES 
	(1, 'Rama Banu', '098 Dammam, Saudi Arabia', '2023-05-15'),
	(2, 'Anwar Rajeev', '765 Riyadh, Saudi Arabin', '2024-01-22'),
	(3, 'Lensin Francis', '432 Jeddah, Saudi Arabi', '2022-08-10'),
	(4, 'Dhaliya Sudheer', '109 Jezan, Saudi Arabi', '2023-11-05'),
	(5, 'Ramesh Raj', '890 Dammam, Saudi Arabia', '2021-05-15'),
	(6, 'Raju Rama', '567 Riyadh, Saudi Arabin', '2020-01-22'),
	(7, 'Vidya Unni', '234 Jeddah, Saudi Arabi', '2022-09-13'),
	(8, 'Kamaraj CP', '901 Jezan, Saudi Arabi', '2019-11-15'),
	(9, 'Sharukh Khan', '809 Dammam, Saudi Arabia', '2023-06-15'),
	(10, 'Salman Khan', '576 Riyadh, Saudi Arabin', '2023-06-22'),
	(11, 'Ameer Khan', '243 Jeddah, Saudi Arabi', '2022-09-13'),
	(12, 'Santhosh Pndit', '910 Jezan, Saudi Arabi', '2023-06-15')
;
SELECT * FROM Customer;
-- 5. IssueStatus Issue_Id - Set as PRIMARY KEY Issued_cust – Set as FOREIGN KEY and it refer customer_id in CUSTOMER table Issued_book_name Issue_date Isbn_book – Set as FOREIGN KEY and 
-- it should refer isbn in BOOKS table 
-- Create IssueStatus table
CREATE TABLE IssueStatus (
    Issue_ID INT PRIMARY KEY,
    Issued_Cust INT,
    Issued_Book_Name VARCHAR(255),
    Issue_Date DATE,
    ISBN_Book VARCHAR(13),
    FOREIGN KEY (Issued_Cust) REFERENCES Customer(Customer_ID),
    FOREIGN KEY (ISBN_Book) REFERENCES Books(ISBN)
);
INSERT INTO IssueStatus (Issue_ID, Issued_Cust, Issued_Book_Name, Issue_Date, ISBN_Book)
VALUES 
	(1, 1, 'ZYX', '2024-09-01', '0987654321001'),
	(2, 3, 'WVU', '2024-10-25', '0987654321002'),
	(3, 2, 'TSR', '2024-11-02', '0987654321003'),
	(4, 4, 'QPO', '2024-12-03', '0987654321004'), 
	(5, 10, 'ZYX', '2023-06-23', '0987654321001'),
	(6, 9, 'WVU', '2023-06-25', '0987654321002'),
	(7, 12, 'TSR', '2023-06-16', '0987654321003'),
	(8, 11, 'QPO', '2024-12-03', '0987654321004'),
	(9, 10, 'NML', '2023-06-23', '0987654321005'),
	(10, 9, 'KJI', '2023-06-25', '0987654321006'),
	(11, 12, 'HGF', '2023-06-16', '0987654321007'),
	(12, 11, 'EDC', '2024-12-03', '0987654321008'),
    (13, 10, 'History Of Football', '2023-06-23', '0987654321009'),
	(14, 9, 'Poppeye', '2023-06-25', '0987654321010'),
	(15, 12, 'History Of The Great China Wall', '2023-06-16', '0987654321011'),
	(16, 11, 'Russian History Of Culinary', '2024-12-03', '0987654321012')
;

SELECT * FROM IssueStatus;
-- 6. ReturnStatus Return_Id - Set as PRIMARY KEY Return_cust Return_book_name Return_date Isbn_book2 - Set as FOREIGN KEY and it should refer isbn in BOOKS table
-- Create ReturnStatus table
CREATE TABLE ReturnStatus (
    Return_ID INT PRIMARY KEY,
    Return_Cust INT,
    Return_Book_Name VARCHAR(255),
    Return_Date DATE,
    ISBN_Book2 VARCHAR(13),
    FOREIGN KEY (Return_Cust) REFERENCES Customer(Customer_ID),
    FOREIGN KEY (ISBN_Book2) REFERENCES Books(ISBN)
);

INSERT INTO ReturnStatus (Return_ID, Return_Cust, Return_Book_Name, Return_Date, ISBN_Book2)
VALUES 
	(1, 1, 'ZYX', '2024-09-05', '0987654321001'),
	(2, 3, 'WVU', '2024-10-28', '0987654321002'),
	(3, 2, 'TSR', '2024-11-04', '0987654321003'),
	(4, 4, 'QPO', '2024-12-06', '0987654321004')
;
SELECT * FROM ReturnStatus;

-- 1. Retrieve the book title, category, and rental price of all available books. 
SELECT Book_Title, Category, Rental_Price 
FROM Books
WHERE Status = 'yes';

-- 2. List the employee names and their respective salaries in descending order of salary. 
SELECT Emp_Name, Salary 
FROM Employee
ORDER BY Salary DESC;

-- 3. Retrieve the book titles and the corresponding customers who have issued those books. 
SELECT B.Book_Title, C.Customer_Name
FROM IssueStatus I
JOIN Books B ON I.ISBN_Book = B.ISBN
JOIN Customer C ON I.Issued_Cust = C.Customer_Id;

-- 4. Display the total count of books in each category. 
SELECT Category, COUNT(*) AS CountOfBooks
FROM Books
GROUP BY Category;

-- 5. Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000. 
SELECT Emp_Name, Position
FROM Employee
WHERE Salary > 50000;

-- 6. List the customer names who registered before 2022-01-01 and have not issued any books yet.
SELECT C.Customer_name
FROM Customer C
LEFT JOIN IssueStatus I ON C.Customer_ID = I.Issued_Cust
WHERE C.Reg_Date < '2022-01-01' AND I.Issue_ID IS NULL;

-- 7. Display the branch numbers and the total count of employees in each branch. 
SELECT Branch_No, COUNT(*) AS CountOfEmployees
FROM Employee
GROUP BY Branch_No;

-- 8. Display the names of customers who have issued books in the month of June 2023. 
SELECT DISTINCT C.Customer_Name
FROM IssueStatus I
JOIN Customer C ON I.Issued_Cust = C.Customer_ID
WHERE I.Issue_Date BETWEEN '2023-06-01' AND '2023-06-30';

-- 9. Retrieve book_title from book table containing history. 
SELECT Book_title
FROM Books
WHERE Book_title LIKE '%History%';

-- 10.Retrieve the branch numbers along with the count of employees for branches having more than 5 employees 
SELECT Branch_no, COUNT(*) AS Total_employees
FROM Employee
GROUP BY Branch_no
HAVING COUNT(*) > 5;

-- 11. Retrieve the names of employees who manage branches and their respective branch addresses. 
SELECT E.Emp_Name, B.Branch_Address
FROM Employee E
JOIN Branch B ON E.Branch_No = B.Branch_No
WHERE E.Position = 'Manager';

-- 12. Display the names of customers who have issued books with a rental price higher than Rs. 25. 
SELECT DISTINCT C.Customer_name
FROM IssueStatus I
JOIN Customer C ON I.Issued_Cust = C.Customer_ID
JOIN Books B ON I.ISBN_Book = B.ISBN
WHERE B.Rental_Price > 25;
