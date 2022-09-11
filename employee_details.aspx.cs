using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class employee_details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
            if (!IsPostBack)
            {

                if (Session["employees"] != null)
                {
                    DataTable datatable = (DataTable)Session["employees"];

                txtFname.Text = datatable.Rows[0]["emp_fname"].ToString();
                txtSname.Text = datatable.Rows[0]["emp_sname"].ToString();
              
                txtAdd.Text = datatable.Rows[0]["address"].ToString();
                txtPhone.Text = datatable.Rows[0]["contact_number"].ToString();
                




            }


            }













        }
    }
