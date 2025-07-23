<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EmployeeInformation.aspx.cs" Inherits="HR.UI.EmployeeInformation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="text-center mt-4 mb-4" BackColor="#00CCFF">
        <h2 class="text-primary fw-bold">Employee Information</h2>
    </div>

    <div class="container">
        <div class="row align-items-start">

            <!-- 🔹 Left Column: Input Form -->
           <div class="col-md-6 offset-md-3">
    <div class="card p-4 shadow-sm">
        <!-- Heading Center -->
        <h4 class="text-center text-primary fw-bold mb-4">Employee Information</h4>

        <!-- Form Starts -->
        <div class="form-group row mb-3">
            <label for="txtName" class="col-sm-4 col-form-label">Full Name:</label>
            <div class="col-sm-8">
                <asp:TextBox ID="txtName" runat="server" CssClass="form-control" />
            </div>
        </div>

        <div class="form-group row mb-3">
            <label for="txtJobTitle" class="col-sm-4 col-form-label">Job Title:</label>
            <div class="col-sm-8">
                <asp:TextBox ID="txtJobTitle" runat="server" CssClass="form-control" />
            </div>
        </div>

        <div class="form-group row mb-3">
            <label for="ddlDepartment" class="col-sm-4 col-form-label">Department:</label>
            <div class="col-sm-8">
                <asp:DropDownList ID="ddlDepartment" runat="server" CssClass="form-control">
                    <asp:ListItem Text="Select department" Value="" />
                    <asp:ListItem Text="HR" />
                    <asp:ListItem Text="IT" />
                    <asp:ListItem Text="Finance" />
                </asp:DropDownList>
            </div>
        </div>

        <div class="form-group row mb-3">
            <label for="txtDOB" class="col-sm-4 col-form-label">Date of Birth:</label>
            <div class="col-sm-8">
                <asp:TextBox ID="txtDOB" runat="server" TextMode="Date" CssClass="form-control" />
            </div>
        </div>

        <div class="form-group row mb-3">
            <label for="txtEmail" class="col-sm-4 col-form-label">Email:</label>
            <div class="col-sm-8">
                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="form-control" />
            </div>
        </div>

        <div class="form-group row mb-3">
            <label for="txtPhone" class="col-sm-4 col-form-label">Phone:</label>
            <div class="col-sm-8">
                <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" />
            </div>
        </div>

        <div class="form-group row mb-3">
            <label for="txtAddress" class="col-sm-4 col-form-label">Address:</label>
            <div class="col-sm-8">
                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" CssClass="form-control" />
            </div>
        </div>

        <div class="form-group row mb-4">
            <label for="txtJoinDate" class="col-sm-4 col-form-label">Join Date:</label>
            <div class="col-sm-8">
                <asp:TextBox ID="txtJoinDate" runat="server" TextMode="Date" CssClass="form-control" />
            </div>
        </div>

        <!-- Buttons Centered -->
        <div class="text-center">
            <asp:Button ID="btnSubmit" runat="server" Text="Add" CssClass="btn btn-primary me-2" OnClick="btnAdd_Click" />
            <asp:Button ID="btnShow" runat="server" Text="Show" CssClass="btn btn-secondary" OnClick="btnshow_Click" />
        </div>

    </div>
</div>

            
            <!-- 🔹 Right Column: Submitted Info 
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
             -->
        </div>
    
    </div>
   <!-- 🔹 GridView Table with Margin Top -->
    <div class="container mt-5">
        <div class="row">
            <div class="col-12">
                <asp:GridView ID="gvEmployee" runat="server"
                    CssClass="table table-bordered table-striped w-100 text-center mt-4"
                    AutoGenerateColumns="true">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
