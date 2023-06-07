using System;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Web;
using System.Web.UI;

namespace WebApplication2
{
    public partial class document : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string connectionString = "Data Source=DEMINDAS-LAPTOP\\SQLEXPRESS;Initial Catalog=Nike-fall(FJ9307);Integrated Security=True";


                // Get the form inputs
                string D3 = Request.Form["D3"];
                string revision = Request.Form["revision"];
                string parent = Request.Form["parent"];
                string parentType = Request.Form["parentType"];
                string latestRevision = Request.Form["latest"];
                string revisionDate = Request.Form["revisionDate"];
                string documentLink = Request.Form["link"];

                // Save the image to the database
                HttpPostedFile imageFile = Request.Files["imageFile"];
                byte[] imageBytes = null;
                if (imageFile != null && imageFile.ContentLength > 0)
                {
                    using (BinaryReader reader = new BinaryReader(imageFile.InputStream))
                    {
                        imageBytes = reader.ReadBytes(imageFile.ContentLength);
                    }
                }

                // Save the document as a file
                HttpPostedFile documentFile = Request.Files["document"];
                byte[] documentBytes = null;
                if (documentFile != null && documentFile.ContentLength > 0)
                {
                    using (BinaryReader reader = new BinaryReader(documentFile.InputStream))
                    {
                        documentBytes = reader.ReadBytes(documentFile.ContentLength);
                    }
                }

                // Save the file as a file
                HttpPostedFile fileUpload = Request.Files["fileUpload"];
                byte[] fileBytes = null;
                if (fileUpload != null && fileUpload.ContentLength > 0)
                {
                    using (BinaryReader reader = new BinaryReader(fileUpload.InputStream))
                    {
                        fileBytes = reader.ReadBytes(fileUpload.ContentLength);
                    }
                }

                // Insert the data into the database
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    string query = "INSERT INTO Documents ([Document], [File], Revision, Image, [3D], Parent, Parentype, Latest, RevisionDate, Link) " +
                        "VALUES (@Document, @File, @Revision, @Image, @D3, @Parent, @Parentype, @Latest, @RevisionDate, @Link)";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@Document", (object)documentBytes ?? DBNull.Value);
                        command.Parameters.AddWithValue("@File", (object)fileBytes ?? DBNull.Value);
                        command.Parameters.AddWithValue("@Revision", revision);
                        command.Parameters.AddWithValue("@Image", (object)imageBytes ?? DBNull.Value);
                        command.Parameters.AddWithValue("@D3", D3);
                        command.Parameters.AddWithValue("@Parent", parent);
                        command.Parameters.AddWithValue("@Parentype", parentType);
                        command.Parameters.AddWithValue("@Latest", latestRevision);
                        command.Parameters.AddWithValue("@RevisionDate", revisionDate);
                        command.Parameters.AddWithValue("@Link", documentLink);

                        connection.Open();
                        command.ExecuteNonQuery();
                    }
                }

                ScriptManager.RegisterStartupScript(this, GetType(), "ShowSuccessMessage", "showSuccessMessage();", true);


            }
        }
    }
}
