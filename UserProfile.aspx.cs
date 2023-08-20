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
    public partial class UserProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string constr = WebConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);

            using (con)
            {
                con.Open();
                SqlCommand sqlCmd = new SqlCommand("getCurrentUser", con);
                sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;

                sqlCmd.Parameters.Add("@currentUserName", System.Data.SqlDbType.VarChar, 50);
                sqlCmd.Parameters["@currentUserName"].Direction = System.Data.ParameterDirection.Output;
                sqlCmd.ExecuteNonQuery();

                usernameLabel.Text =   sqlCmd.Parameters["@currentUserName"].Value.ToString();


                 sqlCmd = new SqlCommand("getConnections", con);
                sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
                sqlCmd.Parameters.Add("@foundConnections", System.Data.SqlDbType.Int);
                sqlCmd.Parameters["@foundConnections"].Direction = System.Data.ParameterDirection.Output;

                sqlCmd.ExecuteNonQuery();
                totalConnectionsLabel.Text = sqlCmd.Parameters["@foundConnections"].Value.ToString();

                sqlCmd = new SqlCommand("getUserProjectNumbers", con);
                sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
                sqlCmd.Parameters.Add("@countOfProjects", System.Data.SqlDbType.Int);
                sqlCmd.Parameters["@countOfProjects"].Direction = System.Data.ParameterDirection.Output;
                sqlCmd.ExecuteNonQuery();
                totalProjects.Text = sqlCmd.Parameters["@countOfProjects"].Value.ToString();

                sqlCmd = new SqlCommand("getUserQualification", con);
                sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
                sqlCmd.Parameters.Add("@userQualification", System.Data.SqlDbType.NVarChar, 50);
                sqlCmd.Parameters["@userQualification"].Direction = System.Data.ParameterDirection.Output;
                sqlCmd.ExecuteNonQuery();
                qualificationLabel.Text = sqlCmd.Parameters["@userQualification"].Value.ToString();

                sqlCmd = new SqlCommand("getUserProfileMode", con);
                sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
                sqlCmd.Parameters.Add("@profileMode", System.Data.SqlDbType.NVarChar, 50);
                sqlCmd.Parameters["@profileMode"].Direction = System.Data.ParameterDirection.Output;
                sqlCmd.ExecuteNonQuery();
                profileModeLabel.Text = sqlCmd.Parameters["@profileMode"].Value.ToString();

                sqlCmd = new SqlCommand("getUserFullName", con);
                sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
                sqlCmd.Parameters.Add("@firstName", System.Data.SqlDbType.NVarChar, 50);
                sqlCmd.Parameters["@firstName"].Direction = System.Data.ParameterDirection.Output;
                sqlCmd.Parameters.Add("@lastName", System.Data.SqlDbType.NVarChar, 50);
                sqlCmd.Parameters["@lastName"].Direction = System.Data.ParameterDirection.Output;
                sqlCmd.ExecuteNonQuery();
                fullNameLabel.Text = sqlCmd.Parameters["@firstName"].Value.ToString() + " " + sqlCmd.Parameters["@lastName"].Value.ToString();

            }
            


        }


        protected void EditProfile(object sender,EventArgs e)
        {
            if (profileModeLabel.Text != "Contributor")
            {
                Response.Redirect("EditProfile1.aspx");
            }
            else
            {
                Response.Redirect("EditProfile2.aspx");
            }
        }

        protected void My_Portfolio(object sender, EventArgs e)
        {
            Response.Redirect("Portfolio.aspx");
        }

        protected void DeleteProfile(object sender, EventArgs e)
        {
            Response.Redirect("DeleteAsk.aspx");
        }
    }
}