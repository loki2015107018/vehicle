<%@ Page Title="VehicheCRUD" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VehicleCrud.aspx.cs" Inherits="WebAPP.VehicleCrud" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="float:right;margin-bottom:2%;">
            <a href="Addvehicle" class="btn btn-success btn-icon-split">
                    <span class="icon text-white-50">
                      <i class="fas fa-plus"></i>
                    </span>
                    <span class="text">Add Vehicle</span>
            </a>
        <br />
    </div>

    <asp:GridView runat="server" ID="gdvVehicleList" AutoGenerateColumns="false" class="table table-responsive" OnRowCommand="gdvVehicleList_RowCommand" OnRowDeleting="gdvVehicleList_RowDeleting">
        <Columns>
            <asp:TemplateField HeaderText="#">
                <ItemTemplate>
                    <asp:Label runat="server" ID="lblId" Text='<%#Eval("VehicleId") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Type">
                <ItemTemplate>
                    <asp:Label runat="server" ID="lblType" Text='<%#Eval("VehicleType") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Number">
                <ItemTemplate>
                    <asp:Label runat="server" ID="lblNumber" Text='<%#Eval("VehicleNumber") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>            
            <asp:TemplateField HeaderText="Model">
                <ItemTemplate>
                    <asp:Label runat="server" ID="lblModel" Text='<%#Eval("Model") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Year">
                <ItemTemplate>
                    <asp:Label runat="server" ID="lblYear" Text='<%#Eval("Year") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Insurance Expiry Date">
                <ItemTemplate>
                    <asp:Label runat="server" ID="lblInsuranceExpiryDate" Text='<%#Eval("InsuranceExpiryDate").ToString().Substring(0,10) %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="PriceperDay">
                 <ItemTemplate>
                    <asp:Label runat="server" ID="PriceperDay" Text='<%#Eval("PriceperDay").ToString()%>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Service Due Date">
                <ItemTemplate>
                    <asp:Label runat="server" ID="lblServiceDueDate" Text='<%#Eval("ServiceDueDate").ToString().Substring(0,10) %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Registration Date">
                <ItemTemplate>
                    <asp:Label runat="server" ID="lblCreatedOn" Text='<%#Eval("CreatedOn").ToString().Substring(0,10) %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>      
            <asp:ButtonField ButtonType="Image" ImageUrl="img/edit.png" CommandName="edit" HeaderText="edit" />
            <asp:ButtonField ButtonType="Image" ImageUrl="img/delete.png" CommandName="delete" HeaderText="Reject"/>
        </Columns>
    </asp:GridView>
</asp:Content>
