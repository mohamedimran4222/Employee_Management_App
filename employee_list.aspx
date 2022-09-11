<%@ Page Language="C#" AutoEventWireup="true" CodeFile="employee_list.aspx.cs" Inherits="employee_list" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Employee Management App</title>

    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css" />
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" />
    <!-- Tempusdominus Bootstrap 4 -->
    <link rel="stylesheet" href="plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css" />
    <!-- iCheck -->
    <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css" />
    <!-- JQVMap -->
    <link rel="stylesheet" href="plugins/jqvmap/jqvmap.min.css" />
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/adminlte.min.css" />
    <!-- overlayScrollbars -->
    <link rel="stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css" />
    <!-- Daterange picker -->
    <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css" />
    <!-- summernote -->
    <link rel="stylesheet" href="plugins/summernote/summernote-bs4.min.css" />

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />

</head>
<body>
    <br />
    <h2 style="text-align: center">Employees List</h2>
    <br />


    <div>

        <form id="form1" runat="server">
            <div class="container">

                <asp:Button ID="Add" runat="server" CssClass="btn btn-primary" Text="Add Employee" OnClick="Add_Click" />
                <br />
                <br />

                <asp:GridView ID="GridView1" CssClass="table table-responsive-md table-bordered table-striped" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="id" HorizontalAlign="Center">
                    <Columns>


                        <asp:BoundField DataField="id" HeaderText="List Id" SortExpression="id" ReadOnly="True" InsertVisible="False" Visible="false"></asp:BoundField>

                        <asp:BoundField DataField="emp_fname" HeaderText="Employee First Name" SortExpression="emp_fname" />
                        <asp:BoundField DataField="emp_sname" HeaderText="Employee Second Name" SortExpression="emp_sname" />
                        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />

                        <asp:BoundField DataField="employee_id" HeaderText="Employee Id" Visible="false" SortExpression="employee_id" />


                        <asp:TemplateField HeaderText="Actions" ShowHeader="True">
                            <EditItemTemplate>
                                <asp:Button ID="Button1" CssClass="btn btn-success" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:Button ID="Button2" CssClass="btn btn-danger" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Button ID="Button2" runat="server" CssClass="btn btn-info" CausesValidation="False" CommandName="Edit" Text="Edit" />
                                <asp:Button ID="Button3" runat="server" CssClass="btn btn-danger" CausesValidation="False" CommandName="Delete" Text="Delete" />
                                <asp:Button Text="View" CssClass="btn btn-info  " ID="LinkButton1" OnClick="LinkButton1_Click" runat="server" />
                            </ItemTemplate>
                            <ControlStyle />
                            <ItemStyle />
                        </asp:TemplateField>

                    </Columns>

                    <HeaderStyle />

                </asp:GridView>


                `<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:emp_list_ConnectionString %>" DeleteCommand="DELETE FROM [emp_list] WHERE [id] = @id" InsertCommand="INSERT INTO [emp_list] ([emp_fname], [emp_sname], [email], [employee_id]) VALUES (@emp_fname, @emp_sname, @email, @employee_id)" SelectCommand="SELECT * FROM [emp_list]" UpdateCommand="UPDATE [emp_list] SET [emp_fname] = @emp_fname, [emp_sname] = @emp_sname, [email] = @email, [employee_id] = @employee_id WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="emp_fname" Type="String" />
                        <asp:Parameter Name="emp_sname" Type="String" />
                        <asp:Parameter Name="email" Type="String" />

                        <asp:Parameter Name="employee_id" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="emp_fname" Type="String" />
                        <asp:Parameter Name="emp_sname" Type="String" />
                        <asp:Parameter Name="email" Type="String" />

                        <asp:Parameter Name="employee_id" Type="Int32" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>


            </div>
        </form>

    </div>



</body>
</html>






