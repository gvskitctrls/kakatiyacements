using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace kakatiyacements
{
    public partial class contact_us : System.Web.UI.Page
    {
        string connectionString = System.Configuration.ConfigurationManager.AppSettings["Connection"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            string captchaData = Page.Request.Form["captchaData"].ToString();
            if (!string.IsNullOrEmpty(captchaData) && VerifyCaptcha(captchaData))
            {
                string name = Page.Request.Form["name"].ToString();
                string email = Page.Request.Form["email"].ToString();
                string phone = Page.Request.Form["phone"].ToString();
                string subject = Page.Request.Form["subject"].ToString();
                string message = Page.Request.Form["message"].ToString();
                MySqlConnection connection = new MySqlConnection(connectionString);
                MySqlCommand command = new MySqlCommand("INSERT INTO ContactData (name, email, phone, subject, message) VALUES(@name, @email, @phone, @subject, @message)", connection);
                command.Parameters.AddWithValue("@name", name);
                command.Parameters.AddWithValue("@email", email);
                command.Parameters.AddWithValue("@phone", phone);
                command.Parameters.AddWithValue("@subject", subject);
                command.Parameters.AddWithValue("@message", message);
                try
                {
                    connection.Open();
                    int rowsAffected = command.ExecuteNonQuery();
                    if (rowsAffected > 0) {
                        MailMessage userEmail = new MailMessage(System.Configuration.ConfigurationManager.AppSettings["Email"].ToString(), email);
                        userEmail.Subject = "Feedback";
                        userEmail.Body = "Thank you for reaching us. We'll be in touch with you very soon....!<br><br>" +
                            "Regards,<br>" +
                            "This email is generated from contact-us page.";
                        // userEmail.CC.Add(mailId);
                        userEmail.IsBodyHtml = true;
                        SmtpClient smtpClientuser = new SmtpClient("smtp.gmail.com", 587);
                        smtpClientuser.Timeout = 1000000;
                        smtpClientuser.EnableSsl = true;
                        smtpClientuser.DeliveryMethod = SmtpDeliveryMethod.Network;
                        NetworkCredential networkCredentialuser = new NetworkCredential(System.Configuration.ConfigurationManager.AppSettings["Email"].ToString(), System.Configuration.ConfigurationManager.AppSettings["Password"].ToString());
                        smtpClientuser.UseDefaultCredentials = true;
                        smtpClientuser.Credentials = networkCredentialuser;
                        smtpClientuser.Send(userEmail);
                        Response.Redirect("index.html");
                    }
                    else {  }
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
        private bool VerifyCaptcha(string captchaResponse)
        {
            using (var client = new WebClient())
            {
                // Secret key obtained from Google reCAPTCHA dashboard
                string secretKey = "6Lc54MwpAAAAAM5dlnyXwuzjaOJ-vfskAgDR51_m"; // Replace with your actual secret key

                // Construct the request parameters
                var values = new NameValueCollection
           {
               { "secret", secretKey },
               { "response", captchaResponse }
           };

                // Send the request to Google reCAPTCHA API
                var response = client.UploadValues("https://www.google.com/recaptcha/api/siteverify", values);

                // Parse the response from Google
                var responseString = System.Text.Encoding.Default.GetString(response);
                dynamic responseObject = Newtonsoft.Json.JsonConvert.DeserializeObject(responseString);

                // Check if reCAPTCHA verification was successful
                return responseObject.success == "true";
            }
        }
    }
}