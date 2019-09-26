<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ApproveUsers.aspx.cs" Inherits="WebAPP.ApproveUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <center>
        <asp:Label runat="server" ID="lblMsg" Visible="false"></asp:Label>
    </center>
    <asp:GridView ID="gdvPendingList" runat="server" CssClass="table table-responsive" AutoGenerateColumns="false"
         OnRowCommand="gdvPendingList_RowCommand" style="background-color:#fff !important;">
        <Columns>
            <asp:TemplateField HeaderText="#" Visible="false">
                <ItemTemplate>
                    <asp:Label runat="server" ID="lblId" Text='<%# Eval("UID") %>'></asp:Label>
                    <br />
                    
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="">
                <ItemTemplate>
                    <asp:Image runat="server" ID="imgUserLogo" ImageUrl="img/user.png" />                    
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Name">
                <ItemTemplate>
                    <asp:Label runat="server" ID="lblFullName" Text='<%# Eval("FirstName")+" "+Eval("LastName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="User Id">
                <ItemTemplate>
                    <asp:Label runat="server" ID="lblUserName" Text='<%# Eval("UserName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Password">
                <ItemTemplate>
                    <asp:Label runat="server" ID="lblPassword" Text='<%# Eval("Password") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Age">
                <ItemTemplate>
                    <asp:Label runat="server" ID="lblAge" Text='<%# Eval("Age") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Contact">
                <ItemTemplate>
                    <asp:Label runat="server" ID="lblMobile" Text='<%# Eval("ContactNumber") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="E-Mail">
                <ItemTemplate>
                    <asp:Label runat="server" ID="lblEmail" Text='<%# Eval("EMail") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField><asp:TemplateField HeaderText="Registration Date">
                <ItemTemplate>
                    <asp:Label runat="server" ID="lblDOR" Text='<%# Eval("CreatedOn").ToString() %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:ButtonField ButtonType="Image" ImageUrl="img/ok.png" CommandName="approve" HeaderText="Approve" />
            <asp:ButtonField ButtonType="Image" ImageUrl="img/delete.png" CommandName="reject" HeaderText="Reject" />

            
        </Columns>
    </asp:GridView>

</asp:Content>
