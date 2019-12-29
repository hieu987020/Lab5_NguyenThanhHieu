<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Lab5_NguyenThanhHieu.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

    <form id="form1" runat="server">
        <h1>HOMEPAGE</h1>
        <a href="Add.aspx">Add new employee here</a>
        <asp:GridView ID="StudentData" runat="server" DataKeyNames="ID" CellPadding="4" ForeColor="#333333" GridLines="None" Style="margin-bottom: 1px" Width="228px" OnSelectedIndexChanged="StudentData_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
            
        </asp:GridView>
        <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
        <h1>FORM</h1>
        ID:
        <asp:TextBox ID="txtID" runat="server" ReadOnly="True"></asp:TextBox>
        <asp:RequiredFieldValidator ControlToValidate="txtID" ID="RequiredFieldValidator7" runat="server" ErrorMessage="can't be blank" ForeColor="Red" />
        </br>
        Name:
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ControlToValidate="txtName" ID="reqString" runat="server" ErrorMessage="can't be blank" ForeColor="Red" />
        </br>
    Dob:
        <asp:TextBox ID="txtDob" runat="server" type="date"></asp:TextBox>
        <asp:RequiredFieldValidator ControlToValidate="txtDob" ID="RequiredFieldValidator5" runat="server" ErrorMessage="can't be blank" ForeColor="Red" />
        </br>
    Address:
        <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ControlToValidate="txtAddress" ID="RequiredFieldValidator1" runat="server" ErrorMessage="can't be blank" ForeColor="Red" />
        </br>
    Yoe:
        <asp:TextBox ID="txtYoe" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ControlToValidate="txtYoe" ID="RequiredFieldValidator2" runat="server" ErrorMessage="can't be blank" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ControlToValidate="txtYoe" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Limit up to 0-2 years" ForeColor="Red" ValidationExpression="[0-2]" />
        </br>
    Phone:<asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ControlToValidate="txtPhone" ID="RequiredFieldValidator3" runat="server" ErrorMessage="can't be blank" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ControlToValidate="txtPhone" ID="RegularExpressionValidator2" runat="server" ErrorMessage="Phone(XXXXX) is 5 numbers" ForeColor="Red" ValidationExpression="[0-9]{5}" />
        </br>
    Email:
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ControlToValidate="txtEmail" ID="RequiredFieldValidator4" runat="server" ErrorMessage="can't be blank" ForeColor="Red"></asp:RequiredFieldValidator>
        </br>
    Doj:
        <asp:TextBox ID="txtDoj" runat="server" type="date"></asp:TextBox>
        <asp:RequiredFieldValidator ControlToValidate="txtDoj" ID="RequiredFieldValidator6" runat="server" ErrorMessage="can't be blank" ForeColor="Red" />
        </br>
        <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
        

    </form>


</body>
</html>
