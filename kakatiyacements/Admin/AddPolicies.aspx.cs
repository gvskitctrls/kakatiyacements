using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace kakatiyacements.Admin
{
    public partial class AddPolicies : System.Web.UI.Page
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
                string Title = Page.Request.Form["Title"].ToString();
                MySqlConnection connection = new MySqlConnection(connectionString);
                string uploadFolderRelative = "investors/Policies/";
                string uploadFolderPhysical = Server.MapPath(uploadFolderRelative);
                string fileName = Path.GetFileName(fileUpload.FileName);
                string filePath = Path.Combine(uploadFolderPhysical, fileName);
                string path = "Admin/investors/Policies/" + fileName;
                try
                {
                    fileUpload.SaveAs(filePath);
                    //id, Title, Path
                    MySqlCommand command = new MySqlCommand("INSERT INTO AddPolicies(Title, Path) VALUES(@Title, @Path)", connection);
                    command.Parameters.AddWithValue("@Title", Title);
                    command.Parameters.AddWithValue("@Path", path);
                    connection.Open();
                    int rowsAffected = command.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        Response.Redirect("AddPolicies.aspx",false);
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