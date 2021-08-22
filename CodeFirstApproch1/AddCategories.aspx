<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddCategories.aspx.cs" Inherits="CodeFirstApproch1.AddCategories" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Add Categories.</h1>
        </div>
        <p>
            Category Name :&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="249px"></asp:TextBox>
        </p>
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="Add Products.aspx">ADD PRODUCT</a><br />
        <a href="View_Detail.aspx">VIEW DETAIL IN IT PLEASE</a>
    </form>
</body>
</html>
