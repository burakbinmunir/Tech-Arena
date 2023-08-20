using System.Data;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.IO;
using System.Text;


namespace Latest_Work
{
    public partial class downloadFile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection x;
        SqlCommand y1;
        DataTable dt;
        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            x = new SqlConnection(WebConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            x.Open();
            y1 = new SqlCommand();
            y1.Connection = x;
            y1.CommandText = "Projects_Table";

            y1.CommandType = CommandType.StoredProcedure;

            SqlDataAdapter y = new SqlDataAdapter(y1);

            dt = new DataTable();
            y.Fill(dt);
          
            GridView1.DataSource = dt;
            GridView1.DataBind();
            x.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (GridView1.Visible)
            {
                Response.AddHeader("content-disposition", "attachment; filename=GridViewToExcel.xls");
                Response.ContentType = "application/excel";
                StringWriter sWriter = new StringWriter();
                HtmlTextWriter hTextWriter = new HtmlTextWriter(sWriter);
                GridView1.RenderControl(hTextWriter);
                Response.Write(sWriter.ToString());
                Response.End();
            }
        }
        public override void VerifyRenderingInServerForm(Control control) { }
    }
}