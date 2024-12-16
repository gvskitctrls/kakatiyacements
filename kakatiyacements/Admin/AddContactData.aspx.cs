using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace kakatiyacements.Admin
{
    public partial class AddContactData : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["IsLoggedIn"] != null && (bool)Session["IsLoggedIn"])
            {
                string username = Session["Username"].ToString();
                userDetails.InnerHtml = username;
            }
            else
            {
                Response.Redirect("../login.aspx");
            }
        }
    }
}