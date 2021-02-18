Imports BibliotecaDeClases.accesodatosSQL
Imports BibliotecaDeClases.Class1

Public Class WebForm2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim NumConf As Integer
        Dim mail As String
        Dim nombre As String
        Dim apellidos As String
        Dim password As String
        Dim rol As String
        Dim redir As String
        Dim result As String

        mail = TextBox1.Text
        nombre = TextBox2.Text
        apellidos = TextBox3.Text
        password = TextBox4.Text
        rol = RadioButtonList1.SelectedValue
        Randomize()
        NumConf = CLng(Rnd() * 9000000) + 1000000
        redir = "https://localhost:44339/Confirmar.aspx?mbr=" + mail + "&numconf=" + NumConf.ToString


        conectar()
        result = insertar(mail, nombre, apellidos, NumConf, 0, rol, password)
        cerrarconexion()

        Dim mandao = enviarEmail(mail, redir)

        'Label7.Text = "Link para el correo: " + redir + ";;;" + result + "----Mandao: " + mandao.ToString
        Label7.Text = "Se ha enviado un correo de validación a tu mail "

    End Sub
End Class