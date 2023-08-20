﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Latest_Work
{
    public partial class SearchCode : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SearchCode_Click(object sender, EventArgs e)
        {
            if (projectNameBox.Text != "")
            {
                string constr = WebConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
                SqlConnection con = new SqlConnection(constr);

                using (con)
                {
                    con.Open();
                    SqlCommand sqlCmd = new SqlCommand("addTempProjectName", con);
                    sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;

                    sqlCmd.Parameters.AddWithValue("@proName", projectNameBox.Text.Trim());
                    sqlCmd.ExecuteNonQuery();
                    Response.Redirect("EditCode.aspx");
                }
                
            }
        }
    }
}