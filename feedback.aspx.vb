Imports System.Data.SqlClient
Imports System.Data
Imports System.Web.Configuration
Partial Class Default3
    Inherits System.Web.UI.Page
  
    Dim cmd As New SqlCommand
    Dim da As New SqlDataAdapter
    Dim ds As New DataSet
    Protected Sub btnsubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsubmit.Click
        Dim strcon As String = ConfigurationManager.ConnectionStrings("dbconnection1").ConnectionString
        Dim con As New SqlConnection(strcon)
        con.Open()
        cmd = New SqlCommand("insert into feedback values('" + txtusername.Text + "','" + txtcomments.Text + "')", con)
        cmd.ExecuteNonQuery()
        MsgBox("FeedBack inserted", MsgBoxStyle.MsgBoxRight, "Thankyou")
        ds.Clear()

        txtusername.Text = ""
        txtcomments.Text = ""


        da = New SqlDataAdapter("select * from feedback order by Username", con)
        da.Fill(ds, "feedback")

        Me.DataBind()
        con.Close()
    End Sub

    Protected Sub btnexit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnexit.Click
        Response.Redirect("home.aspx")
    End Sub
End Class
