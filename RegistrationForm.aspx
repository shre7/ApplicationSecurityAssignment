<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="ApplicationSecurityAssignment.RegistrationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Registration</title>
    <script type="text/javascript">
        function validate() {
            var str = document.getElementById(<%=tb_password.ClientID%>).value;
            if (str.length < 12) {
                document.getElementById("lbl_pwdchecker").innerHTML = "Password length must be at least 12 characters.";
                document.getElementById("lbl_pwdchecker").style.color = "Red";
                return ("too short");
            }
            else if (str.search(/[0-9]/) == -1) {
                document.getElementById("lbl_pwdchecker").innerHTML = "Password requires at least 1 number";
                document.getElementById("lbl_pwdchecker").style.color = "Red";
                return ("no number");
            }
            else if (str.search(/[A-Z]/) == -1) {
                document.getElementById("lbl_pwdchecker").innerHTML = "Password requires at least 1 uppercase character";
                document.getElementById("lbl_pwdchecker").style.color = "Red";
                return ("no uppercase")
            }
            else if (str.search(/[a-z]/) == -1) {
                document.getElementById("lbl_pwdchecker").innerHTML = "Password requires at least 1 lowercase character";
                document.getElementById("lbl_pwdchecker").style.color = "Red";
                return ("no lowercase")
            }
            else if (str.search(/[^A-Za-z0-9]/)) {
                document.getElementById("lbl_pwdchecker").innerHTML = "Password requires at least 1 Special character";
                document.getElementById("lbl_pwdchecker").style.color = "Red";
                return ("no special character")
            }
            document.getElementById("lbl_pwdchecker").innerHTML = "Excellent"
            document.getElementById("lbl_pwdchecker").style.color = "Blue"
        }
        
    </script>
      <style type="text/css">
        #container {
            height: 96px;
        }
    </style>
</head>
<body style="height:203px">
    <form id="form1" runat="server">
        <div id="container"/>
            Registration<br />
            <br />
            <br />
         <p>
            Photo:</p>
        <p>
            :<asp:Image ID="Image1" runat="server" Width="116px" />
        </p>
        <p id="tb_firstname">
            First Name:<asp:TextBox ID="tb_firstname" runat="server"></asp:TextBox>
        </p>
        <p>
            Last Name:
            <asp:TextBox ID="tb_lastname" runat="server"></asp:TextBox>
        </p>
            <a href="Login.aspx.cs">Login.aspx.cs</a><p>
            Credit Card Info:</p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp; Card Number:</p>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="tb_CardNumber" runat="server" Width="730px"></asp:TextBox>
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Expiration Date(DD/MM/YY):&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
        <p>
            <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="tb_expdate" runat="server" Width="730px"></asp:TextBox>
        </p>
            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Postal Code:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;
            <br />
            <asp:TextBox ID="tb_PostalCode" runat="server" Width="718px"  style="margin-left: 63px" ></asp:TextBox>
        </p>
        <p>
            Email address:<asp:TextBox ID="tb_email" runat="server" Width="311px"></asp:TextBox>
        </p>
        <p id="tb_password">
            Password:<asp:TextBox ID="tb_password" runat="server" Width="311px" onkeyup="javascript:validate()"></asp:TextBox>
            <asp:Label ID="lbl_pwdchecker" runat="server" Text="pwdchecker"></asp:Label>
            </p>
            <p>
                Confirm Password:<asp:TextBox ID="tb_password0" runat="server" Width="311px" onkeyup="javascript:validate()"></asp:TextBox>
            <asp:Label ID="lbl_pwdchecker0" runat="server" Text="pwdchecker"></asp:Label>
            </p>
        <p>
            Date Of birth:<asp:TextBox ID="tb_birthdate" runat="server" Width="311px"></asp:TextBox>
        </p>
            <p>
                Verification Code:<asp:Image ID="Image2" runat="server" Height="115px" Image="" Width="220px" style="margin-right: 0px" />
                                  <asp:Label runat="server" ID="lblCaptchaMessage"></asp:Label>
        </p>
            <p>
                Enter Verification Code: <asp:TextBox ID="txtVerificationCode" runat="server"></asp:TextBox>
        </p>
            <p>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_Submit" runat="server" 
                    onClick="btn_Submit_Click" Text="Submit"  />
        </p>
            <p>
                <asp:Label ID="lb_error1" runat="server"></asp:Label>
        </p>
            <p>
                <asp:Label ID="lb_error2" runat="server"></asp:Label>
        </p>
       
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</p>
      
    </form>
   
</body>
</html>
