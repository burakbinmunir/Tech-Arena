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
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblErrorMessage.Visible = false;
        }


        protected void SignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignupPage.aspx");
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            string constr = WebConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);

            using (con)
            {
                con.Open();

                SqlCommand sqlCmd = new SqlCommand("logIn", con);
                sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;

                sqlCmd.Parameters.AddWithValue("@email", emailBox.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@password", passwordBox.Text.Trim());

                sqlCmd.Parameters.Add("@success1", System.Data.SqlDbType.NVarChar, 20);
                sqlCmd.Parameters["@success1"].Direction = System.Data.ParameterDirection.Output;

                sqlCmd.ExecuteNonQuery();

                string successfulLogIn = sqlCmd.Parameters["@success1"].Value.ToString();


                if (successfulLogIn.Equals("99"))
                {
                    SqlCommand sqlCmd2 = new SqlCommand("setCurrentUser", con);
                    sqlCmd2.CommandType = System.Data.CommandType.StoredProcedure;

                    sqlCmd2.Parameters.AddWithValue("@email", emailBox.Text.Trim());
                    sqlCmd2.ExecuteNonQuery();
                    Session["username"] = emailBox.Text.Trim();
                    Response.Redirect("UserProfile.aspx");
                    
                }

                else if (successfulLogIn.Equals("1"))
                {
                    lblErrorMessage.Visible = true;
                }

                else
                {
                    lblErrorMessage.Visible = true;
                }

            }

        }
    }
}