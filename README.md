# Supermart Management System (DBMS Project)

This project is a Supermart Management System developed as part of a Database Management System (DBMS) course. It handles operations of a supermarket including product management, customer data, sales tracking, billing, stock updates, and employee management. The backend is built using MySQL.

## Table of Contents

- Overview  
- Features  
- Technologies Used  
- Database Design  
- ER Diagram  
- Installation & Usage  
- Sample Queries  
- Project Structure  
- Report  

## Overview

The Supermart Management System is designed to streamline supermarket operations by managing inventory, customers, staff, and sales. It performs CRUD operations on all modules using SQL and maintains relational integrity for accurate reporting and management.

## Features

- Add, update, and delete product details  
- Track stock levels and expiry dates  
- Record customer data and purchase history  
- Generate bills and manage transactions  
- Assign employees to roles and shifts  
- Execute sales and inventory reports using SQL queries  

## Technologies Used

- Database: MySQL  
- Language: SQL  
- Tools: MySQL Workbench, phpMyAdmin  
- Platform: Windows or Linux  

## Database Design

The system includes the following tables:

1. products – Contains product information including stock and pricing  
2. customers – Stores customer records and loyalty data  
3. sales – Tracks purchases, timestamps, and product quantity  
4. employees – Manages employee roles and shifts  
5. suppliers – Contains supplier details for product restocking  
6. billing – Stores invoice and payment details

All tables are normalized and connected via primary and foreign keys for efficient querying.

## ER Diagram

The ER Diagram outlines the relationships among entities like products, customers, sales, and employees. Refer to the ER_Diagram image provided in the project files.

## Installation & Usage

1. Clone or download the project folder.

2. Open MySQL Workbench or phpMyAdmin.

3. Import the following SQL files in order:  
   - Tables_Creation.sql  
   - Insert_Queries.sql  
   - Select_Queries.sql

4. Run the queries to perform and test various operations.

5. Check the Sample_Output_Screenshots folder for query results and outputs.

## Sample Queries

- Show top 5 selling products  
- Get total sales for a specific date range  
- Update stock after each purchase  
- List all loyal customers  
- Generate invoice by customer ID  

## Project Structure

Supermart-Management-System/  
├── ER_Diagram.png  
├── Table_Relations.png  
├── Tables_Creation.sql  
├── Insert_Queries.sql  
├── Select_Queries.sql  
├── Sample_Output_Screenshots/  
├── supermart_management_report.pdf  
└── README.md

## Report

The project report includes:  
- Introduction  
- Techniques and Tools Used  
- System Requirements  
- ER Diagram  
- Table Relations  
- Schema Details  
- SQL Queries with Output  
- Summary and Conclusion

Refer to supermart_management_report.pdf for full documentation.
