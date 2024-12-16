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
    /// Summary description for BoardOfDirectorsData
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class BoardOfDirectorsData : System.Web.Services.WebService
    {

        string connectionString = System.Configuration.ConfigurationManager.AppSettings["Connection"].ToString();
        [WebMethod]
        [SoapDocumentMethod]
        public DataSet BoardMembersData()
        {
            MySqlConnection connection = new MySqlConnection(connectionString);
            MySqlCommand command = new MySqlCommand("SELECT * FROM BoardOfDirectors", connection);
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
        //Designation, Name, Role, ParentId, id
        public string updateBoardMembers(string Designation, string Name, string Role, int id)
        {
            MySqlConnection connection = new MySqlConnection(connectionString);
            MySqlCommand command = new MySqlCommand("UPDATE BoardOfDirectors SET Designation = @Designation,Name =@Name,Role =@Role WHERE id = @id", connection);
            command.Parameters.AddWithValue("@Designation", Designation);
            command.Parameters.AddWithValue("@Name", Name);
            command.Parameters.AddWithValue("@Role", Role);
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
        public string deleteBoardMembersData(int id)
        {
            MySqlConnection connection = new MySqlConnection(connectionString);
            MySqlCommand command = new MySqlCommand("DELETE FROM BoardOfDirectors WHERE id = @id", connection);
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
        //Designation, Name, Role, ParentId, id
        public string BoardMembersDataInsert(string Designation, string Name, string Role, int ParentId)
        {
            MySqlConnection connection = new MySqlConnection(connectionString);
            MySqlCommand command = new MySqlCommand("INSERT INTO BoardOfDirectors(Designation, Name, Role, ParentId) VALUES(@Designation, @Name, @Role, @ParentId)", connection);
            command.Parameters.AddWithValue("@Designation", Designation);
            command.Parameters.AddWithValue("@Name", Name);
            command.Parameters.AddWithValue("@Role", Role);
            command.Parameters.AddWithValue("@ParentId", ParentId);
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
