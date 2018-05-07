<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Refeitorio.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <center>
            <asp:Login ID="Login1" runat="server" style="text-align: left" Height="181px" LoginButtonText="Entrar" OnAuthenticate="Login1_Authenticate" PasswordLabelText="Senha:" PasswordRequiredErrorMessage="Senha obrigatório." RememberMeText="Lembrar credenciais da próxima vez" TitleText="Entre com suas credenciais" UserNameLabelText="Usuário:" UserNameRequiredErrorMessage="Usuário obrigatório." Width="305px">
            </asp:Login>
        </center>
    </div>
    </form>
</body>
</html>
