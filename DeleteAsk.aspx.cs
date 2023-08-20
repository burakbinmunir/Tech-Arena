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
    public partial class DeleteAsk : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RedirectToConfirmation(object sender, EventArgs e)
        {
            Response.Redirect("DeleteProfile.aspx");
        }
        protected void CancelButton_Clicked(object sender, EventArgs e)
        {
            Response.Redirect("UserProfile.aspx");
        }

        
    }
}