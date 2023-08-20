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
    public partial class AskDeleteCode : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string constr = WebConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);

            using (con)
            {
                con.Open();
                SqlCommand sqlCmd = new SqlCommand("searchProject", con);
                sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;



                sqlCmd.Parameters.Add("@codeFilename", System.Data.SqlDbType.VarChar, 50);
                sqlCmd.Parameters["@codeFilename"].Direction = System.Data.ParameterDirection.Output;


                sqlCmd.Parameters.Add("@proDesc", System.Data.SqlDbType.VarChar, 50);
                sqlCmd.Parameters["@proDesc"].Direction = System.Data.ParameterDirection.Output;



                sqlCmd.Parameters.Add("@codeFile", System.Data.SqlDbType.VarChar, 50);
                sqlCmd.Parameters["@codeFile"].Direction = System.Data.ParameterDirection.Output;




                sqlCmd.Parameters.Add("@readmeFile ", System.Data.SqlDbType.VarChar, 50);
                sqlCmd.Parameters["@readmeFile "].Direction = System.Data.ParameterDirection.Output;



                sqlCmd.Parameters.Add("@projectName ", System.Data.SqlDbType.VarChar, 50);
                sqlCmd.Parameters["@projectName "].Direction = System.Data.ParameterDirection.Output;
                sqlCmd.ExecuteNonQuery();
                codeFileBox.Text = sqlCmd.Parameters["@codeFile"].Value.ToString();
                descriptionBox.Text = sqlCmd.Parameters["@proDesc"].Value.ToString();
                projectName.Text = sqlCmd.Parameters["@projectName "].Value.ToString();
                readMeFileBOx.Text = sqlCmd.Parameters["@readmeFile "].Value.ToString();
                codeFileNameBox.Text = sqlCmd.Parameters["@codeFilename"].Value.ToString();

            }

        }
        protected void DeleteCode(object sender, EventArgs e){
            Response.Redirect("DeleteCode.aspx");
        }
    }
}