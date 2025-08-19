<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="HR.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main class="container mt-5 mb-5">
        <div class="text-center mb-5">
            <h2 class="fw-bold text-primary">About HRFusion</h2>
            <p class="text-muted">Learn more about our application and why it is built for you.</p>
        </div>

        <div class="row text-center">
            <!-- Mission Section -->
            <div class="col-md-4 mb-4">
                <div class="card shadow-sm border-0 p-4 h-100">
                    <i class="fas fa-bullseye fa-3x text-primary mb-3"></i>
                    <h4 class="fw-bold">Our Mission</h4>
                    <p class="text-muted">
                        To simplify HR management by providing modern tools 
                        for managing employees, departments, attendance, and leaves.
                    </p>
                </div>
            </div>

            <!-- Vision Section -->
            <div class="col-md-4 mb-4">
                <div class="card shadow-sm border-0 p-4 h-100">
                    <i class="fas fa-lightbulb fa-3x text-warning mb-3"></i>
                    <h4 class="fw-bold">Our Vision</h4>
                    <p class="text-muted">
                        To empower organizations with smarter HR solutions 
                        that improve efficiency and save time.
                    </p>
                </div>
            </div>

            <!-- Values Section -->
            <div class="col-md-4 mb-4">
                <div class="card shadow-sm border-0 p-4 h-100">
                    <i class="fas fa-handshake fa-3x text-success mb-3"></i>
                    <h4 class="fw-bold">Our Values</h4>
                    <p class="text-muted">
                        Transparency, reliability, and user-friendly design are 
                        at the core of everything we build.
                    </p>
                </div>
            </div>
        </div>

        <div class="text-center mt-5">
            <h5 class="fw-bold text-dark">Why Choose HRFusion?</h5>
            <p class="text-muted w-75 mx-auto">
                HRFusion is designed to make employee and company management simple, 
                intuitive, and effective. Our platform grows with your organization 
                and ensures your HR data is safe and accessible.
            </p>
        </div>
    </main>
</asp:Content>
