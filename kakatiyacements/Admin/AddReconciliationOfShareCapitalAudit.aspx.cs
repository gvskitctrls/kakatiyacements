using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace kakatiyacements.Admin
{
    public partial class AddReconciliationOfShareCapitalAudit : System.Web.UI.Page
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

        protected void save_Click(object sender, EventArgs e)
        {
            string connectionString = System.Configuration.ConfigurationManager.AppSettings["Connection"].ToString();
            if (fileUpload.HasFile)
            {
                string StratYear = Page.Request.Form["StratYear"].ToString();
                string EndYear = Page.Request.Form["EndYear"].ToString();
                string Quaterly = Page.Request.Form["Quaterly"].ToString();
                MySqlConnection connection = new MySqlConnection(connectionString);
                string uploadFolderRelative = "investors/ReconciliationOfShareCapitalAudit/";
                string uploadFolderPhysical = Server.MapPath(uploadFolderRelative);
                string fileName = Path.GetFileName(fileUpload.FileName);
                string filePath = Path.Combine(uploadFolderPhysical, fileName);
                string path = "Admin/investors/ReconciliationOfShareCapitalAudit/" + fileName;
                try
                {
                    fileUpload.SaveAs(filePath);
                    //id, Title, Path
                    MySqlCommand command = new MySqlCommand("INSERT INTO ReconciliationOfShareCapitalAudit(StratYear, EndYear, Quaterly, Path) VALUES(@StratYear, @EndYear, @Quaterly, @Path)", connection);
                    command.Parameters.AddWithValue("@StratYear", StratYear);
                    command.Parameters.AddWithValue("@EndYear", EndYear);
                    command.Parameters.AddWithValue("@Quaterly", Quaterly);
                    command.Parameters.AddWithValue("@Path", path);
                    connection.Open();
                    int rowsAffected = command.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        Response.Redirect("AddReconciliationOfShareCapitalAudit.aspx", false);
                    }


                }

                catch (Exception ex)
                {
                    Console.WriteLine(ex);

                }
                finally
                {
                    connection.Close();
                }
            }
        }
    }
}