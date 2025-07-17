<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CompanySetup.aspx.cs" Inherits="HR.UI.CompanySetup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="text-center mt-4 mb-4">
        <h2 class="text-primary fw-bold">Company Information</h2>
    </div>

    <div class="container">
        <div class="row align-items-start">

            <!-- 🔹 Left Column: Input Form -->
            <div class="col-md-6">
                <div class="card p-4 shadow-sm">
                    <h5 class="text-primary fw-bold mb-4">Company Information</h5>

                    <div class="form-group mb-3">
                        <label for="txtCompanyName">Company Name:</label>
                        <asp:TextBox ID="txtCompanyName" runat="server" CssClass="form-control" />
                    </div>

                    <div class="form-group mb-3">
                        <label for="txtLocation">Location:</label>
                        <asp:TextBox ID="txtLocation" runat="server" CssClass="form-control" />
                    </div>

                    <div class="form-group mb-3">
                        <label for="txtEstablished">Established Date:</label>
                        <asp:TextBox ID="txtEstablished" runat="server" TextMode="Date" CssClass="form-control" />
                    </div>

                    <div class="form-group mb-4">
                        <label for="txtContact">Contact Email:</label>
                        <asp:TextBox ID="txtContact" runat="server" TextMode="Email" CssClass="form-control" />
                    </div>

                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnSubmit_Click" />
                </div>
            </div>

            <!-- 🔹 Right Column: Submitted Info -->
            <div class="col-md-6">
                <div class="card p-4 bg-light shadow-sm">
                    <h5 class="text-primary fw-bold mb-4">Submitted Information</h5>
                    <asp:Panel ID="PanelSubmitted" runat="server" Visible="false">
                        <p><strong>Company Name:</strong> <asp:Label ID="lblCompanyName" runat="server" /></p>
                        <p><strong>Location:</strong> <asp:Label ID="lblLocation" runat="server" /></p>
                        <p><strong>Established Date:</strong> <asp:Label ID="lblEstablished" runat="server" /></p>
                        <p><strong>Contact Email:</strong> <asp:Label ID="lblContact" runat="server" /></p>
                    </asp:Panel>
                </div>
            </div>

        </div>
    </div>

</asp:Content>
