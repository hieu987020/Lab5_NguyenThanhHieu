<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lab5_NguyenThanhHieu._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    ID:
        <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
        </br>
    Name:
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        </br>
    Dob:
        <asp:TextBox ID="txtDob" runat="server"></asp:TextBox>
        </br>
    Address:
        <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
        </br>
    Yoe:
        <asp:TextBox ID="txtYoe" runat="server"></asp:TextBox>
        </br>
    Phone:<asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
        </br>
    Email:
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        </br>
    Doj:
        <asp:TextBox ID="txtDoj" runat="server"></asp:TextBox>
        </br>
    <asp:Button ID="add" runat="server" Text="Add" />

</asp:Content>
