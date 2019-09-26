<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="WebAPP.Payment" %>
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
           <%-- <asp:RadioButton ID="rbcredit" runat="server"  onchange="valuechanged()" />--%>
            <input type="radio" name="payment" id="rdcredit" />
            <%-- <asp:TextBox runat="server" ID="BookingFromDate" class="form-control" placeholder="BookigDate" TextMode="Date" ClientIDMode="Static"></asp:TextBox>--%>
             <label for="inputFromDate">Credit card</label>
            

        </div>
        </div>

    <div class="form-row">
        <div class="form-group col-md-6">
               <%--  <asp:RadioButton ID="rbdebit" runat="server"  onchange="valuechanged()"/>--%>
              <input type="radio" name="payment" id="rddebit" />
            <%-- <asp:TextBox runat="server" ID="BookingFromDate" class="form-control" placeholder="BookigDate" TextMode="Date" ClientIDMode="Static"></asp:TextBox>--%>
             <label for="inputFromDate">Debit card</label>
       
        </div>
        </div>
    <div class="form-row">
        <div class="form-group col-md-6">
           <%--  <asp:RadioButton ID="rbupi" runat="server"  onchange="valuechanged()"/>--%>
              <input type="radio" name="payment" id="rdupi" />
            <%-- <asp:TextBox runat="server" ID="BookingFromDate" class="form-control" placeholder="BookigDate" TextMode="Date" ClientIDMode="Static"></asp:TextBox>--%>
             <label for="inputFromDate">UPI</label>
           
        </div>
        </div>
   
    <asp:Button runat="server" ID="btnsubmit" Text="Pay" class="btn btn-primary"  OnClick="btnsubmit_Click" /> 
    
</asp:Content>
