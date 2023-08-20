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
    public partial class EditProfile1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignOut(object sender, EventArgs e)
        {
            string constr = WebConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);

            using (con)
            {
                con.Open();

                SqlCommand sqlCmd = new SqlCommand("signout", con);
                sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
                sqlCmd.ExecuteNonQuery();

                Response.Redirect("LoginPage.aspx");
            }
        }
        protected void SaveChanges(object sender, EventArgs e)
        {
            if (confirmPasswordBox.Text == newPasswordBox.Text)
            {
                string constr = WebConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
                SqlConnection con = new SqlConnection(constr);

                using (con)
                {
                    con.Open();

                    SqlCommand sqlCmd = new SqlCommand("updateProfile", con);
                    sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;

                    sqlCmd.Parameters.AddWithValue("@newUserName", newUserNameBox.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@oldPassword", oldPasswordBox.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@newPassword", newPasswordBox.Text.Trim().ToString());
                    sqlCmd.Parameters.AddWithValue("@confirmPassword", confirmPasswordBox.Text.ToString().Trim());
                    sqlCmd.Parameters.AddWithValue("@newEmail", newEmailBox.Text.Trim());

                    if (newProfileMode.Text != "Qualification")
                    {
                        sqlCmd.Parameters.AddWithValue("@newQualification", newProfileMode.Text.ToString());
                    }


                    sqlCmd.ExecuteNonQuery();

                    Response.Redirect("UserProfile.aspx");

                }
            }
            else
            {
                lblErrorMessage.Visible = true;
            }
        }
    }
}