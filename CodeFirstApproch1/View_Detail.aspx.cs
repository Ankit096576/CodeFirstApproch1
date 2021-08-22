using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace CodeFirstApproch1
{
    public partial class View_Detail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!this.IsPostBack)
            {
                this.getlistview();
            }
            
        }
        private void getlistview()
        {
            string mainconn = ConfigurationManager.ConnectionStrings["NorthWindConnection"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "Select ProductId,ProductName,ProductPrice,CategoryId,CategoryName from tblProducts,tblCategories where tblProducts.Category_CategoryId = tblCategories.CategoryId;";
            sqlconn.Open();
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            SqlDataAdapter sda = new SqlDataAdapter(sqlcomm);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            ListView1.DataSource = dt;
            ListView1.DataBind();
            sqlconn.Close();
        }

        protected void ListView1_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
        {
            (ListView1.FindControl("DataPager1") as DataPager).SetPageProperties(e.StartRowIndex, e.MaximumRows, false);
            this.getlistview();
        }
    }
}