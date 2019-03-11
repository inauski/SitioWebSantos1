
Partial Class _Default
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
     
        etNombre.Text = Session("nombre")
        etEdad.Text = Session("edad")
        etEmail.Text = Session("email")
        etPass.Text = Session("pass")

        etiquetasVisibles()
    End Sub

    Private Sub etiquetasVisibles()
        etNombre.Visible = True
        etEdad.Visible = True
        etEmail.Visible = True
        etPass.Visible = True

        etName.Visible = True
        etAge.Visible = True
        etCorreo.Visible = True
        etContra.Visible = True
    End Sub
End Class
