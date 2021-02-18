<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ModCon2.aspx.vb" Inherits="Login.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 204px; top: 96px; position: absolute" Text="Introduzca el codigo recibido:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 451px; top: 95px; position: absolute"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" style="z-index: 1; left: 376px; top: 225px; position: absolute" Text="Continuar" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Campo obligatorio" ForeColor="Red" style="z-index: 1; left: 636px; top: 93px; position: absolute"></asp:RequiredFieldValidator>
        <asp:Label ID="Label2" runat="server" Font-Size="32pt" ForeColor="Red" style="z-index: 1; left: 368px; top: 279px; position: absolute"></asp:Label>
        <asp:Label ID="Label3" runat="server" Font-Size="18pt" style="z-index: 1; left: 133px; top: 356px; position: absolute; width: 625px; text-align: center"></asp:Label>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 291px; top: 143px; position: absolute" Text="Nueva contraseña:"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 452px; top: 145px; position: absolute" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Campo obligatorio" ForeColor="Red" style="z-index: 1; left: 637px; top: 147px; position: absolute"></asp:RequiredFieldValidator>
        <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 452px; top: 51px; position: absolute"></asp:Label>
        <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 390px; top: 51px; position: absolute; width: 54px" Text="Email:"></asp:Label>
    </form>
</body>
</html>
