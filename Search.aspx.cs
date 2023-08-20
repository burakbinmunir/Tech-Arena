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
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblFoundMessage.Visible = false;
        }


        protected void Search_Process(object sender, EventArgs e)
        {

            string constr = WebConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);

            using (con)
            {
                con.Open();

                int searchType = 0;

                if (searchFilter.SelectedValue.ToString().Trim() == "C".Trim())
                    searchType = 1;

                else if (searchFilter.SelectedValue.ToString().Trim() == "P".Trim())
                    searchType = 2;

                if (searchType == 1)
                {
                    SqlCommand sqlCmd = new SqlCommand("searchConnection", con);
                    sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;

                    sqlCmd.Parameters.AddWithValue("@ConName", searchText.Text.Trim());

                    sqlCmd.Parameters.Add("@foundUsers", System.Data.SqlDbType.VarChar, 50);
                    sqlCmd.Parameters["@foundUsers"].Direction = System.Data.ParameterDirection.Output;

                    sqlCmd.ExecuteNonQuery();

                    string foundUser = sqlCmd.Parameters["@foundUsers"].Value.ToString();

                    if (foundUser.Length == 0)
                    {                       
                        lblFoundMessage.Visible = true;
                    }

                    else
                    {                   
                        
                        Response.Redirect("otherUserProfile.aspx?searchedU=" + searchText.Text);
                    }

                }

                if (searchType == 2)
                {
                    SqlCommand sqlCmd = new SqlCommand("searchProject", con);
                    sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;

                    sqlCmd.Parameters.AddWithValue("@projectName", searchText.Text.Trim());

                    sqlCmd.Parameters.Add("@foundProject", System.Data.SqlDbType.VarChar, 50);
                    sqlCmd.Parameters["@foundProject"].Direction = System.Data.ParameterDirection.Output;

                    sqlCmd.ExecuteNonQuery();

                    string foundProj = sqlCmd.Parameters["@foundProject"].Value.ToString();

                    if (foundProj.Length == 0)
                    {
                        lblFoundMessage.Visible = true;
                    }
                    else
                    {
                        Response.Redirect("viewOtherProjects.aspx?searchedProject=" + searchText.Text);
                    }

                }

            }
        }

    }
}