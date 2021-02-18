Imports System.Drawing
Imports BibliotecaDeClases.accesodatosSQL

Public Class WebForm4
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        conectar()
        Dim email As String
        Dim codigo As Integer
        email = Request.Params("mbr")
        codigo = Request.Params("numconf")

        Dim resultado = validarCodigoUsuario(email, codigo)
        cerrarconexion()

        If resultado Then
            conectar()
            validarUsuario(email)
            cerrarconexion()
            Label1.Text = "Bienvenido!"
            Label1.ForeColor = Color.Green
            Label1.Font.Size = 45
            Label2.Text = "Correo verificado con éxito"
            Label2.Font.Size = 16
        Else
            Label1.Text = "Vaya..."
            Label1.ForeColor = Color.Red
            Label1.Font.Size = 45
            Label2.Text = "El codigo para el correo no coincide"
            Label2.Font.Size = 16
        End If
    End Sub

End Class