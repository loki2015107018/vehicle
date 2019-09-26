<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserSearch.aspx.cs" Inherits="WebAPP.UserSearch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="border-bottom-info" style="margin-bottom: 4%; padding-bottom: 2%;">
        Book a Vehicle 
    </div>

    <div class="form-row">
        <div class="form-group col-md-9">
        <asp:TextBox runat="server" ID="txtSearch" CssClass="form-control" placeholder="Enter type of vehicle or brand"></asp:TextBox>
        </div>
        <div class="form-group col-md-3">
        <a href="vehicleCrud" class="btn btn-primary btn-icon-split" runat="server">
                    <span class="icon text-white-50">
                      <i class="fas fa-search"></i>
                    </span>
            <asp:Button runat="server" ID="brnSearch" Text="Search" class="btn btn-primary btn-icon-split text" OnClick="brnSearch_Click" />
             <%--<span class="text">Search</span>--%>
            </a>
        </div>
    </div>

    <asp:GridView runat="server" ID="gdvResults" class="table table-responsive" AutoGenerateColumns="false" OnRowCommand="gdvResults_RowCommand">
        <Columns>
            <asp:TemplateField HeaderText="#">
                <ItemTemplate>
                    <asp:Label runat="server" ID="lblId" Text='<%#Eval("VehicleId") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="#" Visible="false">
                <ItemTemplate>
                    <asp:Label runat="server" ID="lblPrice" Text='<%#Eval("PricePerDay") %>'></asp:Label>
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
            <asp:ButtonField ButtonType="Image" ImageUrl="img/booknow.png" CommandName="book" HeaderText="" />            
        </Columns>
    </asp:GridView>
</asp:Content>
