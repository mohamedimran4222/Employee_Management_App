using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class add_employee : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       


        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }

    protected void Button1_Click(object sender, EventArgs e)



    {
      

        SqlConnection con = new SqlConnection("Data Source=LAPTOP-4QQCKQNB\\SQLEXPRESS;Initial Catalog=emp_list;Integrated Security=True");
        
        SqlCommand cmd = new SqlCommand("spEmployeedetails", con);
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.Parameters.Clear();
        cmd.Parameters.AddWithValue("@emp_fname", txtFname.Text);
        cmd.Parameters.AddWithValue("@emp_sname", txtSname.Text);
        cmd.Parameters.AddWithValue("@email", txtEmail.Text);

        
        cmd.Parameters.AddWithValue("@address", txtAdd.Text);
       
        cmd.Parameters.AddWithValue("@contact_number", txtPhone.Text);

     


        try
        {
            con.Open();
            cmd.ExecuteNonQuery();

            Console.WriteLine("Records Inserted Successfully");

        }
        catch (System.Data.SqlClient.SqlException ex)
        {
            string msg = "Insert Error";
            msg += ex.Message;
            throw new Exception(msg);
        }
        finally
        {
            con.Close();



        }

        //Insert record here.

        //Display success message and clear the form.
        string message = "Your details have been saved successfully.";
        string script = "window.onload = function(){ alert('";
        script += message;
        script += "');";
        script += "window.location = '";
        script += Request.Url.AbsoluteUri;
        script += "'; }";
        ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);


    }

}
    
