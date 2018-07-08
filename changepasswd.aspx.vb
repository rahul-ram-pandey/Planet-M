Imports System.Data.SqlClient
Imports System.Data
Imports System.Web.Configuration
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
       
    End Sub

    Protected Sub btnsubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsubmit.Click
        Dim strcon As String = ConfigurationManager.ConnectionStrings("dbconnection1").ConnectionString
        Dim con As New SqlConnection(strcon)
        con.Open()
        Dim cmd As New SqlCommand("select * from registeration where Username='" + txtusername.Text + "' AND  Password='" + txtoldpasswd.Text + "'", con)
        Dim dr As SqlDataReader

        dr = cmd.ExecuteReader
        If dr.HasRows Then
            Dim cmdd As New SqlCommand("Update registeration set Password='" & txtrepasswd.Text & "', C_Password='" & txtrepasswd.Text & "' where Username='" & txtusername.Text & "'", con)
            dr.Close()

            cmdd.ExecuteNonQuery()
            MsgBox("Your password was change successfully")
            Response.Redirect("login.aspx")
        Else
            MsgBox("Your username and password does not match")
        End If

    End Sub

    Protected Sub btncancel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncancel.Click
        Response.Redirect("login.aspx")
    End Sub
End Class
