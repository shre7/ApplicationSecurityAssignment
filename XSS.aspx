<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="XSS.aspx.cs" Inherits="ApplicationSecurityAssignment.XSS" ValidateRequest="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Customer Feedback<br />
            <br />
            <asp:TextBox ID="tb_comments" runat="server" Height="133px"  style="margin-top: 0px" Width="1136px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btn_submit" runat="server" OnClick="btn_submit_Click" Text="Submit" />
            <br />
            <br />
            <asp:Label ID="lbl_comments" runat="server" Text="Comments"></asp:Label>
        </div>
    </form>
</body>
</html>
