Imports System.Data.SqlClient
Imports BibliotecaDeClases.accesodatosSQL
Public Class WebForm1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub TextBox2_TextChanged(sender As Object, e As EventArgs)

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim email As String
        Dim contra As String
        Dim resultado As SqlDataReader
        Dim veri As Integer
        email = TextBox1.Text
        contra = TextBox2.Text
        conectar()
        resultado = hacerlogin(email, contra)

        If resultado.HasRows = False Then
            Label3.Visible = True
            Label4.Text = "Parece ser que el login es incorrecto"
        Else
            While resultado.Read

            veri = resultado.Item("confirmado")
                If veri = 0 Then
                    Label3.Visible = True
                    Label4.Text = "La cuenta no ha sido verificada..."
                Else
                    Session.Contents("email") = resultado.Item("email")
                    Session.Contents("rol") = resultado.Item("tipo")

                    Label3.Visible = False
                    Label4.Text = "Todo correcto"
                End If
            End While
        End If
        cerrarconexion()


    End Sub
End Class