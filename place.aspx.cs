using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class place : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {

                string Cutpanel = Request.Form["Cutpanel"];
                string minWidth = Request.Form["MinWidth1"];
                string wuom = Request.Form["WUOM"];
                string placement = Request.Form["placement"];
                string product = Request.Form["Product"];
                string comment = Request.Form["Comment"];
                string muom = Request.Form["muom"];
                string cwidth = Request.Form["cwidth"];
                string stripe = Request.Form["Stripe"];
                string stripel = Request.Form["stripel"];
                string bindingFold = Request.Form["bindingFold"];
                string bindingFinish = Request.Form["bindingFinish"];
                string NOSGarment = Request.Form["NOSGarment"];
                string GradedCons = Request.Form["GradedCons"];
                string UOM = Request.Form["UOM"];

                string connectionString = "Data Source=DEMINDAS-LAPTOP\\SQLEXPRESS;Initial Catalog=Nike-fall(FJ9307);Integrated Security=True";
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    string query = "INSERT INTO Placements (Cutpanel, MinWidth, WUOM, Placement, Product, Comment, MUOM, CWidth, StripeD, StripeL, BindingFold, BindingFinish, NumStrips, GradedConsum, UOM) " +
                        "VALUES (@Cutpanel, @MinWidth, @WUOM, @Placement, @Product, @Comment, @MUOM, @CWidth, @StripeD, @StripeL, @BindingFold, @BindingFinish, @NOSGarment, @GradedCons, @UOM)";

                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@Cutpanel", Cutpanel);
                        command.Parameters.AddWithValue("@MinWidth", minWidth);
                        command.Parameters.AddWithValue("@WUOM", wuom);
                        command.Parameters.AddWithValue("@Placement", placement);
                        command.Parameters.AddWithValue("@Product", product);
                        command.Parameters.AddWithValue("@Comment", comment);
                        command.Parameters.AddWithValue("@MUOM", muom);
                        command.Parameters.AddWithValue("@CWidth", cwidth);
                        command.Parameters.AddWithValue("@StripeD", stripe);
                        command.Parameters.AddWithValue("@StripeL", stripel);
                        command.Parameters.AddWithValue("@BindingFold", bindingFold);
                        command.Parameters.AddWithValue("@BindingFinish", bindingFinish);
                        command.Parameters.AddWithValue("@NOSGarment", NOSGarment);
                        command.Parameters.AddWithValue("@GradedCons", GradedCons);
                        command.Parameters.AddWithValue("@UOM", UOM);

                        connection.Open();
                        command.ExecuteNonQuery();
                    }
                }

                ScriptManager.RegisterStartupScript(this, GetType(), "ShowSuccessMessage", "showSuccessMessage();", true);
            }
        }
                
            }


    }
    
