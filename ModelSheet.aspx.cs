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
    public partial class ModelSheet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string connectionString = "Data Source=DEMINDAS-LAPTOP\\SQLEXPRESS;Initial Catalog=Nike-fall(FJ9307);Integrated Security=True";


        
                string Placment = Request.Form["Placment"];
                string CutPanel = Request.Form["CutPanel"];
                string Description = Request.Form["Description"];
                string CutQty = Request.Form["CutQty"];
                string Pair = Request.Form["Pair"];
                string OtherComments = Request.Form["OtherComments"];
                string CutWay = Request.Form["CutWay"];
                string ManualCutType = Request.Form["ManualCutType"];
                string ManualCut2 = Request.Form["ManualCut2"];

            
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
                    string query = "INSERT INTO ModelSheet (Placment, CutPanel, Image,Description, CutQty, Pair, OtherComments, CutWay, ManualCutType, ManualCut2) " +
                        "VALUES (@Placment, @CutPanel, @Image, @Description, @CutQty, @Pair, @OtherComments, @CutWay, @ManualCutType, @ManualCut2)";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("Placment", Placment);
                        command.Parameters.AddWithValue("@CutPanel", CutPanel);
                        command.Parameters.AddWithValue("@Description", Description);
                        command.Parameters.AddWithValue("@Image", (object)imageBytes ?? DBNull.Value);
                        command.Parameters.AddWithValue("@CutQty", CutQty);
                        command.Parameters.AddWithValue("@Pair", Pair);
                        command.Parameters.AddWithValue("@OtherComments", OtherComments);
                        command.Parameters.AddWithValue("@CutWay", CutWay);
                        command.Parameters.AddWithValue("@ManualCutType", ManualCutType);
                        command.Parameters.AddWithValue("@ManualCut2", ManualCut2);

                        connection.Open();
                        command.ExecuteNonQuery();
                    }
                }

                ScriptManager.RegisterStartupScript(this, GetType(), "ShowSuccessMessage", "showSuccessMessage();", true);


            }
        }

    }
    }
