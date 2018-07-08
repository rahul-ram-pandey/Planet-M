Imports System.Data.SqlClient
Imports System.Data
Imports System.Web.Configuration
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub btnsubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsubmit.Click
        Dim strcon As String = ConfigurationManager.ConnectionStrings("dbconnection1").ConnectionString
        Dim con As New SqlConnection(strcon)
        con.Open()
        Dim cmd As New SqlCommand("select Password from registeration where Security='" + ddlq.Text + "' AND Email='" + txtemail.Text + "' AND  Answer='" + txtans.Text + "'", con)
        Dim dr As SqlDataReader

        dr = cmd.ExecuteReader
        If dr.Read Then
            txtpass.Text = dr(0)

            lblpass.Visible = True
            txtpass.Visible = True
        Else
            MsgBox("Your username and password does not match")
        End If
       









    End Sub
End Class
