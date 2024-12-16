using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace kakatiyacements
{
    public partial class Login : System.Web.UI.Page
    {
        string connectionString = System.Configuration.ConfigurationManager.AppSettings["Connection"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginData_Click(object sender, EventArgs e)
        {
            string username = Page.Request.Form["username"]?.ToString();
            string password = Page.Request.Form["password"]?.ToString();


            if (!string.IsNullOrEmpty(username) && !string.IsNullOrEmpty(password))
            {//id, userName, password
                MySqlConnection connection = new MySqlConnection(connectionString);
                MySqlCommand command = new MySqlCommand("SELECT * FROM user where userName=@userName and password=@password", connection);
                command.Parameters.AddWithValue("@userName", username);
                command.Parameters.AddWithValue("@password", password);
                DataSet dataSet = new DataSet();

                try
                {
                    connection.Open();
                    MySqlDataAdapter adapter = new MySqlDataAdapter(command);
                    adapter.Fill(dataSet);
                    if (dataSet != null && dataSet.Tables.Count > 0 && dataSet.Tables[0].Rows.Count > 0)
                    {
                        Session["Id"] = dataSet.Tables[0].Rows[0]["Id"].ToString();
                        Session["Username"] = username;
                        Session["IsLoggedIn"] = true;
                       var Designation= dataSet.Tables[0].Rows[0]["Designation"].ToString();
                        if (Designation == "Admin")
                        {
                            Session["Designation"] = dataSet.Tables[0].Rows[0]["Designation"].ToString();
                            Response.Redirect("admin/AddUser.aspx", false);
                        }
                        if(Designation == "Hr")
                        {
                            Response.Redirect("HrData/JobDescription.aspx", false);
                        }
                        if (Designation == "Investor")
                        {
                            Response.Redirect("admin/AddDisclosure.aspx", false);
                        }

                        //Investor
                    }
                    else
                    {
                        string script = "<script type='text/javascript'>alert('Enter Correct Details');</script>";
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "showAlert", script);
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