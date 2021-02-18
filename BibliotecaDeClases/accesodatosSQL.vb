Imports System.Data.SqlClient

Public Class accesodatosSQL
    Private Shared conexion As New SqlConnection
    Private Shared comando As New SqlCommand
    Public Shared Function conectar() As String
        Try
            conexion.ConnectionString = “Server=tcp:hads21-22.database.windows.net,1433;Initial Catalog=HADS21-22;Persist Security Info=False;User ID=mikeliturria1@hotmail.es@hads21-22;Password=Mitu2323;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;"
            conexion.Open()
        Catch ex As Exception
            Return "ERROR DE CONEXIÓN: " + ex.Message
        End Try
        Return "CONEXION OK"
    End Function
    Public Shared Function insertar(ByVal email As String, ByVal nombre As String, ByVal apellidos As String, ByVal numconfirm As Integer, ByVal confirmado As Integer, ByVal tipo As String, ByVal pass As String) As String
        Dim st = "insert into Usuarios values ('" & email & "', '" & nombre & "','" & apellidos & "'," & numconfirm & "," & confirmado & ",'" & tipo & "','" & pass & "', 0 )"
        Dim numregs As Integer
        comando = New SqlCommand(st, conexion)
        Try
            numregs = comando.ExecuteNonQuery()
        Catch ex As Exception
            Return ex.Message
        End Try
        Return (numregs & " registro(s) insertado(s) en la BD ")
    End Function
    Public Shared Function obtenerdatos() As SqlDataReader
        Dim st = "select * from Usuarios"
        comando = New SqlCommand(st, conexion)
        Return (comando.ExecuteReader())
    End Function

    Public Shared Function validarCodigoUsuario(ByVal email As String, ByVal codigo As Integer) As Boolean
        Dim st = "select numconfir from Usuarios where email='" + email + "'"
        Dim numregs As SqlDataReader
        Dim numregs2 As Integer
        Dim codigoBD As Integer
        comando = New SqlCommand(st, conexion)
        Console.WriteLine(email)
        Console.WriteLine(codigo)

        Try
            numregs = comando.ExecuteReader()
        Catch ex As Exception
            Return ex.Message
        End Try
        Console.WriteLine(numregs)
        While numregs.Read
            codigoBD = numregs.Item("numconfir")
        End While

        If codigo = codigoBD Then
            Return True
        Else
            Return False
        End If
    End Function
    Public Shared Sub cerrarconexion()
        conexion.Close()
    End Sub
    Public Shared Function validarUsuario(ByVal email As String) As Integer
        Dim st2 = "UPDATE Usuarios set confirmado = 1 where email='" + email + "'"
        Dim rumregs2 As Integer
        comando = New SqlCommand(st2, conexion)
        Try
            rumregs2 = comando.ExecuteNonQuery()
        Catch ex As Exception
            Return ex.Message
        End Try
        Return rumregs2
    End Function
    Public Shared Function hacerlogin(ByVal email As String, ByVal pass As String) As SqlDataReader
        Dim st = "select * from Usuarios where email='" + email + "' and pass='" + pass + "'"
        comando = New SqlCommand(st, conexion)
        Return (comando.ExecuteReader())
    End Function

    Public Shared Function obtenerCodigoEmail(ByVal email As String) As SqlDataReader
        Dim st = "Select codpass from Usuarios where email = '" + email + "'"
        comando = New SqlCommand(st, conexion)
        Return (comando.ExecuteReader())
    End Function
    Public Shared Function resetPassEmailCod(ByVal codigo As Integer, ByVal email As String) As Integer
        Dim st2 = "UPDATE Usuarios set codpass =" & codigo & " where email='" & email & "'"
        Dim rumregs2 As Integer
        comando = New SqlCommand(st2, conexion)
        Try
            rumregs2 = comando.ExecuteNonQuery()
        Catch ex As Exception
            Return ex.Message
        End Try
        Return rumregs2
    End Function

    Public Shared Function changePass(ByVal email As String, ByVal pass As String) As Integer
        Dim st2 = "UPDATE Usuarios set pass ='" & pass & "' where email='" & email & "'"
        Dim st3 = "UPDATE Usuarios set codpass = 0 where email='" & email & "'"
        Dim rumregs2 As Integer
        comando = New SqlCommand(st2, conexion)
        Dim comando2 = New SqlCommand(st3, conexion)
        Try
            rumregs2 = comando.ExecuteNonQuery()
            comando2.ExecuteNonQuery()

        Catch ex As Exception
            Return ex.Message
        End Try
        Return rumregs2
    End Function
End Class
