<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style type="text/css">
        .style1
        {
            width: 142px;
        }
        .style2
        {
            width: 178px;
        }
        .style3
        {
            width: 142px;
            height: 59px;
        }
        .style4
        {
            width: 178px;
            height: 59px;
        }
        .style5
        {
            height: 59px;
            width: 221px;
        }
        .style6
        {
            width: 142px;
            height: 42px;
        }
        .style7
        {
            width: 178px;
            height: 42px;
        }
        .style8
        {
            height: 42px;
            width: 221px;
        }
        .style9
        {
            width: 221px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div >
  <h2>Login</h2>
  <div class="panel panel-default">
    <div class="panel-body">
    <div class="container">

        <table >
            <tr>
                <td class="style3">
                    <asp:Label ID="Label1" runat="server" Text="User ID"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="TextBox1" runat="server" ValidationGroup ="Main"></asp:TextBox>
                </td>
                <td class="style5">
                    <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup ="Main" runat="server" ErrorMessage="User ID required" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                    </td>
                   
            </tr>
            <tr>
                <td class="style6">
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="style7">
                    <asp:TextBox ID="TextBox2" runat="server" ValidationGroup ="Main" TextMode="Password"></asp:TextBox>
                </td>
                <td class="style8">
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup ="Main" runat="server" ErrorMessage="Password required!"  ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style9">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Button ID="Button2" class="btn btn-primary" runat="server" 
                        Text="New Registration" Height="41px" onclick="Button2_Click" />
                </td>
                <td class="style2">
                    <asp:Button ID="Button1" class="btn btn-success" ValidationGroup ="Main" runat="server" Text="Login" 
                        Height="41px" Width="130px" onclick="Button1_Click" />
                </td>
                <td class="style9">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style9">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>

</div>
    </div>
    </div>
    </form>
</body>
</html>
