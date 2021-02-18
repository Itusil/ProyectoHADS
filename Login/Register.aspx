<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Register.aspx.vb" Inherits="Login.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Email:" style="z-index: 1; left: 380px; top: 25px; position: absolute; height: 20px; width: 59px"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 461px; top: 21px; position: absolute; width: 182px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Esto no es un correo valido" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" style="z-index: 1; left: 657px; top: 18px; position: absolute"></asp:RegularExpressionValidator>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Campo obligatorio" ForeColor="Red" style="position: absolute; text-align: center; z-index: 1; left: 656px; top: 46px;"></asp:RequiredFieldValidator>
            <br /><br />
            <asp:Label ID="Label2" runat="server" Text="Nombre: " style="z-index: 1; left: 363px; top: 83px; position: absolute"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" Wrap="False" style="z-index: 1; left: 460px; top: 81px; position: absolute; width: 184px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Campo obligatorio" ForeColor="Red" style="position: absolute; text-align: center; z-index: 1; left: 657px; top: 81px;"></asp:RequiredFieldValidator>
            <br /><br /><br />
            <asp:Label ID="Label3" runat="server" Text="Apellidos:  " style="z-index: 1; left: 345px; top: 134px; position: absolute; height: 22px"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" style="z-index: 1; left: 459px; top: 133px; position: absolute; width: 184px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Campo obligatorio" ForeColor="Red" style="position: absolute; text-align: center; z-index: 1; left: 657px; top: 134px;"></asp:RequiredFieldValidator>
            <br /><br /><br />
            <asp:Label ID="Label4" runat="server" Text="Password:  " style="z-index: 1; left: 346px; top: 182px; position: absolute"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" style="z-index: 1; left: 460px; top: 182px; position: absolute; width: 186px" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Campo obligatorio" ForeColor="Red" style="position: absolute; text-align: center; z-index: 1; left: 657px; top: 182px;"></asp:RequiredFieldValidator>
            <br /><br /><br />
            <asp:Label ID="Label5" runat="server" Text="Repetir Psw:  " style="z-index: 1; left: 324px; top: 222px; position: absolute"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" style="text-align: justify; z-index: 1; left: 459px; top: 220px; position: absolute; width: 191px;" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Campo obligatorio" ForeColor="Red" style="position: absolute; text-align: center; z-index: 1; left: 657px; top: 223px;"></asp:RequiredFieldValidator>
            <br /><br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" ErrorMessage="Las contraseñas no coinciden" ForeColor="Red" style="z-index: 1; left: 449px; top: 262px; position: absolute"></asp:CompareValidator>
                <br />
            <asp:Label ID="Label6" runat="server" Text="Rol" style="z-index: 1; left: 454px; top: 297px; position: absolute"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" style="z-index: 1; left: 505px; top: 293px; position: absolute; height: 54px; width: 94px">
                <asp:ListItem>Alumno</asp:ListItem>
                <asp:ListItem>Profesor</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="Campo obligatorio" ForeColor="Red" style="position: absolute; text-align: center; z-index: 1; left: 618px; top: 298px;"></asp:RequiredFieldValidator>
            <asp:Button ID="Button1" runat="server" Text="Registrar" Width="276px" style="z-index: 1; left: 437px; top: 365px; position: absolute; height: 29px;" />
            <br /><br /><text style="text-align:center"><asp:Label ID="Label7" runat="server" style="z-index: 1; left: 236px; top: 413px; position: absolute; width: 675px; text-align: center;" Font-Size="25px"></asp:Label></text>
       </div>
    </form>
</body>
</html>
