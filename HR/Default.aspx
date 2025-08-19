<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HR._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <!-- Welcome Section -->
        <div class="text-center my-5">
            <h1 class="fw-bold text-primary">Welcome to HRFusion</h1>
            <p class="lead text-muted">Manage Employees, Departments, Attendance and Leave Information easily.</p>
        </div>

        <!-- Feature Cards -->
        <div class="row g-4">
            <!-- Employee Tracking -->
            <div class="col-md-4 d-flex">
                <div class="card h-100 text-center shadow-sm flex-fill">
                    <div class="card-body d-flex flex-column">
                        <i class="fas fa-user fa-3x mb-3 text-primary"></i>
                        <h3 class="card-title fw-bold">Employee Tracking</h3>
                        <p class="card-text text-muted flex-grow-1">
                            Keep records of employee details, job titles, and department information.
                        </p>
                        <div class="mt-auto">
                            <a class="btn btn-primary" runat="server" href="~/UI/EmployeeInformation.aspx">Go to Employee</a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Department & Company -->
            <div class="col-md-4 d-flex">
                <div class="card h-100 text-center shadow-sm flex-fill">
                    <div class="card-body d-flex flex-column">
                        <i class="fas fa-building fa-3x mb-3 text-success"></i>
                        <h3 class="card-title fw-bold">Department & Company</h3>
                        <p class="card-text text-muted flex-grow-1">
                            Setup your company and departments for better HR management.
                        </p>
                        <div class="mt-auto">
                            <a class="btn btn-success mb-2" runat="server" href="~/UI/CompanySetup.aspx">Go to Company</a>
                            <a class="btn btn-info" runat="server" href="~/UI/DepartmentSetup.aspx">Go to Department</a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Attendance & Leave -->
            <div class="col-md-4 d-flex">
                <div class="card h-100 text-center shadow-sm flex-fill">
                    <div class="card-body d-flex flex-column">
                        <i class="fas fa-calendar-check fa-3x mb-3 text-danger"></i>
                        <h3 class="card-title fw-bold">Attendance & Leave Tracking</h3>
                        <p class="card-text text-muted flex-grow-1">
                            Record attendance entries and manage employee leaves efficiently.
                        </p>
                        <div class="mt-auto">
                            <a class="btn btn-warning mb-2" runat="server" href="~/UI/AttendanceEntry.aspx">Go to Attendance</a>
                            <a class="btn btn-danger" runat="server" href="~/UI/LeaveEntry.aspx">Go to Leave</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Why Choose HRFusion Section -->
        <div class="text-center my-5">
            <h2 class="fw-bold text-dark">Why Choose HRFusion?</h2>
            <p class="text-muted">HRFusion is designed to simplify HR management by providing tools for managing employees, departments, attendance, and leave all in one place.</p>
        </div>

        <!-- Extra Info Boxes -->
        <div class="row text-center">
            <div class="col-md-4">
                <i class="fas fa-users fa-2x text-primary mb-2"></i>
                <h5 class="fw-bold">Employee Management</h5>
                <p class="text-muted">Easily manage employee details, positions, and roles.</p>
            </div>
            <div class="col-md-4">
                <i class="fas fa-chart-line fa-2x text-success mb-2"></i>
                <h5 class="fw-bold">Performance & Attendance</h5>
                <p class="text-muted">Track attendance and monitor employee performance records.</p>
            </div>
            <div class="col-md-4">
                <i class="fas fa-lock fa-2x text-danger mb-2"></i>
                <h5 class="fw-bold">Secure System</h5>
                <p class="text-muted">All employee data is stored safely with high security.</p>
            </div>
        </div>
    </main>

</asp:Content>
