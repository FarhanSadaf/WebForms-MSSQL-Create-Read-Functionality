using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PracticeCourses
{
    public partial class ListCourses : System.Web.UI.Page
    {
        //Get connection string from web.config file  
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //create new sqlconnection and connection to database by using connection string from web.config file  
                SqlConnection con = new SqlConnection(strcon);
                con.Open();

                SqlDataAdapter sda = new SqlDataAdapter("SELECT [Id], [Code], [Name], [Teacher1], [Teacher2], [Year], [Term] FROM Courses", con);
                DataTable dtbl = new DataTable();
                sda.Fill(dtbl);

                CoursesGridView.DataSource = dtbl;
                CoursesGridView.DataBind();

                // Close the connection
                con.Close();
}
            catch (Exception ex)
            {
                // Error message in alerts
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
        }

    }
}