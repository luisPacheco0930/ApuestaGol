<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginApuesta.aspx.cs" Inherits="WebApuestasApplication.LoginApuesta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="frmAccesoApuestas" runat="server">
    <div>
        <asp:Label ID="lblUsuario" runat="server" Text="Usuario:"></asp:Label>
        <asp:TextBox ID="TxtUsuario" runat="server"></asp:TextBox>
        <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        <asp:Button ID="btnIniciaSesion" runat="server" Text="INICIAR SESION" />
    </div>
    </form>
</body>
</html>
