<%@ Page Title="Payment" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="WebAPP.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="border-bottom-info" style="margin-bottom: 4%; padding-bottom: 2%;">
        Booking 
        <span style="float:right;">
            <a href="UserSearch" class="btn btn-primary btn-icon-split">
                    <span class="icon text-white-50">
                      <i class="fas fa-arrow-left"></i>
                    </span>
                    <span class="text">Go Back</span>
            </a>
        </span>
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <asp:RadioButtonList runat="server" ID="radiobutton" >
                <asp:ListItem Value="Credit Card">Credit Card</asp:ListItem>
                <asp:ListItem Value ="debit Card">Debit card </asp:ListItem>
                <asp:ListItem Value="UPI">UPI</asp:ListItem>
                <asp:ListItem Value="COD">Cash On Delivery</asp:ListItem>
                <asp:ListItem Value="PhonePay">PhonePay</asp:ListItem>
            </asp:RadioButtonList>
            
         </div>
        </div>
   
    <asp:Button runat="server" ID="btnsubmit" Text="Pay" class="btn btn-primary"  OnClick="btnsubmit_Click" /> 
    
</asp:Content>
