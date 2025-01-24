create database DMart;
use DMart;
CREATE TABLE Customers 
(
    Customer_id INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Gender VARCHAR(10),
    Age INT,
    PhoneNumber VARCHAR(15),
    City VARCHAR(50),
    State VARCHAR(50)
);

INSERT INTO Customers (Customer_id, FirstName, LastName, Gender, Age, PhoneNumber, City, State) VALUES
    (1, 'Lakshmi', 'Ravi', 'Female', 22, '9876543210', 'Chennai', 'Tamil Nadu'),
    (2, 'Vivek', 'Sharma', 'Male', 24, '9876543211', 'Bengaluru', 'Karnataka'),
    (3, 'Sita', 'Mehta', 'Female', 23, '9876543213', 'Kolkata', 'West Bengal'),
    (4, 'Neha', 'Gupta', 'Female', 20, '9876543215', 'Pune', 'Maharashtra'),
    (5, 'Raj', 'Kapoor', 'Male', 25, '9876543220', 'Delhi', 'Delhi'),
    (6, 'Rajesh', 'Kumar', 'Male', 35, '9876543212', 'Mumbai', 'Maharashtra'),
    (7, 'Arun', 'Patel', 'Male', 42, '9876543214', 'Hyderabad', 'Telangana'),
    (8, 'Manoj', 'Iyer', 'Male', 33, '9876543216', 'Coimbatore', 'Tamil Nadu'),
    (9, 'Anjali', 'Deshmukh', 'Female', 29, '9876543217', 'Ahmedabad', 'Gujarat'),
    (10, 'Ravi', 'Varma', 'Male', 39, '9876543218', 'Lucknow', 'Uttar Pradesh'),
    (11, 'Neeraj', 'Singh', 'Male', 30, '9876543221', 'Indore', 'Madhya Pradesh'),
    (12, 'Pooja', 'Sharma', 'Female', 27, '9876543222', 'Jaipur', 'Rajasthan'),
    (13, 'Suresh', 'Reddy', 'Male', 28, '9876543223', 'Visakhapatnam', 'Andhra Pradesh'),
    (14, 'Kiran', 'Nair', 'Female', 31, '9876543224', 'Thiruvananthapuram', 'Kerala'),
    (15, 'Vinay', 'Rao', 'Male', 29, '9876543225', 'Mysuru', 'Karnataka');

select * from Customers;

CREATE TABLE Products
(
    Product_id INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Brand VARCHAR(50),
    Price DECIMAL(10, 2),
    StockQuantity INT,
    ExpiryDate DATE
);

INSERT INTO Products (Product_id, ProductName, Category, Brand, Price, StockQuantity, ExpiryDate) VALUES
    (1, 'Basmati Rice', 'Groceries', 'India Gate', 1500, 500, '2025-12-31'),
    (2, 'Cotton Shirt', 'Clothing', 'Raymond', 1200, 250, '2025-06-30'),
    (3, 'Organic Apples', 'Fruits', 'Nature Fresh', 200, 400, '2024-12-15'),
    (4, 'Whole Wheat Flour', 'Groceries', 'Aashirvaad', 600, 1000, '2025-11-20'),
    (5, 'Casual Shoes', 'Footwear', 'Bata', 3000, 300, '2025-10-25'),
    (6, 'Packaged Juice', 'Beverages', 'Real', 120, 600, '2025-02-05'),
    (7, 'Formal Pants', 'Clothing', 'Arrow', 1800, 200, '2025-06-15'),
    (8, 'Organic Spinach', 'Vegetables', 'Fresh Farms', 60, 800, '2024-10-01'),
    (9, 'Milk', 'Dairy', 'Amul', 70, 1000, '2024-09-28'),
    (10, 'Luxury Sofa', 'Furniture', 'Godrej', 45000, 50, NULL),
    (11, 'Packaged Almonds', 'Dry Fruits', 'Nutty', 1200, 400, '2025-12-10'),
    (12, 'Cotton Bedsheet', 'Home Decor', 'Bombay Dyeing', 1500, 600, '2025-04-25'),
    (13, 'Green Tea', 'Beverages', 'Tata Tea', 500, 700, '2025-12-31'),
    (14, 'Leather Jacket', 'Clothing', 'Woodland', 7000, 150, '2025-06-20'),
    (15, 'Instant Coffee', 'Beverages', 'Nescafe', 450, 800, '2025-03-12');

