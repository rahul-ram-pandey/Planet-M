Imports System.Data
Imports System.Data.SqlClient

Partial Class Default3
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Dim drs As SqlDataReader
    Dim flag, cartdetail, j As Integer
    Dim hp As New HyperLink
    Dim a, a1, a2, a3, a4, a5 As New ArrayList
  
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Request.QueryString("log") = 1 Then
            Session.RemoveAll()
        End If
    End Sub

    Protected Sub btnsubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsubmit.Click
        flag = 0
        Dim strcon As String = ConfigurationManager.ConnectionStrings("dbconnection1").ConnectionString
        Dim con As New SqlConnection(strcon)
        con.Open()
        cmd = New SqlCommand("select * from registeration where Username='" + txtusername.Text + "' AND  Password='" + txtpassword.Text + "'", con)
        drs = cmd.ExecuteReader()
        If drs.HasRows Then
            While drs.Read()

                Session("username") = txtusername.Text
                Session("password1") = txtusername.Text
                MsgBox("Welcome  " + Session("username"), MsgBoxStyle.MsgBoxRight, "books.com says:")
                Response.Redirect("home.aspx")
            End While
        Else
            Session("username") = txtusername.Text
            flag = 1
        End If
        
        drs.Close()
        If flag = 1 Then
            


            cmd = New SqlCommand("select * from admin where adminid='" + txtusername.Text + "' AND  pass='" + txtpassword.Text + "'", con)
            drs = cmd.ExecuteReader()
            If drs.HasRows Then
                While drs.Read()

                    Session("adminuser") = txtusername.Text
                    Session("adminpass") = txtusername.Text
                    MsgBox("Welcome  " + Session("adminuser"), MsgBoxStyle.MsgBoxRight, "planetm.com says:")
                    Response.Redirect("home.aspx")
                End While
            End If
            drs.Close()

        End If
        If flag = 1 And Session("p") = "" And Session("c") = "1" Then
            Response.Redirect("cartdetails.aspx")
        ElseIf flag = 1 And Session("p") <> "" Then
            cmd = New SqlCommand("delete from cartdetails", con)
            cmd.ExecuteNonQuery()
            Response.Redirect("displaybookdetails.aspx?bookid=" & Session("p"))
        ElseIf flag = 1 And Session("p") = "" Then
            cmd = New SqlCommand("delete from cartdetails", con)
            cmd.ExecuteNonQuery()
            cmd = New SqlCommand("select * from orderdetails where username='" + Session("username") + "' and orderdate='" + CStr(Date.Today.Date.Date) + "'", con)
            drs = cmd.ExecuteReader()
            If drs.HasRows Then
                While drs.Read()
                    cartdetail = 1
                    Session("orderid") = drs.GetString(0)
                End While
                drs.Close()
            End If
        End If
        If cartdetail = 1 Then
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
            cmd = New SqlCommand("delete from cartdetail", con)
            cmd.ExecuteNonQuery()
            For Me.j = 0 To a.Count - 1
                cmd = New SqlCommand("insert into cartdetail values('" + a.Item(j) + "','" + a5.Item(j) + "','" + a1.Item(j) + "','" + a2.Item(j) + "','" + a3.Item(j) + "','" + (Val(a4.Item(j)) * Val(a3.Item(j))).ToString + "')", con)
                cmd.ExecuteNonQuery()
            Next
        End If
        If txtusername.Text = "" Then
            MsgBox("Please enter Username", MsgBoxStyle.MsgBoxRight, "books.com says:")
            txtusername.Focus()

        ElseIf txtpassword.Text = "" Then
            MsgBox("Please enter password", MsgBoxStyle.MsgBoxRight, "books.com says:")
            txtpassword.Focus()

        ElseIf Session("username") = "" Then
            MsgBox("please enter proper user name and password", MsgBoxStyle.MsgBoxRight, "planetm.com says:")
        End If
        con.Close()
        drs.Close()
    End Sub

    Protected Sub btncancel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncancel.Click
        Response.Redirect("home.aspx")
    End Sub

    Protected Sub btnreg_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnreg.Click
        Response.Redirect("register.aspx")
    End Sub
End Class
