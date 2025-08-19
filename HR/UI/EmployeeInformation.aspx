<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EmployeeInformation.aspx.cs" Inherits="HR.UI.EmployeeInformation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="text-center mt-4 mb-4">
        <h2 class="text-primary fw-bold">Employee Information</h2>
    </div>

    <div class="container">
        <div class="row align-items-start">
            <div class="col-md-6 offset-md-3">
                <div class="card p-4 shadow-sm">
                    <h4 class="text-center text-primary fw-bold mb-4">Add Employee</h4>

                    <!-- Form Fields -->
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

                    <!-- Buttons -->
                    <div class="text-center">
                        <asp:Button ID="btnSubmit" runat="server" Text="Add" CssClass="btn btn-primary me-2" OnClick="btnAdd_Click" />
                        <asp:Button ID="btnShow" runat="server" Text="Show" CssClass="btn btn-secondary" OnClick="btnshow_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- GridView -->
    <div class="container mt-5">
        <div class="row">
            <div class="col-12">
                <asp:GridView ID="gvEmployee" runat="server"
                    AutoGenerateColumns="False"
                    DataKeyNames="Id"
                    OnRowEditing="gvEmployee_RowEditing"
                    OnRowUpdating="gvEmployee_RowUpdating"
                    OnRowCancelingEdit="gvEmployee_RowCancelingEdit"
                    OnRowDeleting="gvEmployee_RowDeleting"
                    CssClass="table table-bordered text-center">

                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="ID" ReadOnly="true" />

                        <asp:TemplateField HeaderText="Name">
                            <ItemTemplate><%# Eval("Name") %></ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtEditName" runat="server" CssClass="form-control" Text='<%# Bind("Name") %>' />
                            </EditItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Job Title">
                            <ItemTemplate><%# Eval("JobTitle") %></ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtEditJobTitle" runat="server" CssClass="form-control" Text='<%# Bind("JobTitle") %>' />
                            </EditItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Department">
                            <ItemTemplate><%# Eval("Department") %></ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtEditDept" runat="server" CssClass="form-control" Text='<%# Bind("Department") %>' />
                            </EditItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="DOB">
                            <ItemTemplate><%# Eval("DateOfBirth") %></ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtEditDOB" runat="server" CssClass="form-control" Text='<%# Bind("DateOfBirth") %>' />
                            </EditItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Email">
                            <ItemTemplate><%# Eval("Email") %></ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtEditEmail" runat="server" CssClass="form-control" Text='<%# Bind("Email") %>' />
                            </EditItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Phone">
                            <ItemTemplate><%# Eval("Phone") %></ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtEditPhone" runat="server" CssClass="form-control" Text='<%# Bind("Phone") %>' />
                            </EditItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Address">
                            <ItemTemplate><%# Eval("Address") %></ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtEditAddress" runat="server" CssClass="form-control" Text='<%# Bind("Address") %>' />
                            </EditItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Join Date">
                            <ItemTemplate><%# Eval("JoinDate") %></ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtEditJoinDate" runat="server" CssClass="form-control" Text='<%# Bind("JoinDate") %>' />
                            </EditItemTemplate>
                        </asp:TemplateField>

                        <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