select * from Products;

CREATE TABLE Stores 
(
Store_id INT PRIMARY KEY AUTO_INCREMENT,
StoreName VARCHAR(100),
City VARCHAR(50),
State VARCHAR(50)
);

INSERT INTO Stores (Store_id, StoreName, City, State)
VALUES
(1, 'SuperMart', 'Mumbai', 'Maharashtra'),
(2, 'MegaStore', 'Bengaluru', 'Karnataka'),
(3, 'Grocery Hub', 'Delhi', 'Delhi'),
(4, 'Fashion Point', 'Chennai', 'Tamil Nadu'),
(5, 'Electro World', 'Hyderabad', 'Telangana'),
(6, 'Home Essentials', 'Pune', 'Maharashtra'),
(7, 'Book Nook', 'Ahmedabad', 'Gujarat'),
(8, 'Sporting Goods', 'Jaipur', 'Rajasthan'),
(9, 'Pet Paradise', 'Kolkata', 'West Bengal'),
(10, 'Kids World', 'Lucknow', 'Uttar Pradesh'),
(11, 'Fruits & Veggies', 'Coimbatore', 'Tamil Nadu'),
(12, 'Beverage Barn', 'Visakhapatnam', 'Andhra Pradesh'),
(13, 'Beauty Shoppe', 'Surat', 'Gujarat'),
(14, 'Hardware Hub', 'Nagpur', 'Maharashtra'),
(15, 'Kitchen King', 'Indore', 'Madhya Pradesh');

select * from Stores;

CREATE TABLE Sales 
(
Sale_id INT PRIMARY KEY AUTO_INCREMENT,
SaleDate DATE,
Customer_id INT,
Store_id INT,
TotalAmount DECIMAL(10, 2),
Tax DECIMAL(10, 2),
CONSTRAINT fk_Customer FOREIGN KEY (Customer_id) REFERENCES Customers(Customer_id),
CONSTRAINT fk_Store FOREIGN KEY (Store_id) REFERENCES Stores(Store_id),
INDEX idx_customer (Customer_id),
INDEX idx_store (Store_id)
);

INSERT INTO Sales (Sale_id, SaleDate, Customer_id, Store_id, TotalAmount) VALUES  
    (1, '2024-09-20', 1, 1, 1500.00),     
    (2, '2024-09-21', 2, 2, 1200.00),     
    (3, '2024-09-22', 3, 3, 600.00),      
    (4, '2024-09-23', 4, 4, 3000.00),     
    (5, '2024-09-24', 5, 5, 3000.00),     
    (6, '2024-09-25', 6, 6, 480.00),     
    (7, '2024-09-26', 7, 7, 3600.00),     
    (8, '2024-09-27', 8, 8, 600.00),      
    (9, '2024-09-28', 9, 9, 70.00),       
    (10, '2024-09-29', 10, 10, 45000.00),  
    (11, '2024-09-30', 11, 11, 3600.00),  
    (12, '2024-10-01', 12, 12, 3000.00),  
    (13, '2024-10-02', 13, 13, 2500.00),  
    (14, '2024-10-03', 14, 14, 7000.00),  
    (15, '2024-10-04', 15, 15, 1800.00);
    
select * from Sales;

CREATE TABLE SalesDetails (
SaleDetail_id INT PRIMARY KEY AUTO_INCREMENT,
Sale_id INT,
Product_id INT,
Quantity INT,
TaxPercentage DECIMAL(10, 2),
TaxAmount DECIMAL(10, 2),
TotalPrice DECIMAL(10, 2),
FOREIGN KEY (Sale_id) REFERENCES Sales(Sale_id),
FOREIGN KEY (Product_id) REFERENCES Products(Product_id),
INDEX idx_sale (Sale_id),
INDEX idx_product (Product_id)
);

