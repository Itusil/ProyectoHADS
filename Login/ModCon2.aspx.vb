Imports BibliotecaDeClases.accesodatosSQL
Imports System.Drawing

Public Class WebForm5
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label5.Text = Session.Contents("emailAValidar")
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim codigoIntroducido = TextBox1.Text
        Dim CodigoObtenido As String
        Dim email As String


        email = Session.Contents("emailAValidar")
        conectar()
        Dim res = obtenerCodigoEmail(email)
        Dim correcto = 0
        While res.Read
            CodigoObtenido = res.Item("codpass")
            If CodigoObtenido = 0 Then
                Label2.Text = "Vaya...!"
                Label2.ForeColor = Color.Red
                Label3.Text = "Esta cuenta no ha solicitado nueva contraseña"
            ElseIf codigoIntroducido <> CodigoObtenido Then
                Label2.Text = "Vaya...!"
                Label3.Text = "El código es incorrecto"
            Else
                correcto = 1


            End If
        End While
        cerrarconexion()
        If correcto = 1 Then
            conectar()
            Dim pass As String
            pass = TextBox2.Text
            changePass(email, pass)
            cerrarconexion()

            Label2.Text = "Exito!"
            Label2.ForeColor = Color.Green
            Label3.Text = "La contraseña se ha cambiado correctamente"
        End If

    End Sub
End Class