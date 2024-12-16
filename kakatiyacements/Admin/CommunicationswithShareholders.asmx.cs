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
    /// Summary description for CommunicationswithShareholders
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class CommunicationswithShareholders : System.Web.Services.WebService
    {

        string connectionString = System.Configuration.ConfigurationManager.AppSettings["Connection"].ToString();
        [WebMethod]
        [SoapDocumentMethod]
        public DataSet CommunicationswithShareholdersData()
        {
            MySqlConnection connection = new MySqlConnection(connectionString);
            MySqlCommand command = new MySqlCommand("SELECT * FROM CommunicationswithShareholders ", connection);
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
        // id,  Title, Path
        public string updateCommunicationswithShareholdersData(string Title, int id)
        {
            MySqlConnection connection = new MySqlConnection(connectionString);
            MySqlCommand command = new MySqlCommand("UPDATE CommunicationswithShareholders SET Title = @Title WHERE id = @id", connection);
            command.Parameters.AddWithValue("@Title", Title);
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
        public string deleteCommunicationswithShareholdersData(int id)
        {
            MySqlConnection connection = new MySqlConnection(connectionString);
            MySqlCommand command = new MySqlCommand("DELETE FROM CommunicationswithShareholders WHERE id = @id", connection);
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
    }
}
