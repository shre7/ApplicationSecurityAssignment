<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ApplicationSecurityAssignment.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Form</title>
    <script src="http://www.google.com/recaptcha/api.js?render=6LdG-FseAAAAAB-rBrYLer9CGHEHbHxsVPKHkon7"></script>
</head>
<body>
    
    <form id="form1" runat="server">
        <div>
            Login<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Username:
            <asp:TextBox ID="tb_userid" runat="server"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password:&nbsp;
            <asp:TextBox ID="tb_pwd" runat="server" style="margin-left: 0px" Width="293px"></asp:TextBox>
        </div>
        <p>
            &nbsp;</p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
        <asp:Button ID="btnSubmit" runat="server" Text="Login" />
       
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="hidden" id="g-recaptcha-response" name="g-recaptcha-response" />
        <asp:Label ID="lblMessage" runat="server" EnableViewState="false">Error message here (lblMessage)"></asp:Label>
    </form>
    <script>
        grecaptcha.ready(function () {
            grecaptcha.execute("6LdG-FseAAAAAB-rBrYLer9CGHEHbHxsVPKHkon7", { action: 'Login' }).then(function (token) {
                document.getElementBYId("g-recaptcha-response").value = token;
            });
        })

    </script>
</body>
</html>
