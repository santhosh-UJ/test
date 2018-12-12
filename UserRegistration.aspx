<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserRegistration.aspx.cs" Inherits="UserRegistration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 296px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <h2>User Registration</h2>
    <div class="panel panel-default" style="width: 500px; padding: 10px; margin: 10px">
        <table class="nav-justified">
            <tr>
                <td class="style1">
                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Name Required" ControlToValidate = "txtname" ForeColor="Red" 
                        ValidationGroup="Main"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label2" runat="server" Text="DOB"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtdob" runat="server"></asp:TextBox><asp:ImageButton ID="ImageButton1"
                        runat="server" ImageUrl="~/calendar-interface-symbol-tool.png" 
                        onclick="ImageButton1_Click" /><asp:Calendar ID="Calendar1" runat="server" 
                        BackColor="White" BorderColor="#999999" CellPadding="4" 
                        DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" 
                        Height="180px" onselectionchanged="Calendar1_SelectionChanged" Width="200px">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <WeekendDayStyle BackColor="#FFFFCC" />
                    </asp:Calendar>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="DOB Required" ValidationGroup="Main" ControlToValidate = "txtdob" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label3" runat="server" Text="Gender"></asp:Label>
                </td>
                <td>
                    <asp:RadioButtonList ID="rbgender" runat="server" 
                        RepeatDirection="Horizontal">
                        <asp:ListItem Value="M">Male</asp:ListItem>
                        <asp:ListItem Value="F">Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label4" runat="server" Text="Mobile No"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtmoblie" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="Mobile Number Required" ValidationGroup="Main" ForeColor="Red" ControlToValidate = "txtmoblie"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label5" runat="server" Text="Address"></asp:Label>

                </td>
                <td>
                    <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="Address Required!" ValidationGroup="Main" ForeColor="Red" ControlToValidate = "txtaddress"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label6" runat="server" Text="Email"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Txtemail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ErrorMessage="Email Required!" ForeColor="Red" ValidationGroup="Main" ControlToValidate = "Txtemail"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator  ID="RegularExpressionValidator1" ForeColor="Red" ControlToValidate = "Txtemail"
                     runat="server" ErrorMessage="Invalid Email" ValidationGroup="Main"
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label7" runat="server" Text="District Name"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddldistrict" DataValueField ="District_cd" 
                        DataTextField = "District_Name" runat="server" ValidationGroup="Main" AutoPostBack="True" 
                        onselectedindexchanged="ddldistrict_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label8" runat="server" Text="Taluk Name"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddltaluk"  DataValueField = "Taluk_cd" DataTextField = "Taluk_Name" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" class="btn-success" ValidationGroup="Main" 
                        runat="server" Text="Submit" onclick="Button1_Click" />
                   </td>
            </tr>
        </table>

    

    </div>
    </form>
</body>
</html>
