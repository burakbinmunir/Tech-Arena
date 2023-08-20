using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Latest_Work
{
    public partial class Portfolio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void EditCode_Click(object sender,EventArgs e)
        {
            Response.Redirect("SearchCode.aspx");
        }

        protected void DeleteCode_Click(object sender,EventArgs e)
        {
            Response.Redirect("SearchCode.aspx");
        }
    }
}