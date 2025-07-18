﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LeaveEntry.aspx.cs" Inherits="HR.UI.LeaveEntry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="text-center mt-4 mb-4">
        <h2 class="text-primary fw-bold">Leave Entry</h2>
    </div>

    <div class="container">
        <div class="row align-items-start">

            <!-- 🔹 Left Column: Form -->
            <div class="col-md-6">
                <div class="card p-4 shadow-sm">
                    <h5 class="text-primary fw-bold mb-4">Leave Information</h5>

                    <div class="form-group mb-3">
                        <label for="txtEmployeeName">Employee Name:</label>
                        <asp:TextBox ID="txtEmployeeName" runat="server" CssClass="form-control" />
                    </div>

                    <div class="form-group mb-3">
                        <label for="ddlLeaveType">Leave Type:</label>
                        <asp:DropDownList ID="ddlLeaveType" runat="server" CssClass="form-control">
                            <asp:ListItem Text="Select" Value="" />
                            <asp:ListItem Text="Sick Leave" />
                            <asp:ListItem Text="Casual Leave" />
                            <asp:ListItem Text="Annual Leave" />
                        </asp:DropDownList>
                    </div>

                    <div class="form-group mb-3">
                        <label for="txtFromDate">From Date:</label>
                        <asp:TextBox ID="txtFromDate" runat="server" TextMode="Date" CssClass="form-control" />
                    </div>

                    <div class="form-group mb-3">
                        <label for="txtToDate">To Date:</label>
                        <asp:TextBox ID="txtToDate" runat="server" TextMode="Date" CssClass="form-control" />
                    </div>

                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnSubmit_Click" />
                </div>
            </div>

            <!-- 🔹 Right Column: Submitted Info -->
            <div class="col-md-6">
                <div class="card p-4 bg-light shadow-sm">
                    <h5 class="text-primary fw-bold mb-4">Submitted Information</h5>
                    <asp:Panel ID="PanelSubmitted" runat="server" Visible="false">
                        <p><strong>Employee Name:</strong> <asp:Label ID="lblEmployeeName" runat="server" /></p>
                        <p><strong>Leave Type:</strong> <asp:Label ID="lblLeaveType" runat="server" /></p>
                        <p><strong>From Date:</strong> <asp:Label ID="lblFromDate" runat="server" /></p>
                        <p><strong>To Date:</strong> <asp:Label ID="lblToDate" runat="server" /></p>
                    </asp:Panel>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
