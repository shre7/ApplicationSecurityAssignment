<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Success.aspx.cs" Inherits="ApplicationSecurityAssignment.Success" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>User Profile</h2>
        <h2>Username : <asp:Label ID="lbl_Username" runat="server"></asp:Label>
        </h2>
        <h2>Password :&nbsp;
            <asp:Label ID="lbl_password" runat="server"></asp:Label>
        </h2>
        <h2>Your login was a success!</h2>
        </div>
    </form>
</body>
</html>
