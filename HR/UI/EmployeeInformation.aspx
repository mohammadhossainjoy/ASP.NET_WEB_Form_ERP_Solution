<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EmployeeInformation.aspx.cs" Inherits="HR.UI.EmployeeInformation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="text-center mt-4 mb-4" BackColor="#00CCFF">
        <h2 class="text-primary fw-bold">Employee Information</h2>
    </div>

    <div class="container">
        <div class="row align-items-start">

            <!-- 🔹 Left Column: Input Form -->
            <div class="col-md-6">
                <div class="card p-4 shadow-sm">
                    <h5 class="text-primary fw-bold mb-4">Employee Information</h5>

                    <div class="form-group mb-3">
                        <label for="txtName">Full Name:</label>
                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control" />
                    </div>

                    <div class="form-group mb-3">
                        <label for="txtJobTitle">Job Title:</label>
                        <asp:TextBox ID="txtJobTitle" runat="server" CssClass="form-control" />
                    </div>

                    <div class="form-group mb-3">
                        <label for="ddlDepartment">Department:</label>
                        <asp:DropDownList ID="ddlDepartment" runat="server" CssClass="form-control">
                            <asp:ListItem Text="Select department" Value="" />
                            <asp:ListItem Text="HR" />
                            <asp:ListItem Text="IT" />
                            <asp:ListItem Text="Finance" />
                        </asp:DropDownList>
                    </div>

                    <div class="form-group mb-3">
                        <label for="txtDOB">Date of Birth:</label>
                        <asp:TextBox ID="txtDOB" runat="server" TextMode="Date" CssClass="form-control" />
                    </div>

                    <div class="form-group mb-3">
                        <label for="txtEmail">Email:</label>
                        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="form-control" />
                    </div>

                    <div class="form-group mb-3">
                        <label for="txtPhone">Phone:</label>
                        <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" />
                    </div>

                    <div class="form-group mb-3">
                        <label for="txtAddress">Address:</label>
                        <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" CssClass="form-control" />
                    </div>

                    <div class="form-group mb-4">
                        <label for="txtJoinDate">Join Date:</label>
                        <asp:TextBox ID="txtJoinDate" runat="server" TextMode="Date" CssClass="form-control" />
                    </div>

                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnSubmit_Click" />
                </div>
            </div>

            <!-- 🔹 Right Column: Submitted Info -->
            <div class="col-md-6">
                <div class="card p-4 bg-light shadow-sm">
                    <h5 class="text-primary fw-bold mb-4">Submitted Information</h5>
                    <asp:Panel ID="PanelSubmitted" runat="server" Visible="false">
                        <p><strong>Name:</strong> <asp:Label ID="lblName" runat="server" /></p>
                        <p><strong>Job Title:</strong> <asp:Label ID="lblJobTitle" runat="server" /></p>
                        <p><strong>Department:</strong> <asp:Label ID="lblDept" runat="server" /></p>
                        <p><strong>Date of Birth:</strong> <asp:Label ID="lblDOB" runat="server" /></p>
                        <p><strong>Email:</strong> <asp:Label ID="lblEmail" runat="server" /></p>
                        <p><strong>Phone:</strong> <asp:Label ID="lblPhone" runat="server" /></p>
                        <p><strong>Address:</strong> <asp:Label ID="lblAddress" runat="server" /></p>
                        <p><strong>Join Date:</strong> <asp:Label ID="lblJoinDate" runat="server" /></p>
                    </asp:Panel>
                </div>
            </div>

        </div>
    </div>

</asp:Content>
