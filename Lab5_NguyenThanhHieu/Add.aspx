<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="Lab5_NguyenThanhHieu.Add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1>ADD</h1>

    <form id="form1" runat="server">
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
        <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
    </form>
    <a href="Home.aspx">Go back Home</a>
</body>
</html>
