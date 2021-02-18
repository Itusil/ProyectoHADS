<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Modicar.aspx.vb" Inherits="Login.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Email: " style="z-index: 1; left: 396px; top: 48px; position: absolute"></asp:Label>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Introduce un email correto" ForeColor="Red" style="z-index: 1; left: 695px; top: 77px; position: absolute" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 480px; top: 45px; position: absolute; width: 201px"></asp:TextBox><br />
            <asp:Button ID="Button1" runat="server" Text="Solicitar cambiar contraseña" style="z-index: 1; left: 384px; top: 112px; position: absolute" /><br /><br /><br />
            <br />
            <br /><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Campo obligatorio" ForeColor="Red" style="z-index: 1; left: 698px; top: 36px; position: absolute"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label2" runat="server" Font-Size="32pt" style="z-index: 1; left: 448px; top: 187px; position: absolute"></asp:Label>
            <br />
            <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 276px; top: 275px; position: absolute; width: 520px; text-align: center"></asp:Label>
            <br />
        </div>
    </form>
</body>
</html>
