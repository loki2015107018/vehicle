<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VehicleBooking.aspx.cs" Inherits="WebAPP.VehicleBooking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script src="js/booking%20validation.js"></script>
    <script>
        function amount() {
            var a = Number(document.getElementById("totalnoofdays").value);
            var b = Number(document.getElementById("hidAmount").value);
            var res = a * b;
            
            Number(document.getElementById('Amount').value=res);
            
        }
    </script>
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
    <asp:HiddenField runat="server" ID="hidId"  />
    <asp:HiddenField runat="server" ID="hidAmount"/>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputFromDate">From Date</label>
            <asp:TextBox runat="server" ID="BookingFromDate" class="form-control" placeholder="BookingDate" TextMode="Date" ng-model="date1" ClientIDMode="Static" ></asp:TextBox>
        </div>
        </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputToDate">To Date</label>
            <asp:TextBox runat="server" ID="BookingToDate" class="form-control" placeholder="BookingDate" TextMode="Date" ng-model="date2" ClientIDMode="Static" onchange="amount()"></asp:TextBox>
           
        </div>
        </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputTotaldate">Total number of Days</label>
            <asp:TextBox runat="server" ID="totalnoofdays" Text='{{(date2-date1)/ (1000 * 3600 * 24)}}' class="form-control" ClientIDMode="Static" ReadOnly="true"></asp:TextBox>
        </div>
        </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputAmount">Amount</label>
            <asp:TextBox runat="server" ID="Amount" class="form-control" placeholder="Amount" ClientIDMode="Static"></asp:TextBox>
        </div>
        </div>
    <asp:Button runat="server" ID="btnsubmit" Text="Pay" class="btn btn-primary"  OnClick="btnsubmit_Click"/> 
</asp:Content>
