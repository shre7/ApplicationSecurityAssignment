<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ApplicationSecurityAssignment.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Home Page<br />
            <br />
            <asp:Label ID="lblMessage" runat="server" Text="Congratulations! You have logged in!"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnLogout" runat="server"  Text="Logout" OnClick="Page_Load" Visible="false" />
        </div>
    </form>
</body>
</html>
