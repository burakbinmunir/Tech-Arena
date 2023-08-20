using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Latest_Work
{
    public partial class viewOtherProjects : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string constr = WebConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);

            using (con)
            {

                con.Open();

                projName.Text = Request.QueryString["searchedProject"].ToString();


                SqlCommand sqlCmd = new SqlCommand("getProjectDescription", con);

                sqlCmd.Parameters.AddWithValue("@projectName", projName.Text);

                sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
                sqlCmd.Parameters.Add("@desc", System.Data.SqlDbType.VarChar, 1000);
                sqlCmd.Parameters["@desc"].Direction = System.Data.ParameterDirection.Output;

                sqlCmd.ExecuteNonQuery();

                description.Text = sqlCmd.Parameters["@desc"].Value.ToString();

                sqlCmd = new SqlCommand("getProjectCode", con);

                sqlCmd.Parameters.AddWithValue("@projectName", projName.Text);

                sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
                sqlCmd.Parameters.Add("@code", System.Data.SqlDbType.VarChar, 1000);
                sqlCmd.Parameters["@code"].Direction = System.Data.ParameterDirection.Output;

                sqlCmd.ExecuteNonQuery();
                code.Text = sqlCmd.Parameters["@code"].Value.ToString();

            }
        }
    } 
}