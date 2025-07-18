<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DepartmentSetup.aspx.cs" Inherits="HR.UI.DepartmentSetup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="text-center mt-4 mb-4">
        <h2 class="text-primary fw-bold">Department Setup</h2>
    </div>

    <div class="container">
        <div class="row align-items-start">

            <!-- 🔹 Left Column: Input Form -->
            <div class="col-md-6">
                <div class="card p-4 shadow-sm">
                    <h5 class="text-primary fw-bold mb-4">Department Information</h5>

                    <div class="form-group mb-3">
                        <label for="txtDeptName">Department Name:</label>
                        <asp:TextBox ID="txtDeptName" runat="server" CssClass="form-control" />
                    </div>

                    <div class="form-group mb-3">
                        <label for="txtManager">Manager Name:</label>
                        <asp:TextBox ID="txtManager" runat="server" CssClass="form-control" />
                    </div>

                    <div class="form-group mb-3">
                        <label for="txtLocation">Location:</label>
                        <asp:TextBox ID="txtLocation" runat="server" CssClass="form-control" />
                    </div>

                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnSubmit_Click" />
                </div>
            </div>

            <!-- 🔹 Right Column: Submitted Info -->
            <div class="col-md-6">
                <div class="card p-4 bg-light shadow-sm">
                    <h5 class="text-primary fw-bold mb-4">Submitted Information</h5>
                    <asp:Panel ID="PanelSubmitted" runat="server" Visible="false">
                        <p><strong>Department Name:</strong> <asp:Label ID="lblDeptName" runat="server" /></p>
                        <p><strong>Manager Name:</strong> <asp:Label ID="lblManager" runat="server" /></p>
                        <p><strong>Location:</strong> <asp:Label ID="lblLocation" runat="server" /></p>
                    </asp:Panel>
                </div>
            </div>

        </div>
    </div>

</asp:Content>
