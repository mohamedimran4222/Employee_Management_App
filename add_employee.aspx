<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add_employee.aspx.cs" Inherits="add_employee" %>

<!DOCTYPE html>





<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
    
     <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback" />
    <title>Add Employee</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
           
        }

        body {
            background-color: #f5f5f5;
        }

        .container {
            background-color: #fff;
            width: 600px;
            padding: 25px;
            margin: 25px auto 0;
        }
    </style>

</head>
<body>

    <div class="container">
        <div class="alert alert-primary" role="alert">
            <h4 class="alert-heading">Welcome to this page!!!</h4>
            <p>Enter the employee details here..</p>
        </div>

        <form class="row g-3" runat="server">



            <div class="form-group col-md-6">


                <asp:TextBox ID="txtFname" placeholder="Employee First Name*" runat="server" CssClass="form-control"></asp:TextBox>


            </div>


            <div class="form-group col-md-6">




                <asp:TextBox ID="txtSname" placeholder="Employee Last Name*" runat="server" CssClass="form-control"></asp:TextBox>


            </div>


            <div class="form-group col-md-6">



                <asp:TextBox ID="txtPhone" placeholder="Contact Number*" runat="server" CssClass="form-control" TextMode="Phone" MaxLength="10"></asp:TextBox>

            </div>

              <div class=" col-md-6">


                <asp:TextBox ID="txtEmail" placeholder="Employee Email Id*" CssClass="form-control" runat="server"></asp:TextBox>



            </div>

           

            <div class="col-md-12">


                <asp:TextBox ID="txtAdd" placeholder="Address*" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>

            </div>



            <div class="d-grid gap-2">
                <br />
                <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary btn btn-block" Text="Click here to add employee" OnClick="Button1_Click" />
                <br />



            </div>


        </form>

    </div>

</body>

</html>


