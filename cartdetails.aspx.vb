Imports System.Data.SqlClient
Partial Class cartdetails
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Dim drs As SqlDataReader
    Dim i As Integer
    Dim lst As ListViewItem
    Dim l, l1, l2, l3, l4, l5 As New Label
    Dim a, a1, a2, a3, a4, a5 As New ArrayList
    Dim j As Integer
    Dim total As Single


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (Session("cart") = 1 Or Request.QueryString("c") = 1 Or Session("c") = "1") And Session("username") <> "" And Session("dis") = 0 Then
            Dim strcon As String = ConfigurationManager.ConnectionStrings("dbConnection1").ConnectionString
            con = New SqlConnection(strcon)
            con.Open()
            cmd = New SqlCommand("select * from orderdetails where username='" + Session("username") + "' and orderdate='" + CStr(Date.Today.Date.Date) + "'", con)
            drs = cmd.ExecuteReader()
            If drs.HasRows Then
                While drs.Read()
                    Session("orderid") = drs.GetString(0)
                End While
                drs.Close()
                cmd = New SqlCommand("select * from finalorder where orderid='" + Session("orderid") + "'", con)
                drs = cmd.ExecuteReader()
                While drs.Read()
                    a.Add(drs.GetString(0))
                    a1.Add(drs.GetString(1))
                    a2.Add(drs.GetString(2))
                    a3.Add(drs.GetString(3))
                    a4.Add(drs.GetString(4))
                    a5.Add(drs.GetString(6))
                End While
                drs.Close()
                cmd = New SqlCommand("delete from cartdetails", con)
                cmd.ExecuteNonQuery()
                For Me.j = 0 To a.Count - 1
                    cmd = New SqlCommand("insert into cartdetails values('" + a.Item(j) + "','" + a5.Item(j) + "','" + a1.Item(j) + "','" + a2.Item(j) + "','" + a3.Item(j) + "','" + (Val(a2.Item(j)) / Val(a3.Item(j))).ToString + "')", con)
                    cmd.ExecuteNonQuery()
                Next
                Session("cart") = 0
            Else
                MsgBox("No order has been made by current user", MsgBoxStyle.MsgBoxRight, "books.com says:")
                Response.Redirect("home.aspx")
            End If
        ElseIf Session("username") = "" Then
            MsgBox("You must login first", MsgBoxStyle.MsgBoxRight, " books.com says:")
            Session("c") = "1"
            Response.Redirect("login.aspx")
        End If
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Response.Redirect("home.aspx")
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        total = 0
        Session("dis") = 0
        If ListView1.Items.Count = 0 Then
            MsgBox("no item purchased can not confirm order", MsgBoxStyle.MsgBoxRight, "purchase error")
        Else
            Dim strcon As String = ConfigurationManager.ConnectionStrings("dbconnection1").ConnectionString
            con = New SqlConnection(strcon)
            con.Open()
            l1 = ListView1.Items(0).FindControl("OrderidLabel")

            cmd = New SqlCommand("delete from finalorder where orderid='" + l1.Text + "'", con)
            cmd.ExecuteNonQuery()
            cmd = New SqlCommand("delete from orderdetails where orderid='" + l1.Text + "'", con)
            cmd.ExecuteNonQuery()


        End If

        For Me.i = 0 To ListView1.Items.Count - 1
            l = ListView1.Items(i).FindControl("BookidLabel")
            l1 = ListView1.Items(i).FindControl("OrderidLabel")
            l2 = ListView1.Items(i).FindControl("BookCatLabel")
            l3 = ListView1.Items(i).FindControl("RateLabel")
            l4 = ListView1.Items(i).FindControl("UnitsLabel")
            l5 = ListView1.Items(i).FindControl("PriceLabel")
            total = total + Val(l5.Text)
            cmd = New SqlCommand("insert into finalorder values('" + l.Text + "','" + l2.Text + "','" + l3.Text + "','" + l4.Text + "','" + l5.Text + "','" + total.ToString + "','" + l1.Text + "')", con)
            cmd.ExecuteNonQuery()
        Next
        cmd = New SqlCommand("insert into orderdetails values('" + l1.Text + "','" + Session("username") + "','" + CStr(Date.Today.Date.Date) + "','" + total.ToString + "')", con)
        cmd.ExecuteNonQuery()
        Response.Redirect("confirmorder.aspx")
    End Sub
End Class

