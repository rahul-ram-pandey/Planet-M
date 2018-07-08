Imports System.Data.SqlClient

Partial Class Default2
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Dim drs As SqlDataReader
    Dim a, b, c, d, f As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim strcon As String = ConfigurationManager.ConnectionStrings("dbconnection1").ConnectionString
        con = New SqlConnection(strcon)
        con.Open()
        cmd = New SqlCommand("select * from orderdetails where orderid='" + Session("orderid") + "'", con)
        drs = cmd.ExecuteReader()
        While drs.Read()
            d = drs.GetString(0)
            f = drs.GetString(3)
        End While
        drs.Close()
        cmd = New SqlCommand("select * from registeration where username='" + Session("username") + "'", con)
        drs = cmd.ExecuteReader()
        While drs.Read()
            a = drs.GetString(1)
            b = drs.GetString(9) & " " & drs.GetString(10)
            c = drs.GetString(11)
        End While
        drs.Close()
        Label2.Text = "<table border=1 height=300px width=600px align=center><tr><td colspan=4 align=center height=20px><b>planetm.com<b></td></tr><tr><td colspan=4 height=40px><b>Customer Name:<u>" & a & "</u></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Order Id:" & d & "</b><br><b>Address:" & b & "</b><br><b>Contact Number:" & c & "</b></td></tr>"
        Label2.Text &= "<tr><td><b>Book Name</b></td><td><b>Rate</b></td><td><b>Quantity</b></td ><td><b>Amount</b></td></tr>"
        cmd = New SqlCommand("select productmame,Rate,Units  from cartdetails where Orderid='" + Session("orderid").ToString + "'", con)
        drs = cmd.ExecuteReader()
        If drs.HasRows Then
            While drs.Read()
                Label2.Text &= "<tr><td><b>" & drs(0) & "</b></td><td><b>" & drs(1) & "</b></td><td><b>" & drs(2) & "</b></td><td><b>" & (drs(2) * drs(1)) & "</b></td></tr>"
            End While
        End If
        drs.Close()
        Label2.Text &= "<tr><td colspan=2></td><td><b>Total Amount</b></td><td>" & f & "</td></tr></table>"
        Label3.Text = "Thank-You for shopping" & "</br>" & "You will receive a call shortly to confirm the order.-<b>9821061078</b>" & "<br/>" & "Please Visit Again" & "<br/>" & "The Products will be shipped within 2-3 working days."
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Session("cart") = 1
        Response.Redirect("cartdetails.aspx")
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Session.RemoveAll()
        Response.Redirect("login.aspx")
    End Sub
End Class
