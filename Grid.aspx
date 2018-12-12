<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Grid.aspx.cs" Inherits="Grid" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="REGISTRATION_ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="REGISTRATION_ID" HeaderText="REGISTRATION_ID" 
                    ReadOnly="True" SortExpression="REGISTRATION_ID" />
                <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                <asp:BoundField DataField="GENDER" HeaderText="GENDER" 
                    SortExpression="GENDER" />
                <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                <asp:BoundField DataField="MOBILE" HeaderText="MOBILE" 
                    SortExpression="MOBILE" />
                <asp:BoundField DataField="REGN_DT" HeaderText="REGN_DT" 
                    SortExpression="REGN_DT" />
                <asp:BoundField DataField="Address" HeaderText="Address" 
                    SortExpression="Address" />
                <asp:BoundField DataField="District_cd" HeaderText="District_cd" 
                    SortExpression="District_cd" />
                <asp:BoundField DataField="Taluk_cd" HeaderText="Taluk_cd" 
                    SortExpression="Taluk_cd" />
            </Columns>
        </asp:GridView>

        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Course %>" 
            DeleteCommand="DELETE FROM [STUDENT_MASTER] WHERE [REGISTRATION_ID] = @REGISTRATION_ID" 
            InsertCommand="INSERT INTO [STUDENT_MASTER] ([REGISTRATION_ID], [NAME], [DOB], [GENDER], [EMAIL], [MOBILE], [REGN_DT], [Address], [District_cd], [Taluk_cd]) VALUES (@REGISTRATION_ID, @NAME, @DOB, @GENDER, @EMAIL, @MOBILE, @REGN_DT, @Address, @District_cd, @Taluk_cd)" 
            SelectCommand="SELECT * FROM [STUDENT_MASTER]" 
            UpdateCommand="UPDATE [STUDENT_MASTER] SET [NAME] = @NAME, [DOB] = @DOB, [GENDER] = @GENDER, [EMAIL] = @EMAIL, [MOBILE] = @MOBILE, [REGN_DT] = @REGN_DT, [Address] = @Address, [District_cd] = @District_cd, [Taluk_cd] = @Taluk_cd WHERE [REGISTRATION_ID] = @REGISTRATION_ID">
            <DeleteParameters>
                <asp:Parameter Name="REGISTRATION_ID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="REGISTRATION_ID" Type="String" />
                <asp:Parameter Name="NAME" Type="String" />
                <asp:Parameter Name="DOB" Type="DateTime" />
                <asp:Parameter Name="GENDER" Type="String" />
                <asp:Parameter Name="EMAIL" Type="String" />
                <asp:Parameter Name="MOBILE" Type="String" />
                <asp:Parameter Name="REGN_DT" Type="DateTime" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="District_cd" Type="Int32" />
                <asp:Parameter Name="Taluk_cd" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="NAME" Type="String" />
                <asp:Parameter Name="DOB" Type="DateTime" />
                <asp:Parameter Name="GENDER" Type="String" />
                <asp:Parameter Name="EMAIL" Type="String" />
                <asp:Parameter Name="MOBILE" Type="String" />
                <asp:Parameter Name="REGN_DT" Type="DateTime" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="District_cd" Type="Int32" />
                <asp:Parameter Name="Taluk_cd" Type="Int32" />
                <asp:Parameter Name="REGISTRATION_ID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>
    </form>
</body>
</html>
