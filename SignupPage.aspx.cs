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
    
    public partial class SignupPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblErrorMessage.Visible = false;
        }


        protected void SignUp_Process(object sender, EventArgs e)
        {
            string constr = WebConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);

            using (con)
            {
                con.Open();
                SqlCommand sqlCmd = new SqlCommand("signUp", con);
                sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;

                string pMode = "";

                if (R1.Checked)
                    pMode = "Contributer".Trim();

                else if (R2.Checked)
                    pMode = "Hirer".Trim();

                else if (R3.Checked)
                    pMode = "Coder".Trim();


                sqlCmd.Parameters.AddWithValue("@firstName", FN.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@lastName", LN.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@userName", UN.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@email", EM.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@password", PASS.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@profileMode", pMode.Trim());
                sqlCmd.Parameters.AddWithValue("@confirmPassword", CFPASS.Text.Trim());

                int userD = 0;
                int userQ = 0;

                if (userDomain.SelectedValue.ToString().Trim() == "Software Engineer".Trim())
                    userD = 1;

                else if (userDomain.SelectedValue.ToString().Trim() == "Data Scientist".Trim())
                    userD = 2;

                else if (userDomain.SelectedValue.ToString().Trim() == "Computer Scientist".Trim())
                    userD = 3;

                else if (userDomain.SelectedValue.ToString().Trim() == "AI Engineer".Trim())
                    userD = 4;

                else if (userDomain.SelectedValue.ToString().Trim() == "Big Data Engineer".Trim())
                    userD = 5;

                else if (userDomain.SelectedValue.ToString().Trim() == "UX Developer".Trim())
                    userD = 6;

                else if (userDomain.SelectedValue.ToString().Trim() == "Database Developer".Trim())
                    userD = 7;


                if (userQualification.SelectedValue.ToString().Trim() == "Post Graduate".Trim())
                    userQ = 1;

                if (userQualification.SelectedValue.ToString().Trim() == "Graduate".Trim())
                    userQ = 2;

                if (userQualification.SelectedValue.ToString().Trim() == "Under Graduate".Trim())
                    userQ = 3;

                sqlCmd.Parameters.AddWithValue("@qualificationID", userQ);
                sqlCmd.Parameters.AddWithValue("@fieldID", userD);

                sqlCmd.Parameters.Add("@success1", System.Data.SqlDbType.VarChar, 30);
                sqlCmd.Parameters["@success1"].Direction = System.Data.ParameterDirection.Output;

                sqlCmd.ExecuteNonQuery();

                string successfulSignUp = sqlCmd.Parameters["@success1"].Value.ToString();


                if (successfulSignUp.Equals("99"))
                {
                    lblErrorMessage.Visible = true;
                }

                else
                {
                    Response.Redirect("UserProfile.aspx");
                }

            }

        }
    }
   

 }


