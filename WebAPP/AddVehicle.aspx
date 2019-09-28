<%@ Page Title="Addvehicle" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddVehicle.aspx.cs" Inherits="WebAPP.AddVehicle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script src="js/addvehicle.js"></script>
    <div class="border-bottom-info" style="margin-bottom: 4%; padding-bottom: 2%;">
        Add Vehicle 
        <span style="float:right;">
            <a href="vehicleCrud" class="btn btn-primary btn-icon-split">
                    <span class="icon text-white-50">
                      <i class="fas fa-arrow-left"></i>
                    </span>
                    <span class="text">Go Back</span>
            </a>
        </span>
    </div>
    <asp:HiddenField runat="server" ID="hidId" />
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputEmail4">Vehicle Number</label>
            <asp:TextBox runat="server" ID="VehicleNumber" class="form-control" placeholder="Vehicle Registration Number" ClientIDMode="Static"></asp:TextBox>
        </div>
        <div class="form-group col-md-6">
            <label for="inputPassword4">Branch</label>
            <asp:DropDownList runat="server" ID="ddlBranch" class="form-control" ClientIDMode="Static">
            </asp:DropDownList>
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputAddress">Vehicle Type</label>
            <asp:DropDownList runat="server" ID="ddlVehicleType" class="form-control" ClientIDMode="Static">
                <asp:ListItem Value="" Text="--select--"></asp:ListItem>
                <asp:ListItem Value="Two Wheeler" Text="Two Wheeler"></asp:ListItem>
                <asp:ListItem Value="Four Wheeler" Text="Four Wheeler"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="form-group col-md-6">
            <label for="inputPassword4">Model & Year</label>
            <asp:TextBox runat="server" ID="txtModelnYear" placeholder="Model - Year" class="form-control" ClientIDMode="Static">
            </asp:TextBox>
        </div>
    </div>
     <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputPassword4">Price Per Day</label>
            <asp:TextBox runat="server" ID="txtPriceperDay" placeholder="Price/Day" class="form-control" ClientIDMode="Static">
            </asp:TextBox>
        </div>
        <div class="form-group col-md-6">
            <label for="inputPassword4">Insurance Expiry Date</label>
            <asp:TextBox runat="server" ID="txtInsuranceExpiryDate" placeholder="Insurance Expiry Date" class="form-control" ClientIDMode="Static">
            </asp:TextBox>
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputEmail4">Last Serviced Date</label>
            <asp:TextBox runat="server" ID="txtLastServicedDate" class="form-control" placeholder="Service Date" ClientIDMode="Static"></asp:TextBox>
        </div>
        <div class="form-group col-md-6">
            <label for="inputPassword4">Service Due Date</label>
            <asp:TextBox runat="server" ID="txtServiceDueDate" class="form-control" placeholder="Due Date" ClientIDMode="Static">
            </asp:TextBox>
        </div>
    </div>   
    <div class="form-group">
        <div class="form-check">
            <input class="form-check-input" type="checkbox" id="gridCheck">
            <label class="form-check-label" for="gridCheck">
                Agree <a href="#">Terms & Conditions</a>
            </label>
        </div>
    </div>
    <asp:Button runat="server" ID="btnSubmit" Text="Submit" class="btn btn-primary"  OnClick="btnSubmit_Click" OnClientClick="return addvehiclevalidation()"/>    
</asp:Content>
