<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AttendanceEntry.aspx.cs" Inherits="HR.UI.AttendanceEntry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="text-center mt-4 mb-4">
        <h2 class="text-primary fw-bold">Attendance Entry</h2>
    </div>

    <div class="container">
        <div class="row align-items-start">

            <!-- 🔹 Left Column: Input Form -->
            <div class="col-md-6">
                <div class="card p-4 shadow-sm">
                    <h5 class="text-primary fw-bold mb-4">Attendance Information</h5>

                    <div class="form-group mb-3">
                        <label for="txtEmployeeName">Employee Name:</label>
                        <asp:TextBox ID="txtEmployeeName" runat="server" CssClass="form-control" />
                    </div>

                    <div class="form-group mb-3">
                        <label for="txtDate">Date:</label>
                        <asp:TextBox ID="txtDate" runat="server" TextMode="Date" CssClass="form-control" />
                    </div>

                    <div class="form-group mb-3">
                        <label for="txtInTime">Check-in Time:</label>
                        <asp:TextBox ID="txtInTime" runat="server" CssClass="form-control" />
                    </div>

                    <div class="form-group mb-3">
                        <label for="txtOutTime">Check-out Time:</label>
                        <asp:TextBox ID="txtOutTime" runat="server" CssClass="form-control" />
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
                        <p><strong>Date:</strong> <asp:Label ID="lblDate" runat="server" /></p>
                        <p><strong>Check-in Time:</strong> <asp:Label ID="lblInTime" runat="server" /></p>
                        <p><strong>Check-out Time:</strong> <asp:Label ID="lblOutTime" runat="server" /></p>
                    </asp:Panel>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
