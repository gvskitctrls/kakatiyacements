using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace kakatiyacements.Admin
{
    public partial class AddDisclosure : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["IsLoggedIn"] != null && (bool)Session["IsLoggedIn"])
            {
                string username = Session["Username"].ToString();
                string Designation = Session["Designation"].ToString();
                userDetails.InnerHtml = username;
                if (Designation == "Admin")
                {
                    adminListItem.Visible = true; // Show the list item
                }
                else
                {
                    adminListItem.Visible = false; // Hide the list item
                }
            }
            else
            {
                Response.Redirect("../login.aspx");
            }

        }
    }
}