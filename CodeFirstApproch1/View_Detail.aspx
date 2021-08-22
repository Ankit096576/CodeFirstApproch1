<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="View_Detail.aspx.cs" Inherits="CodeFirstApproch1.View_Detail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <h1>View Detail</h1>
                <hr />
                <asp:ListView ID="ListView1" runat="server" GroupPlaceholderID="groupplaceholder" ItemPlaceholderID="itemplaceholder" OnPagePropertiesChanging="ListView1_PagePropertiesChanging">
                    <LayoutTemplate>
                        <table border="1">
                            <tr>
                                <th>Product ID</th>
                                <th>Product Name</th>
                                <th>Product Price</th>
                                <th>Category ID</th>
                                <th>Category Name</th>
                            </tr>
                            <tr id="groupplaceholder" runat="server"></tr>
                            <tr>
                              <td colspan="5" style="text-align:center;">
                                    <asp:DataPager ID="DataPager1" runat="server"
                                        PagedControlID="ListView1" PageSize="10">
                                        <Fields>
                                            <asp:NextPreviousPagerField ButtonType="Link" 
                                                ShowFirstPageButton="true" ShowPreviousPageButton="true"
                                                ShowNextPageButton="false"/>
                                            <asp:NumericPagerField ButtonType="Button" />
                                            <asp:NextPreviousPagerField ButtonType="Link"
                                                ShowNextPageButton="true" ShowLastPageButton="true"
                                                ShowPreviousPageButton="false" />
                                        </Fields>
                                    </asp:DataPager>
                                </td>

                            </tr>  
                        </table>
                    </LayoutTemplate>
                    <GroupTemplate>
                        <tr>
                            <tr id="itemplaceholder" runat="server"></tr>
                        </tr>
                    </GroupTemplate>
                    <ItemTemplate>
                        <td><%# Eval("ProductId") %></td>
                        <td><%# Eval("ProductName") %></td>
                        <td><%# Eval("ProductPrice") %></td>
                        <td><%# Eval("CategoryId") %></td>
                        <td><%# Eval("CategoryName") %></td>
                    </ItemTemplate>
                </asp:ListView>
                <a href="Add Products.aspx">ADD PRODUCT</a><br />
                <a href="AddCategories.aspx">ADD CATEGORY</a><br />
            </center>
        </div>
    </form>
</body>
</html>
