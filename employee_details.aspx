<%@ Page Language="C#" AutoEventWireup="true" CodeFile="employee_details.aspx.cs" Inherits="employee_details" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Employee Details</title>
    <style>
        *,
        *::before,
        *::after {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: Mukta, sans-serif;
            height: 100vh;
            display: grid;
            justify-content: center;
            align-items: center;
            color: #4f546c;
            font-size: 0.9rem;
            background-color: #f9fbff;
        }

        table {
            border-collapse: collapse;
            box-shadow: 0 5px 10px #e1e5ee;
            background-color: white;
            text-align: left;
            overflow: hidden;
        }

        thead {
            box-shadow: 0 5px 10px #e1e5ee;
        }

        th {
            padding: 1rem 2rem;
            text-transform: uppercase;
            letter-spacing: 0.1rem;
            font-size: 0.7rem;
            font-weight: 900;
        }

        td {
            padding: 1rem 2rem;
        }



        tr:nth-child(odd) {
            background-color: #f4f6fb;
        }
    </style>
</head>
<body>


    <form id="form1" runat="server">



        <table>
            <thead>
                <tr>
                    <th>Employee First Name</th>
                    <th>Employee Second Name</th>



                    
                    <th>Address</th>
                    <th>Contact Number</th>


                </tr>
            </thead>

            <tbody>
                <tr>
                    <td>
                        <asp:Label ID="txtFname" runat="server"></asp:Label></td>
                    <td>
                        <asp:Label ID="txtSname" runat="server"></asp:Label></td>

                   
                    <td>
                        <asp:Label ID="txtAdd" runat="server"></asp:Label></td>
                    <td>
                        <asp:Label ID="txtPhone" runat="server"></asp:Label></td>

                </tr>


            </tbody>
        </table>



    </form>


</body>
</html>

