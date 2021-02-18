Imports BibliotecaDeClases.accesodatosSQL
Imports System.Drawing
Imports BibliotecaDeClases.Class1
Public Class WebForm3
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim email As String
        Dim NumConf As Integer
        email = TextBox1.Text
        Randomize()
        NumConf = CLng(Rnd() * 9000000) + 1000000
        conectar()
        Dim res = resetPassEmailCod(NumConf, email)
        cerrarconexion()
        If res = 1 Then
            enviarEmailRecContra(email, NumConf)
            Label2.Text = "exito!"
            Label2.ForeColor = Color.Green
            Label3.Text = "se ha enviado el correo de manera correcta"
            Session.Contents("emailAValidar") = email

            Session.Contents("enviadoOK") = 1
            'Vadillo uso onClientClick o algo asi 
            MsgBox("Se ha enviado un correo electronico con un codigo para la contraseña")
            Response.Redirect("ModCon2.aspx")

        Else
            Label2.Text = "vaya..."
            Label2.ForeColor = Color.Red
            Label3.Text = "parece que no hay niguna cuenta con ese usuario"
        End If

    End Sub
End Class