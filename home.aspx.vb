Imports System.Data
Imports System.Data.SqlClient
Imports System.IO

Partial Class _Default
    Inherits System.Web.UI.Page
    Dim a As String
    Dim cmd1, cmd2, cmd3, cmd4 As SqlCommand
    Dim dr1, dr2, dr3, dr4 As SqlDataReader

    Protected Sub btnsearch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsearch.Click
        Dim strcon As String = ConfigurationManager.ConnectionStrings("dbconnection1").ConnectionString
        Dim con As New SqlConnection(strcon)
        con.Open()
        cmd1 = New SqlCommand("select * from adminaudio where audioname='" + TextBox1.Text + "'", con)
        dr1 = cmd1.ExecuteReader
        If dr1.Read Then
            Response.Redirect("viewaudiodetails.aspx?audioid=" + TextBox1.Text)
            dr1.Close()
        End If
        con.Close()
        con.Open()
        cmd2 = New SqlCommand("select * from adminvideo where moviename='" + TextBox1.Text + "'", con)
        dr2 = cmd2.ExecuteReader
        If dr2.Read Then
            Response.Redirect("viewvideodetails.aspx?movieid=" + TextBox1.Text)
            dr2.Close()
        End If
        con.Close()
        con.Open()
        cmd3 = New SqlCommand("select * from adminhandset where handsetname='" + TextBox1.Text + "'", con)
        dr3 = cmd3.ExecuteReader
        If dr3.Read Then

            Response.Redirect("viewhandsetdetails.aspx?handsetid=" + TextBox1.Text)
            dr3.Close()
        End If
        con.Close()
        con.Open()
        cmd4 = New SqlCommand("select * from adminbooks where Bookname='" + TextBox1.Text + "'", con)




        dr4 = cmd4.ExecuteReader
        If dr4.Read Then

            Response.Redirect("viewbookdetails.aspx?Bookid=" + TextBox1.Text)
            dr4.Close()


        Else
            MsgBox("no product found")
        End If
        con.Close()
    End Sub
End Class
