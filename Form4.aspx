<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Form4.aspx.cs" Inherits="Form4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <title></title>
    <style type="text/css">
        .style2
        {
            width: 113px;
        }
        .style3
        {
            width: 127px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
  <h2>Course Registration</h2>
  <div class="panel panel-default">
    <div class="panel-heading">Course Registration</div>
    <div class="panel-body">
    <table class="table table-striped">
            <tr>
                <td >
                    <asp:Label ID="Label1"  runat="server" Text="Registration ID"></asp:Label>
                </td>
                <td >
                    <asp:TextBox ID="txtreg" class="form-control" runat="server" AutoPostBack="True" 
                        ontextchanged="txtreg_TextChanged"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Regmsg" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td >
                    <asp:Label ID="Label2"  runat="server" Text="Course Name"></asp:Label>
                </td>
                <td >
                    <asp:DropDownList ID="ddlcourse" DataValueField="COURSE_CD" 
                        DataTextField = "COURSE_NAME" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="ddlcourse_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td >
                    <asp:Label ID="Label3" runat="server" Text="Course Duration"></asp:Label>
                </td>
                <td >
                    <asp:TextBox ID="txtduration" class="form-control" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td >
                    &nbsp;</td>
                <td >
                    <asp:Button ID="Button1" CssClass="btn btn-success" runat="server" Text="Submit" onclick="Button1_Click" />
                </td>
                <td>
                    <asp:Button ID="Button2" CssClass="btn btn-success" runat="server" Text="Back" 
                        PostBackUrl="~/Form3.aspx" />
                </td>
            </tr>
        </table>
    
    </div>
  </div>
</div>

    
        
    
    
    </form>
</body>
</html>
