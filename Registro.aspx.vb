Imports System.Data.OleDb

Partial Class _Default
    Inherits System.Web.UI.Page
    
    Protected Sub btnGuardar_Click(sender As Object, e As System.EventArgs) Handles btnGuardar.Click
      
            'Si el checkbox esta activado, se insertan en la base de datos (pruebas.mdb de access) el usuario con los datos introducidos, sino
            'se guardan los datos en variables de sesión
            If chkBBDD.Checked Then
                Dim conn As New OleDbConnection
                conn.ConnectionString = "provider=Microsoft.ACE.OLEDB.12.0; Data Source=|DataDirectory|\pruebas.mdb"
                Try
                    conn.Open()

                    Dim comando As New OleDbCommand("INSERT INTO USUARIOS (NOMBRE,EDAD, EMAIL,CONTRASENA) VALUES ('" & txtNombre.Text & "', '" & txtEdad.Text & "', '" & txtEmail.Text & "', '" & txtPass.Text & "')", conn)
                    comando.ExecuteNonQuery()

                    etRegistro.Visible = True
                    etRegistro.Text = "Registrado correctamente"

                    conn.Close()
                Catch oledbex As OleDbException
                    MsgBox(oledbex.ToString, "Error")
                End Try
            Else
                guardadoDatosSesion()
                etRegistro.Visible = True
                etRegistro.Text = "Registrado correctamente"
            End If

    End Sub

    Private Sub guardadoDatosSesion()
        Session("nombre") = txtNombre.Text
        Session("edad") = txtEdad.Text
        Session("email") = txtEmail.Text
        Session("pass") = txtPass.Text
    End Sub
End Class
