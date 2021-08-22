using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace CodeFirstApproch1
{
    public partial class Add_Products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-R1VUH8T2\SQLEXPRESS;Initial Catalog=NorthWindDb;User ID=Counter;Password=root");
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[tblProducts]
           ([ProductName]
           ,[ProductPrice]
           ,[Category_CategoryId])
     VALUES
           ('"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"')",con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Product is added successfully')</script>");
        }

        
    }
}