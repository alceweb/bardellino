<%@ Page Language="VB" ValidateRequest="false" %>
<%@ Import Namespace="System.Web.Security" %>
<script runat="server">
Sub Login(Sender As Object, e As EventArgs)
    Dim username As String = txtUsername.Text
    Dim password As String = txtPassword.Text
    If FormsAuthentication.Authenticate(username ,password)
        FormsAuthentication.RedirectFromLoginPage(username, false)
            Response.Redirect("Admin.aspx")
    End If
End Sub
</script>
<html>
    <head>
        <title>Login</title>
    </head>
<body>

<form id="frmLogin" method="post" runat="server">
    Username<br>
    <asp:TextBox id="txtUsername"
                    runat="server" />
    <br><br>
    Password<br>
    <asp:TextBox id="txtPassword"
                    runat="server"
                    TextMode="Password" />
    <br><br>
    <asp:Button id="cmdLogin"
                   runat="server"
                   Text="Login"
                   OnClick="Login" />
</form>

</body>
</html>
