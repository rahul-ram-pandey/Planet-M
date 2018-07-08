Imports System.Data.SqlClient
Imports System.Data
Imports System.Web.Configuration
Partial Class Default2
    Inherits System.Web.UI.Page
    Dim cmd As New SqlCommand
    Dim da As New SqlDataAdapter
    Dim ds As New DataSet
    Dim drs As SqlDataReader
    Dim o As String


    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim strcon As String = ConfigurationManager.ConnectionStrings("dbconnection1").ConnectionString
        Dim con As New SqlConnection(strcon)
        con.Open()
        da = New SqlDataAdapter("select * from orderdetails where orderdate='" + CStr(Calendar1.SelectedDate.Date.Date) + "'", con)
        da.Fill(ds, "orderdetails")
        ListView1.DataSource = ds.Tables("orderdetails")
        ListView1.DataBind()
        
    End Sub

End Class
