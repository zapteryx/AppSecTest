<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AppSec_Assignment.Login" %>

<asp:Content ID="CaptchaContent" ContentPlaceHolderID="HeadContent" runat="server">
    <script src="https://www.google.com/recaptcha/api.js?render=6LcnyWQeAAAAAKU93nb1kCKOgS0NMKz7ZGtLlzTK"></script>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    Login<br />
    <br />
    <br />
    <asp:Label ID="lbl_errormsg" runat="server"></asp:Label>
    <br />
    <br />
    Email
    <asp:TextBox ID="tb_email" TextMode="Email" runat="server"></asp:TextBox>
    <br />
    <br />
    Password
    <asp:TextBox ID="tb_password" TextMode="Password" runat="server"></asp:TextBox>
    <br />
    <br />

    <input type = "hidden" id="g-recaptcha-response" name="g-recaptcha-response" />

    <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />

    <script>
        grecaptcha.ready(function () {
            grecaptcha.execute('6LcnyWQeAAAAAKU93nb1kCKOgS0NMKz7ZGtLlzTK', { action: 'Login' }).then(token => {
                document.getElementById("g-recaptcha-response").value = token;
            });
        })
    </script>
</asp:Content>