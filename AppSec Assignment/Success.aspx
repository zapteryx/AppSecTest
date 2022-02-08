<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Success.aspx.cs" Inherits="AppSec_Assignment.Success" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form runat="server">
        <h1>You're logged in</h1>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Log out" OnClick="LogoutMe" />
    </form>
</body>
</html>
