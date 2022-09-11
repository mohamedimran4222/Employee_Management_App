using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class employee_list : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=LAPTOP-4QQCKQNB\\SQLEXPRESS;Initial Catalog=emp_list;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
    }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {

        Button btn = (Button)sender;
        GridViewRow row = btn.NamingContainer as GridViewRow;
        int id = (int)GridView1.DataKeys[row.RowIndex].Values["id"];
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-4QQCKQNB\\SQLEXPRESS;Initial Catalog=emp_list;Integrated Security=True");
        SqlDataAdapter dataAdapter = new SqlDataAdapter("spEmployeeDetailsById", con);
        dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
        dataAdapter.SelectCommand.Parameters.AddWithValue("@id", id);
        string CommandName = btn.CommandName;
        string Commandtype = btn.CommandArgument;
        DataTable datatable = new DataTable();
        dataAdapter.Fill(datatable);
        Session["employees"] = datatable;

        Response.Redirect("employee_details.aspx");


    }


    protected void Add_Click(object sender, EventArgs e)
    {
        Response.Redirect("add_employee.aspx");
    }
}




