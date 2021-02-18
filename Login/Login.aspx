<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="Login.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" visible="True">
        <div style="text-align:center">
        <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 433px; top: 43px; position: absolute"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Campo obligatorio" ForeColor="Red" style="z-index: 1; left: 609px; top: 44px; position: absolute"></asp:RequiredFieldValidator>
            <br />
        <asp:Label ID="Label1" runat="server" Text="Email:   " style="z-index: 1; left: 355px; top: 47px; position: absolute; margin-top: 0px"></asp:Label>
            <br />
        <asp:Label ID="Label2" runat="server" Text="Password:   " style="z-index: 1; left: 332px; top: 111px; position: absolute"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 436px; top: 107px; position: absolute" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Campo obligatorio" ForeColor="Red" style="z-index: 1; left: 606px; top: 110px; position: absolute"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Introduce un email valido" ForeColor="Red" style="z-index: 1; left: 408px; top: 75px; position: absolute" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br /><br /><br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register.aspx" style="z-index: 1; left: 558px; top: 198px; position: absolute">Quiero registrarme</asp:HyperLink><br />
        <asp:Button ID="Button1" runat="server" Text="Login" style="z-index: 1; left: 426px; top: 196px; position: absolute; height: 75px; width: 123px" />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Modicar.aspx" style="z-index: 1; left: 559px; top: 240px; position: absolute">Modificar contraseña</asp:HyperLink>
        </div>
            <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 495px; top: 292px; position: absolute" Text="Vaya..." Font-Size="50px" ForeColor="Red" Visible="False"></asp:Label>

        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 393px; top: 364px; position: absolute; width: 337px; text-align: center;"></asp:Label>

    </form>
</body>
</html>
