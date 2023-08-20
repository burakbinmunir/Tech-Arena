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
    public partial class NewCode : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddNewProject(object sender, EventArgs e)
        {

            string constr = WebConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);

            using (con)
            {
                con.Open();

                SqlCommand sqlCmd = new SqlCommand("addNewProject", con);
                sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;

                sqlCmd.Parameters.AddWithValue("@proName", projectNameBox.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@proDesc", descriptionTextBox.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@readMe", readmeFileBox.Text.Trim().ToString());
                
                sqlCmd.Parameters.AddWithValue("@code",codeBox.Text.ToString() );
                sqlCmd.Parameters.AddWithValue("@codeName", codeFileNameBox.Text.Trim());
                if (open.Checked.Equals(true))
                {
                    sqlCmd.Parameters.AddWithValue("@proType", 1);
                }
                else { sqlCmd.Parameters.AddWithValue("@proType", 0); }

                sqlCmd.ExecuteNonQuery();

                Response.Redirect("UserProfile.aspx");

            }
        }

        private void CodeBox_TextChanged(object sender, EventArgs e)
        {
            throw new NotImplementedException();
        }
    }
}