INSERT INTO SalesDetails (Sale_id, Product_id, Quantity, TaxPercentage, TaxAmount, TotalPrice) VALUES
(1, 1, 1, 5, 75, 1500.00),     
(2, 2, 1, 12, 144, 1200.00), 
(3, 3, 3, 5, 10, 600.00),         
(4, 4, 5, 5, 30, 3000.00),        
(5, 5, 1, 18, 540, 3000.00),     
(6, 6, 4, 18, 22, 480.00),       
(7, 7, 2, 12, 216, 3600.00),      
(8, 8, 10, 5, 3, 600.00),          
(9, 9, 1, 5, 4, 70.00),           
(10, 10, 1, 12, 5400, 45000.00), 
(11, 11, 3, 5, 60, 3600.00),      
(12, 12, 2, 12, 180, 3000.00),    
(13, 13, 5, 18, 90, 2500.00),     
(14, 14, 1, 12, 840, 7000.00),    
(15, 15, 4, 18, 81, 1800.00);

select * from SalesDetails;

CREATE TABLE Inventory 
(
Inventory_id INT PRIMARY KEY AUTO_INCREMENT,
Product_id INT,
Store_id INT,
StockQuantity INT,
FOREIGN KEY (Product_id) REFERENCES Products(Product_id),
FOREIGN KEY (Store_id) REFERENCES Stores(Store_id),
INDEX idx_product_inventory (Product_id),
INDEX idx_store_inventory (Store_id)
);

INSERT INTO Inventory (Inventory_id, Product_id, Store_id, StockQuantity) VALUES
(1, 1, 1, 100),  
(2, 2, 2, 150), 
(3, 3, 3, 200),
(4, 4, 4, 250),  
(5, 5, 5, 300),
(6, 6, 6, 350),  
(7, 7, 7, 400),  
(8, 8, 8, 450),  
(9, 9, 9, 500),  
(10, 10, 10, 550),
(11, 11, 11, 600),
(12, 12, 12, 650),
(13, 13, 13, 700), 
(14, 14, 14, 750), 
(15, 15, 15, 800); 

select * from Inventory;

CREATE TABLE Revenue 
(
Revenue_id INT PRIMARY KEY AUTO_INCREMENT,
Sale_id INT,
Store_id INT,
TaxPercentage DECIMAL(10, 2),
TaxAmount DECIMAL(10,2),
TotalRevenue DECIMAL(10, 2),
RevenueDate DATE,
FOREIGN KEY (Sale_id) REFERENCES Sales(Sale_id),
FOREIGN KEY (Store_id) REFERENCES Stores(Store_id),
INDEX idx_revenue_sale (Sale_id),
INDEX idx_revenue_store (Store_id)
);

INSERT INTO Revenue (Revenue_id, Sale_id, Store_id, TaxPercentage, TaxAmount, TotalRevenue, RevenueDate) VALUES
(1, 1, 1, 5, 75.00, 1500.00, '2024-09-20'),   
(2, 2, 2, 12, 144.00, 1200.00, '2024-09-21'),   
(3, 3, 3, 5, 10.00, 600.00, '2024-09-22'),   
(4, 4, 4, 5, 30.00, 3000.00, '2024-09-23'),   
(5, 5, 5, 18, 540.00, 3000.00, '2024-09-24'),   
(6, 6, 6, 18, 22.00, 480.00, '2024-09-25'),   
(7, 7, 7, 12, 216.00, 3600.00, '2024-09-26'),    
(8, 8, 8, 5, 3.00, 600.00, '2024-09-27'),     
(9, 9, 9, 5, 4.00, 70.00, '2024-09-28'),      
(10, 10, 10, 12, 5400.00, 45000.00, '2024-09-29'), 
(11, 11, 11, 5, 60.00, 3600.00, '2024-09-30'),   
(12, 12, 12, 12, 180.00, 3000.00, '2024-10-01'),  
(13, 13, 13, 18, 90.00, 2500.00, '2024-10-02'),  
(14, 14, 14, 12, 840.00, 7000.00, '2024-10-03'),  
(15, 15, 15, 18, 81.00, 1800.00, '2024-10-04');

