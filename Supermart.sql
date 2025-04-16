create database vansh;
use vansh;

CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY,
    SupplierName VARCHAR(100),
    ContactPerson VARCHAR(100),
    Phone VARCHAR(15),
    Email VARCHAR(100)
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Brand VARCHAR(50),
    Price DECIMAL(10,2),
    StockQuantity INT,
    SupplierID INT,
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID)
);

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FullName VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    Address TEXT
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10,2),
    PaymentMethod VARCHAR(50),
    Status VARCHAR(50),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    UnitPrice DECIMAL(10,2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FullName VARCHAR(100),
    Position VARCHAR(50),
    Phone VARCHAR(15),
    Email VARCHAR(100)
);

-- Insert Data into Suppliers

INSERT INTO Suppliers VALUES
(101, 'Amul Distributors', 'Rajesh Patel', '9876001100', 'amul@distrib.com'),
(102, 'Grocers India', 'Suman Verma', '9823456712', 'grocers@india.com'),
(103, 'Hygiene Plus', 'Anil Mehra', '9900887766', 'hygieneplus@gmail.com'),
(104, 'Sweet Treats', 'Neha Jain', '9812345670', 'sweettreats@yahoo.com'),
(105, 'Bharat Retail', 'Sunil Singh', '9815566778', 'bharatretail@gmail.com'),
(106, 'D-Mart Wholesale', 'Reema Roy', '9798123456', 'dmart@wholesale.com'),
(107, 'Organic Fresh', 'Ajay Khurana', '9888011223', 'organic@fresh.com'),
(108, 'Daily Needs Pvt.', 'Kamal Bhatt', '9812349823', 'needs@daily.com');

-- Insert Data into Products

INSERT INTO Products VALUES
(1, 'Milk 1L', 'Dairy', 'Amul', 55.00, 120, 101),
(2, 'Wheat Flour 5kg', 'Grocery', 'Aashirvaad', 250.00, 80, 102),
(3, 'Hand Wash 250ml', 'Personal Care', 'Dettol', 75.00, 60, 103),
(4, 'Basmati Rice 1kg', 'Grocery', 'India Gate', 110.00, 50, 102),
(5, 'Chocolate Bar', 'Snacks', 'Dairy Milk', 40.00, 200, 104),
(6, 'Toothpaste 150g', 'Personal Care', 'Colgate', 90.00, 90, 103),
(7, 'Butter 500g', 'Dairy', 'Amul', 230.00, 30, 101),
(8, 'Cooking Oil 1L', 'Grocery', 'Fortune', 180.00, 70, 102);

-- Insert Data into Customers

INSERT INTO Customers VALUES
(201, 'Riya Sharma', 'riya@gmail.com', '9876543210', 'Chandigarh, Sector 35'),
(202, 'Aryan Kapoor', 'aryan@yahoo.com', '9988776655', 'Delhi, Rohini'),
(203, 'Meena Kumari', 'meena@outlook.com', '9123456780', 'Jaipur, Vaishali Nagar'),
(204, 'Rohit Verma', 'rohitv@gmail.com', '9001122334', 'Mumbai, Andheri'),
(205, 'Pooja Joshi', 'pooja_j@gmail.com', '9856231470', 'Pune, Kothrud'),
(206, 'Tanmay Singh', 'tanmay@gmail.com', '9834567821', 'Lucknow, Gomti Nagar'),
(207, 'Sneha Batra', 'sneha_batra@gmail.com', '9723456712', 'Bangalore, Indiranagar'),
(208, 'Aman Sethi', 'aman.sethi@yahoo.com', '9112233445', 'Hyderabad, Gachibowli');

-- Insert Data into Orders

INSERT INTO Orders VALUES
(301, 201, '2025-04-01', 305.00, 'UPI', 'Delivered'),
(302, 202, '2025-04-02', 110.00, 'Card', 'Delivered'),
(303, 204, '2025-04-03', 90.00, 'Cash', 'Pending'),
(304, 203, '2025-04-03', 230.00, 'UPI', 'Delivered'),
(305, 205, '2025-04-04', 250.00, 'Card', 'Delivered'),
(306, 206, '2025-04-04', 125.00, 'Cash', 'Pending'),
(307, 207, '2025-04-05', 180.00, 'UPI', 'Delivered'),
(308, 208, '2025-04-05', 55.00, 'UPI', 'Delivered');

-- Insert Data into OrderDetails

INSERT INTO OrderDetails VALUES
(401, 301, 1, 2, 55.00),
(402, 301, 5, 2, 40.00),
(403, 302, 4, 1, 110.00),
(404, 303, 6, 1, 90.00),
(405, 304, 7, 1, 230.00),
(406, 305, 2, 1, 250.00),
(407, 306, 3, 1, 75.00),
(408, 306, 5, 1, 50.00);

-- Insert Data into Employees

INSERT INTO Employees VALUES
(501, 'Rahul Mehta', 'Manager', '9812345678', 'rahul@supermart.com'),
(502, 'Kiran Sharma', 'Cashier', '9823456789', 'kiran@supermart.com'),
(503, 'Deepak Malhotra', 'Inventory Head', '9834567890', 'deepak@supermart.com'),
(504, 'Aarti Chawla', 'Cashier', '9845678901', 'aarti@supermart.com'),
(505, 'Mohit Arora', 'Security', '9856789012', 'mohit@supermart.com'),
(506, 'Preeti Yadav', 'Sales Exec', '9867890123', 'preeti@supermart.com'),
(507, 'Nikhil Bansal', 'Stock Clerk', '9878901234', 'nikhil@supermart.com'),
(508, 'Sneha Taneja', 'Customer Care', '9889012345', 'sneha@supermart.com');

SELECT * FROM Products
WHERE Price > 100;

SELECT Orders.OrderID, Customers.FullName, Orders.OrderDate, Orders.TotalAmount
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

SELECT od.OrderID, p.ProductName, od.Quantity, od.UnitPrice
FROM OrderDetails od
JOIN Products p ON od.ProductID = p.ProductID
WHERE od.OrderID = 301;

SELECT COUNT(*) AS DeliveredOrders
FROM Orders
WHERE Status = 'Delivered';


SELECT SUM(TotalAmount) AS TotalSales
FROM Orders;

SELECT p.ProductName, s.SupplierName
FROM Products p
JOIN Suppliers s ON p.SupplierID = s.SupplierID
WHERE s.SupplierName = 'Grocers India';

SELECT * FROM Employees
WHERE Position = 'Cashier';

SELECT Category, COUNT(*) AS ProductCount
FROM Products
GROUP BY Category;

SELECT DISTINCT c.FullName, o.OrderID
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.OrderDate = '2025-04-03';

SELECT c.FullName, COUNT(o.OrderID) AS OrderCount
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.FullName;

SELECT * FROM Products
ORDER BY Price DESC
LIMIT 1;

SELECT * FROM Products
ORDER BY Price DESC;

SELECT o.OrderID, c.FullName, o.OrderDate, o.TotalAmount
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE o.Status = 'Pending';
