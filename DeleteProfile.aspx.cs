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
    public partial class DeleteProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ConfirmDelete_Click(object sender, EventArgs e)
        {  string constr = WebConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);

            using (con)
            {
                con.Open();

                SqlCommand sqlCmd = new SqlCommand("deleteCurrentUser", con);
                sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;

                sqlCmd.Parameters.AddWithValue("@username", usernameBox.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@password", passwordBox.Text.Trim());

                sqlCmd.Parameters.Add("@success", System.Data.SqlDbType.NVarChar, 50);
                sqlCmd.Parameters["@success"].Direction = System.Data.ParameterDirection.Output;

                sqlCmd.ExecuteNonQuery();

                string deleteSuccces = sqlCmd.Parameters["@success"].Value.ToString();


                if (deleteSuccces.Equals("DONE"))
                {
                    Response.Redirect("SignupPage.aspx");
                }
            }

        }
    }
}