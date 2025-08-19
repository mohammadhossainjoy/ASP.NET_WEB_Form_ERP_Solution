# HRFusion - ASP.NET Web Form ERP Project

## Introduction
HRFusion is a simple Human Resource Management System (HRMS) built with **ASP.NET Web Forms**.  
This project was developed for academic learning to practice how to design a structured application using **3-tier architecture** (UI, BAL, DAL).  
It manages **Employee, Company, Department, Attendance, and Leave information** in one place.

---

## Features

### Employee Module
- Add, Edit, Delete, and View employee details
- Includes job title, department, email, phone, address, and join date
- Connected with BAL (Business Access Layer) and DAL (Data Access Layer)

### Company Module  
- Add company details such as name, location, and contact email  
- Submitted data is displayed instantly beside the form for reference  

### Department Module  
- Add and manage department details with manager name and location  
- Submitted data is shown alongside the form dynamically  

### Attendance Module  
- Record check-in and check-out times for employees  
- Submitted records are displayed instantly beside the form  

### Leave Module  
- Add and manage employee leave requests  
- Submitted leave data is displayed alongside the form  
---

## Technologies Used
- **ASP.NET Web Forms (C#)**
- **SQL Server** (Database)
- **HTML, CSS, Bootstrap** for design
- **Visual Studio 2022** as IDE
- **3-Tier Architecture** (UI, BAL, DAL)

---

## Project Structure

HRFusion Project
│
├── UI              # User Interface (ASP.NET pages)
├── BAL             # Business Access Layer
├── DAL             # Data Access Layer
├── Content         # CSS and styling
├── Scripts         # JavaScript and Bootstrap
├── Web.config      # Configuration file
└── ERP.sln         # Visual Studio Solution



---

## How to Run
1. Clone or download the repository.  
2. Open the solution file (`ERP.sln`) in **Visual Studio 2022**.  
3. Create a database in **SQL Server** and update the **connection string** in `Web.config`.  
4. Build the project and run it using **IIS Express**.  

---

## Future Improvements
- Payroll management system  
- Detailed reports  
- Role-based authentication and login system  

---

## Author
**Mohammad Hossain Joy**  
📧 Email: joyh2755@gmail.com  

---

✅ This project is for **academic purposes** and demonstrates a basic HR management system using ASP.NET Web Forms.
