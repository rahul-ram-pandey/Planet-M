

Imports System.Data.SqlClient
Imports System.Data
Imports System.Configuration
Partial Class viewhandsets

    Inherits System.Web.UI.Page
    Dim con As New SqlConnection
    Dim cmd, cmd1 As SqlCommand
    Dim dr As SqlDataReader
    Dim da As New SqlDataAdapter
    Dim ds, ds1 As New DataSet
    Dim p As String


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim strcon As String = ConfigurationManager.ConnectionStrings("dbconnection1").ConnectionString
        Dim con As New SqlConnection(strcon)
        con.Open()
        p = Request.QueryString("Category")
        If Me.IsPostBack = False Then
            ds1 = getdataset1()
            bindgrid1(ds1)
        End If
    End Sub
    Public Function getdataset1() As DataSet
        Dim strcon As String = ConfigurationManager.ConnectionStrings("dbconnection1").ConnectionString
        Dim con As New SqlConnection(strcon)
        con.Open()
        cmd = New SqlCommand("select * from adminhandset where category='" + p + "'", con)
        da = New SqlDataAdapter(cmd)
        da.Fill(ds, "adminhandset")
        con.Close()
        Return ds
    End Function
    Public Sub bindgrid1(ByVal ds As DataSet)
        ListView1.DataSource = ds.Tables("adminhandset")
        ListView1.DataBind()
    End Sub

    Protected Sub btnsearch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsearch.Click
        Dim strcon As String = ConfigurationManager.ConnectionStrings("dbconnection1").ConnectionString
        Dim con As New SqlConnection(strcon)
        con.Open()
        cmd1 = New SqlCommand("select * from adminhandset where handsetname='" + TextBox1.Text + "'", con)
        dr = cmd1.ExecuteReader
        If dr.Read Then
            Response.Redirect("viewhandsetdetails.aspx?handsetid=" + TextBox1.Text)
        Else
            MsgBox("no product found")
        End If
    End Sub
End Class

