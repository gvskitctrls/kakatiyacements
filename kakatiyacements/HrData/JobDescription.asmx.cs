using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Xml.Linq;
using static Google.Protobuf.Reflection.SourceCodeInfo.Types;

namespace kakatiyacements.HrData
{
    /// <summary>
    /// Summary description for JobDescription1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
     [System.Web.Script.Services.ScriptService]
    public class JobDescription1 : System.Web.Services.WebService
    {
        string connectionString = System.Configuration.ConfigurationManager.AppSettings["Connection"].ToString();
        [WebMethod]
        [SoapDocumentMethod]
        public DataSet DetailsofCareerData()
        {
            MySqlConnection connection = new MySqlConnection(connectionString);
            MySqlCommand command = new MySqlCommand("SELECT * FROM CareerData order by id  desc", connection);
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
        //id, JobDescription, PointsWise, OpenPositions, EducationalQualification, PreferableQualification, SkillsRequired, WorkExperience, Location, Postedon, Title
        public string updateCareerData(string JobDescription,string PointsWise,string OpenPositions,string EducationalQualification,string PreferableQualification,string SkillsRequired,string WorkExperience,string Location, string Postedon, string Title, int id)
        {
            MySqlConnection connection = new MySqlConnection(connectionString);
            MySqlCommand command = new MySqlCommand("UPDATE CareerData SET JobDescription = @JobDescription,PointsWise =@PointsWise,OpenPositions =@OpenPositions,EducationalQualification =@EducationalQualification,PreferableQualification =@PreferableQualification,SkillsRequired = @SkillsRequired,WorkExperience =@WorkExperience,Location =@Location,Postedon =@Postedon,Title =@Title WHERE id = @id", connection);
            command.Parameters.AddWithValue("@JobDescription", JobDescription);
            command.Parameters.AddWithValue("@PointsWise", PointsWise);
            command.Parameters.AddWithValue("@OpenPositions", OpenPositions);
            command.Parameters.AddWithValue("@EducationalQualification", EducationalQualification);
            command.Parameters.AddWithValue("@PreferableQualification", PreferableQualification);
              command.Parameters.AddWithValue("@SkillsRequired", SkillsRequired);
            command.Parameters.AddWithValue("@WorkExperience", WorkExperience);
            command.Parameters.AddWithValue("@Location", Location);
            command.Parameters.AddWithValue("@Postedon", Postedon);
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
        public string deleteCareerData(int id)
        {
            MySqlConnection connection = new MySqlConnection(connectionString);
            MySqlCommand command = new MySqlCommand("DELETE FROM CareerData WHERE id = @id", connection);
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
        //id, JobDescription, PointsWise, OpenPositions, EducationalQualification, PreferableQualification, SkillsRequired, WorkExperience, Location, Postedon, Title
        public string CareerDataInsert(string JobDescription, string PointsWise,string OpenPositions, string EducationalQualification,string PreferableQualification,string  SkillsRequired,string WorkExperience,string Location,string Postedon,string Title)
        {
            MySqlConnection connection = new MySqlConnection(connectionString);
            MySqlCommand command = new MySqlCommand("INSERT INTO CareerData(JobDescription, PointsWise, OpenPositions, EducationalQualification, PreferableQualification, SkillsRequired, WorkExperience, Location, Postedon, Title) VALUES(@JobDescription, @PointsWise, @OpenPositions, @EducationalQualification, @PreferableQualification, @SkillsRequired, @WorkExperience, @Location, @Postedon, @Title)", connection);
            command.Parameters.AddWithValue("@JobDescription", JobDescription);
            command.Parameters.AddWithValue("@PointsWise", PointsWise);
            command.Parameters.AddWithValue("@OpenPositions", OpenPositions);
            command.Parameters.AddWithValue("@EducationalQualification", EducationalQualification);
            command.Parameters.AddWithValue("@PreferableQualification", PreferableQualification);
            command.Parameters.AddWithValue("@SkillsRequired", SkillsRequired);
            command.Parameters.AddWithValue("@WorkExperience", WorkExperience);
            command.Parameters.AddWithValue("@Location", Location);
            command.Parameters.AddWithValue("@Postedon", Postedon);
            command.Parameters.AddWithValue("@Title", Title);
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
