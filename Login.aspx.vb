Imports System.Data.OleDb
Imports System.Data

Partial Class Login
    Inherits System.Web.UI.Page

    Protected Sub LoginButton_Click(sender As Object, e As System.EventArgs) Handles LoginButton.Click

        'Si las credenciales no son correctas se muestra un aviso. En caso contrario, se redirige al listado de usuarios
        If (Not Existe(txtEmail.Text, txtPass.Text)) Then
            etAviso.Visible = True
            etAviso.Text = "Las credenciales no son correctas"
        Else
            Response.Redirect("ListaUsuarios.aspx")
        End If

    End Sub

    'Funcion que comprueba si existe el email y contraseña con las credenciales introducidas por el usuario
    Public Function Existe(ByVal correo As String, ByVal contra As String) As Boolean
        Dim cnSQL As New OleDbConnection
        cnSQL.ConnectionString = "provider=Microsoft.ACE.OLEDB.12.0; Data Source=|DataDirectory|\pruebas.mdb"

        'COUNT devuelve el numero de registros que existen con ese email y contraseña y ExecuteScalar() comprueba si encuentra registros 
        'con el correo y contrasena introducidos
        Dim query = "SELECT COUNT(*) FROM usuarios WHERE EMAIL=@correo and CONTRASENA=@contra"
        Dim cmd As New OleDbCommand(query, cnSQL)
        cmd.Parameters.AddWithValue("EMAIL", correo)
        cmd.Parameters.AddWithValue("CONTRASENA", contra)

        cnSQL.Open()
        Dim count As Integer = Convert.ToInt32(cmd.ExecuteScalar())

        'Si el valor es cero el usuario no existe
        If count = 0 Then
            Return False
        Else
            Return True

        End If
        cnSQL.Close()

    End Function
    
End Class
