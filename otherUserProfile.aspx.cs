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
    public partial class otherUserProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            lblMadeConMessage.Visible = false;

            AddC.Visible = false;
            RemC.Visible = false;

            string constr = WebConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);

            using (con)
            {
                con.Open();


                SqlCommand sqlCmd = new SqlCommand("getCurrentUser", con);
                sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;

                sqlCmd.Parameters.Add("@currentUserName", System.Data.SqlDbType.VarChar, 20);
                sqlCmd.Parameters["@currentUserName"].Direction = System.Data.ParameterDirection.Output;
                sqlCmd.ExecuteNonQuery();

                string currUser = sqlCmd.Parameters["@currentUserName"].Value.ToString();

                susernameLabel.Text = Request.QueryString["searchedU"].ToString();

                sqlCmd = new SqlCommand("checkConnection", con);
                sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
                sqlCmd.Parameters.AddWithValue("@user1", susernameLabel.Text);
                sqlCmd.Parameters.AddWithValue("@user2", currUser);

                sqlCmd.Parameters.Add("@success1", System.Data.SqlDbType.VarChar, 20);
                sqlCmd.Parameters["@success1"].Direction = System.Data.ParameterDirection.Output;

                sqlCmd.ExecuteNonQuery();

                string ifConnect = sqlCmd.Parameters["@success1"].Value.ToString();

                if (ifConnect.Equals("1"))
                {
                    RemC.Visible = true;
                }
                else AddC.Visible = true;

                sqlCmd = new SqlCommand("getOtherUserConnections", con);
                sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
                sqlCmd.Parameters.AddWithValue("@uN", susernameLabel.Text);
                sqlCmd.Parameters.Add("@foundConnections", System.Data.SqlDbType.Int);
                sqlCmd.Parameters["@foundConnections"].Direction = System.Data.ParameterDirection.Output;

                sqlCmd.ExecuteNonQuery();
                stotalConnectionsLabel.Text = sqlCmd.Parameters["@foundConnections"].Value.ToString();

                sqlCmd = new SqlCommand("getOtherUserProjectNumbers", con);
                sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
                sqlCmd.Parameters.AddWithValue("@uN", susernameLabel.Text);
                sqlCmd.Parameters.Add("@countOfProjects", System.Data.SqlDbType.Int);
                sqlCmd.Parameters["@countOfProjects"].Direction = System.Data.ParameterDirection.Output;
                sqlCmd.ExecuteNonQuery();
                stotalProjects.Text = sqlCmd.Parameters["@countOfProjects"].Value.ToString();

                sqlCmd = new SqlCommand("getOtherUserQualification", con);
                sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
                sqlCmd.Parameters.AddWithValue("@uN", susernameLabel.Text);
                sqlCmd.Parameters.Add("@userQualification", System.Data.SqlDbType.NVarChar, 50);
                sqlCmd.Parameters["@userQualification"].Direction = System.Data.ParameterDirection.Output;
                sqlCmd.ExecuteNonQuery();
                squalificationLabel.Text = sqlCmd.Parameters["@userQualification"].Value.ToString();

                sqlCmd = new SqlCommand("getOtherUserProfileMode", con);
                sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
                sqlCmd.Parameters.AddWithValue("@uN", susernameLabel.Text);
                sqlCmd.Parameters.Add("@profileMode", System.Data.SqlDbType.NVarChar, 50);
                sqlCmd.Parameters["@profileMode"].Direction = System.Data.ParameterDirection.Output;
                sqlCmd.ExecuteNonQuery();
                sprofileModeLabel.Text = sqlCmd.Parameters["@profileMode"].Value.ToString();

                sqlCmd = new SqlCommand("getUserFullName", con);
                sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
                sqlCmd.Parameters.Add("@firstName", System.Data.SqlDbType.NVarChar, 50);
                sqlCmd.Parameters["@firstName"].Direction = System.Data.ParameterDirection.Output;
                sqlCmd.Parameters.Add("@lastName", System.Data.SqlDbType.NVarChar, 50);
                sqlCmd.Parameters["@lastName"].Direction = System.Data.ParameterDirection.Output;
                sqlCmd.ExecuteNonQuery();
                sfullNameLabel.Text = sqlCmd.Parameters["@firstName"].Value.ToString() + " " + sqlCmd.Parameters["@lastName"].Value.ToString();

            }
        }

        protected void Add_Connection(object sender, EventArgs e)
        {
            string constr = WebConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);

            using (con)
            {
                con.Open();

                SqlCommand sqlCmd = new SqlCommand("getCurrentUser", con);
                sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;

                sqlCmd.Parameters.Add("@currentUserName", System.Data.SqlDbType.VarChar, 20);
                sqlCmd.Parameters["@currentUserName"].Direction = System.Data.ParameterDirection.Output;
                sqlCmd.ExecuteNonQuery();

                string currUser = sqlCmd.Parameters["@currentUserName"].Value.ToString();

                susernameLabel.Text = Request.QueryString["searchedU"].ToString();

                sqlCmd = new SqlCommand("makeConnection", con);
                sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
                sqlCmd.Parameters.AddWithValue("@user1", susernameLabel.Text);
                sqlCmd.Parameters.AddWithValue("@user2", currUser);
                sqlCmd.ExecuteNonQuery();

    
            }

        }

        protected void Remove_Connection(object sender, EventArgs e)
        {
            string constr = WebConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);

            using (con)
            {
                con.Open();

                SqlCommand sqlCmd = new SqlCommand("getCurrentUser", con);
                sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;

                sqlCmd.Parameters.Add("@currentUserName", System.Data.SqlDbType.VarChar, 20);
                sqlCmd.Parameters["@currentUserName"].Direction = System.Data.ParameterDirection.Output;
                sqlCmd.ExecuteNonQuery();

                string currUser = sqlCmd.Parameters["@currentUserName"].Value.ToString();

                susernameLabel.Text = Request.QueryString["searchedU"].ToString();

                sqlCmd = new SqlCommand("removeConnection", con);
                sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
                sqlCmd.Parameters.AddWithValue("@user1", susernameLabel.Text);
                sqlCmd.Parameters.AddWithValue("@user2", currUser);
                sqlCmd.ExecuteNonQuery();

            }

        }
    }
}