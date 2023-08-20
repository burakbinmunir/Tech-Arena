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
    public partial class dashBoard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            PAdd.Visible = false;
            PRem.Visible = false;

            RAdd.Visible = false;
            RRem.Visible = false;

            JSAdd.Visible = false;
            JSRem.Visible = false;

            KAdd.Visible = false;
            KRem.Visible = false;

            MAdd.Visible = false;
            MRem.Visible = false;

            SAdd.Visible = false;
            SRem.Visible = false;

            CAdd.Visible = false;
            CRem.Visible = false;


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

                sqlCmd = new SqlCommand("checkCourse", con);
                sqlCmd.Parameters.AddWithValue("@userName", currUser);
                sqlCmd.Parameters.AddWithValue("@courseName", "Python");

                sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;            
         
                sqlCmd.Parameters.Add("@success1", System.Data.SqlDbType.VarChar, 20);
                sqlCmd.Parameters["@success1"].Direction = System.Data.ParameterDirection.Output;

                sqlCmd.ExecuteNonQuery();

                string ifCourseAdded = sqlCmd.Parameters["@success1"].Value.ToString();

                if (ifCourseAdded.Equals("1"))
                {
                    PRem.Visible = true;
                }
                else PAdd.Visible = true;

                sqlCmd = new SqlCommand("checkCourse", con);
                sqlCmd.Parameters.AddWithValue("@userName", currUser);
                sqlCmd.Parameters.AddWithValue("@courseName", "Ruby");

                sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;

                sqlCmd.Parameters.Add("@success1", System.Data.SqlDbType.VarChar, 20);
                sqlCmd.Parameters["@success1"].Direction = System.Data.ParameterDirection.Output;

                sqlCmd.ExecuteNonQuery();

                string ifCourseAdded2 = sqlCmd.Parameters["@success1"].Value.ToString();

                if (ifCourseAdded2.Equals("1"))
                {
                    RRem.Visible = true;
                }
                else RAdd.Visible = true;


                sqlCmd = new SqlCommand("checkCourse", con);
                sqlCmd.Parameters.AddWithValue("@userName", currUser);
                sqlCmd.Parameters.AddWithValue("@courseName", "JavaScript");

                sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;

                sqlCmd.Parameters.Add("@success1", System.Data.SqlDbType.VarChar, 20);
                sqlCmd.Parameters["@success1"].Direction = System.Data.ParameterDirection.Output;

                sqlCmd.ExecuteNonQuery();

                string ifCourseAdded3 = sqlCmd.Parameters["@success1"].Value.ToString();

                if (ifCourseAdded3.Equals("1"))
                {
                    JSRem.Visible = true;
                }
                else JSAdd.Visible = true;


                sqlCmd = new SqlCommand("checkCourse", con);
                sqlCmd.Parameters.AddWithValue("@userName", currUser);
                sqlCmd.Parameters.AddWithValue("@courseName", "Kotlin");

                sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;

                sqlCmd.Parameters.Add("@success1", System.Data.SqlDbType.VarChar, 20);
                sqlCmd.Parameters["@success1"].Direction = System.Data.ParameterDirection.Output;

                sqlCmd.ExecuteNonQuery();

                string ifCourseAdded4 = sqlCmd.Parameters["@success1"].Value.ToString();

                if (ifCourseAdded4.Equals("1"))
                {
                    KRem.Visible = true;
                }
                else KAdd.Visible = true;


                sqlCmd = new SqlCommand("checkCourse", con);
                sqlCmd.Parameters.AddWithValue("@userName", currUser);
                sqlCmd.Parameters.AddWithValue("@courseName", "MatLab");

                sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;

                sqlCmd.Parameters.Add("@success1", System.Data.SqlDbType.VarChar, 20);
                sqlCmd.Parameters["@success1"].Direction = System.Data.ParameterDirection.Output;

                sqlCmd.ExecuteNonQuery();

                string ifCourseAdded5 = sqlCmd.Parameters["@success1"].Value.ToString();

                if (ifCourseAdded5.Equals("1"))
                {
                    MRem.Visible = true;
                }
                else MAdd.Visible = true;


                sqlCmd = new SqlCommand("checkCourse", con);
                sqlCmd.Parameters.AddWithValue("@userName", currUser);
                sqlCmd.Parameters.AddWithValue("@courseName", "Swift");

                sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;

                sqlCmd.Parameters.Add("@success1", System.Data.SqlDbType.VarChar, 20);
                sqlCmd.Parameters["@success1"].Direction = System.Data.ParameterDirection.Output;

                sqlCmd.ExecuteNonQuery();

                string ifCourseAdded6 = sqlCmd.Parameters["@success1"].Value.ToString();

                if (ifCourseAdded6.Equals("1"))
                {
                    SRem.Visible = true;
                }
                else SAdd.Visible = true;

                sqlCmd = new SqlCommand("checkCourse", con);
                sqlCmd.Parameters.AddWithValue("@userName", currUser);
                sqlCmd.Parameters.AddWithValue("@courseName", "Clarity");

                sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;

                sqlCmd.Parameters.Add("@success1", System.Data.SqlDbType.VarChar, 20);
                sqlCmd.Parameters["@success1"].Direction = System.Data.ParameterDirection.Output;

                sqlCmd.ExecuteNonQuery();

                string ifCourseAdded7 = sqlCmd.Parameters["@success1"].Value.ToString();

                if (ifCourseAdded7.Equals("1"))
                {
                    CRem.Visible = true;
                }
                else CAdd.Visible = true;



            }

        }

            protected void Register_Python(object sender, EventArgs e)
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

                sqlCmd = new SqlCommand("registerNewCourse", con);
                sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
                sqlCmd.Parameters.AddWithValue("@userName", currUser);
                sqlCmd.Parameters.AddWithValue("@courseName", "Python");


                sqlCmd.ExecuteNonQuery();

                Response.Redirect("dashBoard.aspx");

            }
        }

        protected void Register_Ruby(object sender, EventArgs e)
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

                sqlCmd = new SqlCommand("registerNewCourse", con);
                sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
                sqlCmd.Parameters.AddWithValue("@userName", currUser);
                sqlCmd.Parameters.AddWithValue("@courseName", "Ruby");


                sqlCmd.ExecuteNonQuery();

                Response.Redirect("dashBoard.aspx");

            }
        }

        protected void Register_JavaScript(object sender, EventArgs e)
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

                sqlCmd = new SqlCommand("registerNewCourse", con);
                sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
                sqlCmd.Parameters.AddWithValue("@userName", currUser);
                sqlCmd.Parameters.AddWithValue("@courseName", "JavaScript");


                sqlCmd.ExecuteNonQuery();

                Response.Redirect("dashBoard.aspx");

            }
        }

        protected void Register_Kotlin(object sender, EventArgs e)
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

                sqlCmd = new SqlCommand("registerNewCourse", con);
                sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
                sqlCmd.Parameters.AddWithValue("@userName", currUser);
                sqlCmd.Parameters.AddWithValue("@courseName", "Kotlin");


                sqlCmd.ExecuteNonQuery();

                Response.Redirect("dashBoard.aspx");

            }
        }

        protected void Register_MatLab(object sender, EventArgs e)
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

                sqlCmd = new SqlCommand("registerNewCourse", con);
                sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
                sqlCmd.Parameters.AddWithValue("@userName", currUser);
                sqlCmd.Parameters.AddWithValue("@courseName", "MatLab");


                sqlCmd.ExecuteNonQuery();

                Response.Redirect("dashBoard.aspx");

            }
        }

        protected void Register_Swift(object sender, EventArgs e)
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

                sqlCmd = new SqlCommand("registerNewCourse", con);
                sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
                sqlCmd.Parameters.AddWithValue("@userName", currUser);
                sqlCmd.Parameters.AddWithValue("@courseName", "Swift");


                sqlCmd.ExecuteNonQuery();

                Response.Redirect("dashBoard.aspx");

            }
        }

        protected void Register_Clarity(object sender, EventArgs e)
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

                sqlCmd = new SqlCommand("registerNewCourse", con);
                sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
                sqlCmd.Parameters.AddWithValue("@userName", currUser);
                sqlCmd.Parameters.AddWithValue("@courseName", "Clarity");


                sqlCmd.ExecuteNonQuery();

                Response.Redirect("dashBoard.aspx");

            }
        }

        protected void Drop_Python(object sender, EventArgs e)
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

                sqlCmd = new SqlCommand("dropCourse", con);
                sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
                sqlCmd.Parameters.AddWithValue("@userName", currUser);
                sqlCmd.Parameters.AddWithValue("@courseName", "Python");


                sqlCmd.ExecuteNonQuery();

                Response.Redirect("dashBoard.aspx");
            }
        }

        protected void Drop_Ruby(object sender, EventArgs e)
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

                sqlCmd = new SqlCommand("dropCourse", con);
                sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
                sqlCmd.Parameters.AddWithValue("@userName", currUser);
                sqlCmd.Parameters.AddWithValue("@courseName", "Ruby");


                sqlCmd.ExecuteNonQuery();

                Response.Redirect("dashBoard.aspx");

            }
        }

        protected void Drop_JavaScript(object sender, EventArgs e)
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

                sqlCmd = new SqlCommand("dropCourse", con);
                sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
                sqlCmd.Parameters.AddWithValue("@userName", currUser);
                sqlCmd.Parameters.AddWithValue("@courseName", "JavaScript");


                sqlCmd.ExecuteNonQuery();

                Response.Redirect("dashBoard.aspx");

            }
        }
        protected void Drop_Swift(object sender, EventArgs e)
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

                sqlCmd = new SqlCommand("dropCourse", con);
                sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
                sqlCmd.Parameters.AddWithValue("@userName", currUser);
                sqlCmd.Parameters.AddWithValue("@courseName", "Swift");


                sqlCmd.ExecuteNonQuery();

                Response.Redirect("dashBoard.aspx");

            }
        }
        protected void Drop_MatLab(object sender, EventArgs e)
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

                sqlCmd = new SqlCommand("dropCourse", con);
                sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
                sqlCmd.Parameters.AddWithValue("@userName", currUser);
                sqlCmd.Parameters.AddWithValue("@courseName", "MatLab");


                sqlCmd.ExecuteNonQuery();

                Response.Redirect("dashBoard.aspx");

            }
        }
        protected void Drop_Clarity(object sender, EventArgs e)
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

                sqlCmd = new SqlCommand("dropCourse", con);
                sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
                sqlCmd.Parameters.AddWithValue("@userName", currUser);
                sqlCmd.Parameters.AddWithValue("@courseName", "Clarity");


                sqlCmd.ExecuteNonQuery();


                Response.Redirect("dashBoard.aspx");

            }
        }

        protected void Drop_Kotlin(object sender, EventArgs e)
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

                sqlCmd = new SqlCommand("dropCourse", con);
                sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
                sqlCmd.Parameters.AddWithValue("@userName", currUser);
                sqlCmd.Parameters.AddWithValue("@courseName", "Kotlin");


                sqlCmd.ExecuteNonQuery();

                Response.Redirect("dashBoard.aspx");

            }
        }
    }
}