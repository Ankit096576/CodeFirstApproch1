<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add Products.aspx.cs" Inherits="CodeFirstApproch1.Add_Products" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Add Product</h1>
        </div>
        <asp:Label ID="Label1" runat="server" Text="Product Name : "></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Product Price :    "></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </p>
        <asp:Label ID="Label3" runat="server" Text="Category ID :        "></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ADD PRODUCT" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="AddCategories.aspx">ADD CATEGORY</a><br />
            <a href="View_Detail.aspx">VIEW DETAIL IN IT PLEASE</a>
        </p>
    </form>
</body>
</html>
