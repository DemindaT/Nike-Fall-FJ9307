using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Bulk : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string connectionString = "Data Source=DEMINDAS-LAPTOP\\SQLEXPRESS;Initial Catalog=Nike-fall(FJ9307);Integrated Security=True";


                string SpecItem = Request.Form["SpecItem"];
                string Comment = Request.Form["Comment"];
                string Who = Request.Form["Who"];
                string What = Request.Form["What"];
                string When = Request.Form["When"];
                string ActionCreated = Request.Form["ActionCreated"];
                string CompletionStatus = Request.Form["CompletionStatus"];
                string ComComment = Request.Form["ComComment"];
                string StatusBy = Request.Form["StatusBy"];
                string StatusOn = Request.Form["StatusOn"];

                DateTime dateTime = DateTime.Parse(ActionCreated);

                // Save the image to the database
                HttpPostedFile imageFile = Request.Files["Image"];
                byte[] imageBytes = null;
                if (imageFile != null && imageFile.ContentLength > 0)
                {
                    using (BinaryReader reader = new BinaryReader(imageFile.InputStream))
                    {
                        imageBytes = reader.ReadBytes(imageFile.ContentLength);
                    }
                }

               
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    string query = "INSERT INTO StyleBriefing (SpecItem, Comment, Who, What, [When], ActionCreated, Image, CompletionStatus, ComComment, StatusBy, StatusOn) " +
                        "VALUES (@SpecItem, @Comment, @Who, @What, @When, @ActionCreated, @Image, @CompletionStatus, @ComComment, @StatusBy, @StatusOn)";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@SpecItem", SpecItem);
                        command.Parameters.AddWithValue("@Comment", Comment);
                        command.Parameters.AddWithValue("@Who", Who);
                        command.Parameters.AddWithValue("@Image", (object)imageBytes ?? DBNull.Value);
                        command.Parameters.AddWithValue("@What", What);
                        command.Parameters.AddWithValue("@When", When);
                        command.Parameters.AddWithValue("@ActionCreated", dateTime);
                        command.Parameters.AddWithValue("@CompletionStatus", CompletionStatus);
                        command.Parameters.AddWithValue("@ComComment", ComComment);
                        command.Parameters.AddWithValue("@StatusBy", StatusBy);
                        command.Parameters.AddWithValue("@StatusOn", StatusOn);

                        connection.Open();
                        command.ExecuteNonQuery();
                    }
                }

                ScriptManager.RegisterStartupScript(this, GetType(), "ShowSuccessMessage", "showSuccessMessage();", true);


            }
        }
    }
}