select * from Revenue;

CREATE TABLE EmployeeSalary 
(
Employee_id INT PRIMARY KEY AUTO_INCREMENT,
EmployeeName VARCHAR(100),
Designation VARCHAR(50),
Department VARCHAR(50),
BasicSalary DECIMAL(10, 2),
SalaryMonth VARCHAR(20)
);

INSERT INTO EmployeeSalary (Employee_id, EmployeeName, Designation, Department, BasicSalary, SalaryMonth)
VALUES
(1,'Lakshmi Iyer', 'Store Manager', 'Management', 70000.00, 'September 2024'),
(2, 'Vivek Kumar', 'Cashier', 'Sales', 25000.00, 'September 2024'),
(3, 'Priya Rao', 'Sales Associate', 'Sales', 20000.00, 'September 2024'),
(4, 'Arjun Desai', 'Inventory Supervisor', 'Inventory', 40000.00, 'September 2024'),
(5, 'Neha Sharma', 'Customer Service Executive', 'Support', 22000.00, 'September 2024'),
(6, 'Rahul Mehta', 'Accountant', 'Finance', 35000.00, 'September 2024'),
(7, 'Aditi Joshi', 'Marketing Executive', 'Marketing', 30000.00, 'September 2024'),
(8, 'Siddharth Verma', 'IT Support', 'IT', 28000.00, 'September 2024'),
(9, 'Komal Singh', 'HR Executive', 'Human Resources', 32000.00, 'September 2024'),
(10,'Karan Gupta', 'Sales Manager', 'Sales', 70000.00, 'September 2024');

Select * from EmployeeSalary;
------------------------------------------------------------------------------------

SELECT * FROM Customers WHERE Age = 25;

SELECT * FROM Customers WHERE City != 'Pune';

SELECT * FROM Customers WHERE City <> 'Chennai';

SELECT * FROM Customers WHERE Age > 35;

SELECT * FROM Customers WHERE Age < 30;

SELECT * FROM Customers WHERE Age <= 22;

SELECT * FROM Customers WHERE Age BETWEEN 20 AND 30;
--------------------------------------------------------------------------------------------------
SELECT * FROM Customers WHERE FirstName LIKE 'R%';

SELECT * FROM Customers WHERE LastName LIKE '%a';

SELECT * FROM Customers WHERE City IN ('Bengaluru', 'Jaipur', 'Lucknow');
--------------------------------------------------------------------------------------------------
SELECT COUNT(*) AS Total_Customers FROM Customers;

SELECT SUM(Age) AS Total_Age FROM Customers;

SELECT AVG(Age) AS Average_Age FROM Customers;

SELECT MIN(Age) AS Young_CustomerAge FROM Customers;

SELECT MAX(Age) AS Maxmium_Age FROM Customers;

SELECT DISTINCT City FROM Customers
order by City Asc;

SELECT DISTINCT State FROM Customers
order by State desc;

SELECT Gender, COUNT(*) AS CustomerCount FROM Customers 
GROUP BY Gender;
------------------------------------------------------------------------------------------------
UPDATE Customers
SET PhoneNumber = '9876543299'
WHERE Customer_id = 2;

alter table Customers
add EmailId varchar(50);

alter table Customers
drop EmailId;

select * from Customers;
------------------------------------------------------------------------------------------------- 
select *
from Customers as c
join Sales as s 
ON c.customer_id = s.sale_id;

select *
from Customers as c
left join Sales as s
ON c.customer_id = s.sale_id;

select *
from Customers as c
right join Sales as s
ON c.customer_id = s.sale_id;

select *
from Customers as c
cross join Sales as s
ON c.customer_id = s.sale_id;

select 
c.Customer_id, c.FirstName, c.LastName, c.Age, c.City, s.Sale_id, s.saledate, s.totalamount
from Customers as c
join Sales as s
on c.Customer_id = s.Customer_id;

select *
from Customers as C
inner join Sales as s
on c.customer_id = s.customer_id
inner join Stores as st
on st.store_id = s.store_id;

