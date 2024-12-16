using kakatiyacements.Admin;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Reflection;
using System.Runtime.InteropServices.ComTypes;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace kakatiyacements
{
    public partial class careers : System.Web.UI.Page
    {
        string connectionString = System.Configuration.ConfigurationManager.AppSettings["Connection"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null && Request.QueryString["id"] != string.Empty)
            {
                string queryString = Request.QueryString.ToString();

                NameValueCollection queryParams = HttpUtility.ParseQueryString(queryString);
                string name = queryParams["id"];
                int startIndex = name.IndexOf("'");

                int endIndex = name.IndexOf("'", startIndex + 1);
                string extractedValue = name.Substring(startIndex + 1, endIndex - startIndex - 1);
                dataId.Value = extractedValue;
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

        protected void submit_Click(object sender, EventArgs e)
        {//id, name, email, phone, subject, Path, PreferredLocation, CurrentLocation, TotalExperience, DOB, CurrentCTC, ExpectedCTC, NoticePeriod
            string captchaData = Page.Request.Form["captchaData"].ToString();
            if (!string.IsNullOrEmpty(captchaData) && VerifyCaptcha(captchaData))
            {
                if (fileUpload.HasFile)
                {//id, name, email, phone, subject, Path, PreferredLocation, CurrentLocation, TotalExperience, DOB, CurrentCTC, ExpectedCTC, NoticePeriod
                    string name = Page.Request.Form["name"].ToString();
                    string email = Page.Request.Form["email"].ToString();
                    string phone = Page.Request.Form["phone"].ToString();
                    string subject = Page.Request.Form["subject"].ToString();
                    string PreferredLocation = Page.Request.Form["PreferredLocation"].ToString();
                    string CurrentLocation = Page.Request.Form["CurrentLocation"].ToString();
                    string TotalExperience = Page.Request.Form["TotalExperience"].ToString();
                    string DOB = Page.Request.Form["DOB"].ToString();
                    string CurrentCTC = Page.Request.Form["CurrentCTC"].ToString();
                    string ExpectedCTC = Page.Request.Form["ExpectedCTC"].ToString();
                    string NoticePeriod = Page.Request.Form["NoticePeriod"].ToString();
                    MySqlConnection connection = new MySqlConnection(connectionString);
                    string uploadFolderRelative = "Careers/";
                    string uploadFolderPhysical = Server.MapPath(uploadFolderRelative);
                    string fileName = Path.GetFileName(fileUpload.FileName);
                    string filePath = Path.Combine(uploadFolderPhysical, fileName);
                    string path = "Careers/" + fileName;
                    try
                    {
                        fileUpload.SaveAs(filePath);
                        //id, Title, Path
                        MySqlCommand command = new MySqlCommand("INSERT INTO career(name, email, phone, subject, Path, PreferredLocation, CurrentLocation, TotalExperience, DOB, CurrentCTC, ExpectedCTC, NoticePeriod) VALUES(@name, @email, @phone, @subject, @Path, @PreferredLocation, @CurrentLocation, @TotalExperience, @DOB, @CurrentCTC, @ExpectedCTC, @NoticePeriod)", connection);
                        command.Parameters.AddWithValue("@name", name);
                        command.Parameters.AddWithValue("@email", email);
                        command.Parameters.AddWithValue("@phone", phone);
                        command.Parameters.AddWithValue("@subject", subject);
                        command.Parameters.AddWithValue("@Path", path);
                        command.Parameters.AddWithValue("@PreferredLocation", PreferredLocation);
                        command.Parameters.AddWithValue("@CurrentLocation", CurrentLocation);
                        command.Parameters.AddWithValue("@TotalExperience", TotalExperience);
                        command.Parameters.AddWithValue("@DOB", DOB);
                        command.Parameters.AddWithValue("@CurrentCTC", CurrentCTC);
                        command.Parameters.AddWithValue("@ExpectedCTC", ExpectedCTC);
                        command.Parameters.AddWithValue("@NoticePeriod", NoticePeriod);
                        connection.Open();
                        int rowsAffected = command.ExecuteNonQuery();
                        if (rowsAffected > 0)
                        {
                            MailMessage userEmail = new MailMessage(System.Configuration.ConfigurationManager.AppSettings["Email"].ToString(), email);
                            userEmail.Subject = "Careers";
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
                            MailMessage userEmailAdmin = new MailMessage(System.Configuration.ConfigurationManager.AppSettings["Email"].ToString(), "hr@itctrls.com");
                            userEmailAdmin.Subject = "Career Details";
                            Attachment attachment = new Attachment(filePath);
                            userEmailAdmin.Attachments.Add(attachment);
                            userEmailAdmin.Body = "<table><tr><th>Name</th><td>:</td>" + name + "<td></td></tr> <tr><th>Email</th><td>:</td><td>" + email + "</td></tr><tr><th>Phone Number</th><td>:</td><td>" + phone + "</td></tr><tr><th>Subject</th><td>:</td><td>" + subject + "</td></tr><tr><th>Preferred Location</th><td>:</td>" + PreferredLocation + "<td></td></tr> <tr><th>Current Location</th><td>:</td><td>" + CurrentLocation + "</td></tr><tr><th>Total Experience</th><td>:</td><td>" + TotalExperience + "</td></tr><tr><th>DOB</th><td>:</td><td>" + DOB + "</td></tr><tr><th>Current CTC</th><td>:</td>" + CurrentCTC + "<td></td></tr> <tr><th>Expected CTC</th><td>:</td><td>" + ExpectedCTC + "</td></tr><tr><th>Notice Period</th><td>:</td><td>" + NoticePeriod + "</td></tr></table>";
                            userEmailAdmin.IsBodyHtml = true;
                            SmtpClient smtpClientAdmin = new SmtpClient("smtp.gmail.com", 587);
                            smtpClientAdmin.Timeout = 1000000;
                            smtpClientAdmin.EnableSsl = true;
                            smtpClientAdmin.DeliveryMethod = SmtpDeliveryMethod.Network;
                            NetworkCredential networkCredentialAdmin = new NetworkCredential(System.Configuration.ConfigurationManager.AppSettings["Email"].ToString(), System.Configuration.ConfigurationManager.AppSettings["Password"].ToString());
                            smtpClientAdmin.UseDefaultCredentials = true;
                            smtpClientAdmin.Credentials = networkCredentialAdmin;
                            smtpClientAdmin.Send(userEmailAdmin);
                            Response.Redirect("index.html");
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
}