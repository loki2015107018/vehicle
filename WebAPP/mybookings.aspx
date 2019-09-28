<%@ Page Title="MyBookings" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="mybookings.aspx.cs" Inherits="WebAPP.VehicleOperations" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div style="float:right;margin-bottom:2%;">
            <a href="UserSearch" class="btn btn-success btn-icon-split">
                    <span class="icon text-white-50">
                      <i class="fas fa-plus"></i>
                    </span>
                    <span class="text">Book</span>
            </a>
        <br />
    </div>

    <asp:GridView runat="server" ID="gdvbookinglist" class="table table-responsive" OnRowCommand="gdvbookinglist_RowCommand" OnRowDeleting="gdvbookinglist_RowDeleting" AutoGenerateColumns="false">
        <Columns>
            <asp:TemplateField HeaderText="Id">
                <ItemTemplate>
                    <asp:Label runat="server" ID="lblId" Text='<%#Eval("VehicleId") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>         
            <asp:TemplateField HeaderText="BookingDate">
                <ItemTemplate>
                    <asp:Label runat="server" ID="lblBookingDate" Text='<%#Eval("BookingDate") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="BookedfromDate">
                <ItemTemplate>
                    <asp:Label runat="server" ID="lblBookedfromDate" Text='<%#Eval("BookedfromDate").ToString().Substring(0,10) %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="BookedToDate">
                <ItemTemplate>
                    <asp:Label runat="server" ID="lblBookedToDate" Text='<%#Eval("BookedToDate").ToString().Substring(0,10) %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="TotalNoDays">
                <ItemTemplate>
                    <asp:Label runat="server" ID="lblTotal" Text='<%#Eval("TotalNoOfDays") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>         
            <asp:TemplateField HeaderText="Amount">
                 <ItemTemplate>
                    <asp:Label runat="server" ID="Amount" Text='<%#Eval("Amount").ToString()%>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
           <asp:ButtonField ButtonType="Image" ImageUrl="img/delete.png" CommandName="delete" HeaderText="Cancel Payment"/>
        </Columns>
    </asp:GridView>
</asp:Content>