---------------------------------------------------------------------------------------------

create  VIEW Customer_Sales_View AS
SELECT c.Customer_id, c.FirstName, c.LastName, c.Age, c.City, s.Sale_id, s.saledate, s.totalamount
FROM Customers AS c
JOIN Sales AS s
ON c.Customer_id = s.Customer_id;

SELECT * FROM Customer_Sales_View;

CREATE OR REPLACE VIEW Customer_Sales_view AS
SELECT 
c.Customer_id, 
c.FirstName, 
c.LastName, 
c.Age, 
c.City, 
COUNT(s.Sale_id) AS TotalSales, 
SUM(s.totalamount) AS TotalAmountSpent
FROM Customers AS c
JOIN Sales AS s
ON c.Customer_id = s.Customer_id
GROUP BY c.Customer_id, c.FirstName, c.LastName, c.Age, c.City;


create view Product_Sales_view as
select 
p.Product_id, 
p.ProductName, 
p.Brand, 
p.Price, 
sd.SaleDetail_id
from Products as p
join SalesDetails as sd
ON p.Product_id = sd.Product_id;

select * from Product_Sales_View;

drop view Product_Sales;

select *
from Stores as st
join Inventory as inv
on st.Store_id = inv.Store_id
join Products as p
on p.Product_id = inv.Product_id;

----------------------------------------------------------------------------------------------
Select 
Employee_id, EmployeeName, Designation, Department, BasicSalary,
SUM(BasicSalary) OVER () Sum_BasicSalary
From EmployeeSalary;

SELECT 
Employee_id,
EmployeeName,
Designation,
BasicSalary,
RANK() OVER (ORDER BY BasicSalary desc) AS SalaryRank
FROM EmployeeSalary;

SELECT 
Employee_id,
EmployeeName,
Designation,
BasicSalary,
dense_rank() OVER (ORDER BY BasicSalary desc) AS SalaryRank
FROM EmployeeSalary;

SELECT 
Employee_id,
EmployeeName,
Designation,
BasicSalary,
ROW_NUMBER () OVER (ORDER BY BasicSalary DESC) AS Salary_Row_Number
FROM EmployeeSalary;

SELECT 
Employee_id,
EmployeeName,
Designation,
BasicSalary,
RANK() OVER (PARTITION BY Designation ORDER BY BasicSalary DESC) AS SalaryRank,
DENSE_RANK() OVER (PARTITION BY Designation ORDER BY BasicSalary DESC) AS DenseSalaryRank,  
ROW_NUMBER() OVER (PARTITION BY Designation ORDER BY BasicSalary DESC) AS RowNumberRank,  
SUM(BasicSalary) OVER (PARTITION BY Designation) AS TotalBasicSalary,        
AVG(BasicSalary) OVER (PARTITION BY Designation) AS AverageBasicSalary,       
COUNT(*) OVER (PARTITION BY Designation) AS EmployeeCount            
FROM EmployeeSalary;

DELIMITER $$
CREATE PROCEDURE GetEmployeeSalary()
BEGIN
SELECT * From EmployeeSalary;
END $$
DELIMITER $$


CALL GetEmployeeSalary();

DELIMITER $$
create procedure getemployeesalariesbymonth(in salary_month varchar(20))
BEGIN
SELECT Employee_id, EmployeeName, Designation, Department, BasicSalary, SalaryMonth
FROM EmployeeSalary
WHERE SalaryMonth = salary_month;
END $$
DELIMITER $$ ;

CALL GetEmployeeSalariesByMonth('September 2024');

DELIMITER $$
CREATE PROCEDURE GetEmployeeByID(IN empID INT)
BEGIN
SELECT * FROM EmployeeSalary
WHERE Employee_id = empID;
END $$
DELIMITER ;

CALL GetEmployeeByID(2);

DELIMITER $$
CREATE PROCEDURE EmployeebyDepartment(IN EMP_DEP Varchar(20))
BEGIN
SELECT * FROM EmployeeSalary
WHERE Department = EMP_DEP;
END $$
DELIMITER $$

CALL EmployeebyDepartment('Sales');









