<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Form5.aspx.cs" Inherits="Form5" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="panel panel-default">
     <h2>Welcome!</h2>
    <div class="panel-body">
    <div class="container">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="COURSE_NAME" HeaderText="COURSE_NAME" 
                    SortExpression="COURSE_NAME" />
                <asp:BoundField DataField="DURATION" HeaderText="DURATION" 
                    SortExpression="DURATION" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Course %>" SelectCommand="spgetcource" 
            SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="0" Name="reg" SessionField="UserId" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    </div>
    </div>
    </form>
</body>
</html>
