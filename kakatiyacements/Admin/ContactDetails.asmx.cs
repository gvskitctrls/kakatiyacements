using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;

namespace kakatiyacements.Admin
{
    /// <summary>
    /// Summary description for ContactDetails
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class ContactDetails : System.Web.Services.WebService
    {

        string connectionString = System.Configuration.ConfigurationManager.AppSettings["Connection"].ToString();
        [WebMethod]
        [SoapDocumentMethod]
        public DataSet ContactDetailsData()
        {
            MySqlConnection connection = new MySqlConnection(connectionString);
            MySqlCommand command = new MySqlCommand("SELECT * FROM ContactDetails", connection);
            DataSet dataSet = new DataSet();

            try
            {
                connection.Open();
                MySqlDataAdapter adapter = new MySqlDataAdapter(command);
                adapter.Fill(dataSet);
                return dataSet;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
                return null;
            }
            finally
            {
                connection.Close();
            }
        }

        [WebMethod]
        [SoapDocumentMethod]
        //id, name, designation, Address, Number, mail
        public string updateContactDetailsData(string name, string designation, string Address, string Number, string mail, int id)
        {
            MySqlConnection connection = new MySqlConnection(connectionString);
            MySqlCommand command = new MySqlCommand("UPDATE ContactDetails SET name = @name,designation =@designation,Address =@Address,Number =@Number,mail =@mail WHERE id = @id", connection);
            command.Parameters.AddWithValue("@name", name);
            command.Parameters.AddWithValue("@designation", designation);
            command.Parameters.AddWithValue("@Address", Address);
            command.Parameters.AddWithValue("@Number", Number);
            command.Parameters.AddWithValue("@mail", mail);
            command.Parameters.AddWithValue("@id", id);

            try
            {
                connection.Open();
                int rowsAffected = command.ExecuteNonQuery();
                if (rowsAffected > 0) { return "Updated"; }
                else { return "No Record"; }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
                return "error";
            }
            finally
            {
                connection.Close();
            }

        }
        [WebMethod]
        [SoapDocumentMethod]
        public string deleteContactDetailsData(int id)
        {
            MySqlConnection connection = new MySqlConnection(connectionString);
            MySqlCommand command = new MySqlCommand("DELETE FROM ContactDetails WHERE id = @id", connection);
            command.Parameters.AddWithValue("@id", id);
            try
            {
                connection.Open();
                int rowsAffected = command.ExecuteNonQuery();
                if (rowsAffected > 0) { return "Deleted"; }
                else { return "No Record"; }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
                return "error";
            }
            finally
            {
                connection.Close();
            }
        }
        [WebMethod]
        [SoapDocumentMethod]
        //id, name, designation, Address, Number, mail
        public string ContactDetailsDataInsert(string name, string designation, string Address, string Number, string mail)
        {
            MySqlConnection connection = new MySqlConnection(connectionString);
            MySqlCommand command = new MySqlCommand("INSERT INTO ContactDetails(name, designation, Address, Number, mail) VALUES(@name, @designation, @Address, @Number, @mail)", connection);
            command.Parameters.AddWithValue("@name", name);
            command.Parameters.AddWithValue("@designation", designation);
            command.Parameters.AddWithValue("@Address", Address);
            command.Parameters.AddWithValue("@Number", Number);
            command.Parameters.AddWithValue("@mail", mail);
            try
            {
                connection.Open();
                int rowsAffected = command.ExecuteNonQuery();
                if (rowsAffected > 0) { return "Inserted"; }
                else { return "No Record inserted"; }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
                return "error";
            }
            finally
            {
                connection.Close();
            }
        }
    }
}
