using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace kakatiyacements
{
    public partial class Recovery : System.Web.UI.Page
    {
        string connectionString = System.Configuration.ConfigurationManager.AppSettings["Connection"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected async void recovery_Click(object sender, EventArgs e)
        {
            string userName = Page.Request.Form["username"].ToString();

            MySqlConnection connection = new MySqlConnection(connectionString);
            MySqlCommand command = new MySqlCommand("SELECT * FROM user where UserName=@userName", connection);
            command.Parameters.AddWithValue("@userName", userName);

            DataSet dataSet = new DataSet();

            try
            {
                connection.Open();
                MySqlDataAdapter adapter = new MySqlDataAdapter(command);
                adapter.Fill(dataSet);
                if (dataSet != null && dataSet.Tables.Count > 0 && dataSet.Tables[0].Rows.Count > 0)
                {
                    var data = "";
                    for (int i = 0; i < dataSet.Tables[0].Rows.Count; i++)
                    {
                        data = dataSet.Tables[0].Rows[i]["password"].ToString();
                    }
                    await SendMail(userName, data);
                    Response.Redirect("login.aspx", false);
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
        protected async Task SendMail(string username, string data)
        {
            MailMessage userEmail = new MailMessage(System.Configuration.ConfigurationManager.AppSettings["Email"].ToString(), username);
            userEmail.Subject = "Login Details";
           
               // userEmail.CC.Add(mailId);

            userEmail.Body = "<table><tr><th>User Name :</th><td>" + username + "</td></tr><tr><th>Password :</th><td>" + data + "</td></tr></table>";
            userEmail.IsBodyHtml = true;
            SmtpClient smtpClientuser = new SmtpClient("smtp.gmail.com", 587);
            smtpClientuser.Timeout = 1000000;
            smtpClientuser.EnableSsl = true;
            smtpClientuser.DeliveryMethod = SmtpDeliveryMethod.Network;
            NetworkCredential networkCredentialuser = new NetworkCredential(System.Configuration.ConfigurationManager.AppSettings["Email"].ToString(), System.Configuration.ConfigurationManager.AppSettings["Password"].ToString());
            smtpClientuser.UseDefaultCredentials = true;
            smtpClientuser.Credentials = networkCredentialuser;
            smtpClientuser.Send(userEmail);
        }
    }
}