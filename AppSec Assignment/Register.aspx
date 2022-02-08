<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="AppSec_Assignment.Register" %>

<asp:Content ID="ScriptContent" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript">
        function validate() {
            var str = document.getElementById('<%=tb_password.ClientID %>').value;

            if (str.length < 12) {
                document.getElementById("lbl_pwdchecker").innerHTML = "Password length must be at least 12 characters";
                document.getElementById("lbl_pwdchecker").style.color = "Red";
                return ("too_short");
            }

            else if (str.search(/[a-z]/) == -1) {
                document.getElementById("lbl_pwdchecker").innerHTML = "Password must contain lowercase characters";
                document.getElementById("lbl_pwdchecker").style.color = "Red";
                return ("no_lowercase");
            }

            else if (str.search(/[A-Z]/) == -1) {
                document.getElementById("lbl_pwdchecker").innerHTML = "Password must contain uppercase characters";
                document.getElementById("lbl_pwdchecker").style.color = "Red";
                return ("no_uppercase");
            }

            else if (str.search(/[0-9]/) == -1) {
                document.getElementById("lbl_pwdchecker").innerHTML = "Password must contain numbers";
                document.getElementById("lbl_pwdchecker").style.color = "Red";
                return ("no_number");
            }

            else if (str.search(/[^A-Za-z0-9]/) == -1) {
                document.getElementById("lbl_pwdchecker").innerHTML = "Password must contain special characters";
                document.getElementById("lbl_pwdchecker").style.color = "Red";
                return ("no_specialcharacter")
            }

            document.getElementById("lbl_pwdchecker").innerHTML = "Excellent!";
            document.getElementById("lbl_pwdchecker").style.color = "Blue";
        }
    </script>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    Register<br />
    <br />
    <br />
    First Name
    <asp:TextBox ID="tb_firstname" runat="server"></asp:TextBox>
    <br />
    <br />
    Last Name
    <asp:TextBox ID="tb_lastname" runat="server"></asp:TextBox>
    <br />
    <br />
    Credit Card Number
    <asp:TextBox ID="tb_creditcardnumber" runat="server"></asp:TextBox>
    <br />
    <br />
    CVV2
    <asp:TextBox ID="tb_cvv2" TextMode="Password" runat="server"></asp:TextBox>
    <br />
    <br />
    Expiry
    <asp:TextBox ID="tb_expiry" runat="server"></asp:TextBox>
    <br />
    <br />
    Email
    <asp:TextBox ID="tb_email" TextMode="Email" runat="server"></asp:TextBox>
    <asp:Label ID="lbl_emailchecker" runat="server"></asp:Label>
    <br />
    <br />
    Password
    <asp:TextBox ID="tb_password" TextMode="Password" runat="server"></asp:TextBox>
    <asp:Label ID="lbl_pwdchecker" runat="server"></asp:Label>
    <br />
    <br />
    Date of Birth
    <asp:TextBox ID="tb_dateofbirth" TextMode="Date" runat="server"></asp:TextBox>
    <br />
    <br />
    Photo
    <asp:FileUpload ID="fu_photo" runat="server"></asp:FileUpload>
    <br />
    <br />

    <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />
</asp:Content>