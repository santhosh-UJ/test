<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Form3.aspx.cs" Inherits="Form3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="panel panel-default">
     <h2>Welcome!</h2>
    <div class="panel-body">
    <div class="container">
        <div class="btn-group">
            <asp:Button ID="Button1" class="btn btn-primary" runat="server" 
                Text="Course Register" onclick="Button1_Click" />
            <%--<asp:Button ID="Button2" class="btn btn-primary" runat="server" 
                Text="View Couese Registered" onclick="Button2_Click" />--%>
            <asp:Button ID="Button3" class="btn btn-primary" runat="server" Text="Logout" 
                onclick="Button3_Click" Width="149px" />
        </div>
    </div>
    </div>
    </div>
    </form>
</body>
</html>
