Imports System.Data.SqlClient
Imports System.Data
Imports System.Configuration

Partial Class displaydetails

    Inherits System.Web.UI.Page
    Dim con As New SqlConnection
    Dim cmd As SqlCommand
    Dim da As New SqlDataAdapter
    Dim ds As New DataSet
    Dim p As String
    Dim txtUnit As TextBox
    Dim drs As SqlDataReader
    Dim s, s2, s3, s4, a5, b As String
    Dim u_id, cnt, flag As Integer

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim strcon As String = ConfigurationManager.ConnectionStrings("dbconnection1").ConnectionString
        Dim con As New SqlConnection(strcon)
        con.Open()
        p = Request.QueryString("audioid")
        If Me.IsPostBack = False Then
            ds = getdataset()
            bindgrid(ds)
        End If
    End Sub
    Public Function getdataset() As DataSet
        Dim strcon As String = ConfigurationManager.ConnectionStrings("dbconnection1").ConnectionString
        Dim con As New SqlConnection(strcon)
        con.Open()
        cmd = New SqlCommand("select * from adminaudio where audioid='" + p + "'", con)
        da = New SqlDataAdapter(cmd)
        da.Fill(ds, "adminaudio")
        con.Close()
        Return ds
    End Function
    Public Sub bindgrid(ByVal ds As DataSet)
        Repeater1.DataSource = ds.Tables("adminaudio")
        Repeater1.DataBind()
    End Sub


    Protected Sub btnAddToCart_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAddToCart.Click
        flag = 1
        If Session("username") <> "" Then
            Dim strcon As String = ConfigurationManager.ConnectionStrings("dbconnection").ConnectionString
            Dim con As New SqlConnection(strcon)
            con.Open()
            cmd = New SqlCommand("select * from adminaudio where audioid='" + p + "'", con)
            drs = cmd.ExecuteReader()
            While drs.Read()
                s = drs.GetString(0)
                s2 = drs.GetString(2)
                s3 = drs.GetString(3)
                a5 = drs.GetString(1)
            End While
            drs.Close()

            If Session("orderid") = "" Then
                da = New SqlDataAdapter("select [orderid] from finalorder order by [orderid]", con)
                da.Fill(ds, "finalorder")
                If ds.Tables("finalorder").Rows.Count = 0 Then
                    u_id = 101

                    s4 = "O" & u_id
                    Session("orderid") = s4
                Else
                    cmd = New SqlCommand("select * from orderdetails where username='" + Session("username") + "' and orderdate='" + CStr(Date.Today.Date.Date) + "'", con)
                    drs = cmd.ExecuteReader()
                    If drs.HasRows() Then
                        While drs.Read()
                            Session("orderid") = drs.GetString(0)
                        End While
                        drs.Close()
                    Else

                        cnt = ds.Tables("finalorder").Rows.Count
                        u_id = Val(Mid(ds.Tables("finalorder").Rows(cnt - 1)("orderid"), 2)) + 1
                        s4 = "O" & u_id
                        Session("orderid") = s4
                    End If
                End If
            Else
                Dim s5 As String
                s5 = "1"
                cmd = New SqlCommand("select * from cartdetail", con)
                drs = cmd.ExecuteReader()
                While drs.Read()
                    If drs.GetString(0) = s Then
                        MsgBox("Product is already added to to cart", MsgBoxStyle.MsgBoxRight, "Redirecting to your cart:")
                        flag = 0
                        Response.Redirect("cartdetails.aspx")
                    Else
                        flag = 1
                    End If
                End While

            End If
            drs.Close()
            If flag = 1 Then
                Dim s5 As String
                s5 = "1"
                cmd = New SqlCommand("insert into cartdetail values('" + s + "','" + Session("orderid") + "','" + a5 + "','" + s3 + "','" + s5 + "','" + s3 + "')", con)
                cmd.ExecuteNonQuery()
                Session("dis") = 1
                Response.Redirect("cartdetails.aspx")
            End If
        Else
            MsgBox("You have to first login", MsgBoxStyle.MsgBoxRight, "Login Error")
            Session("p") = p
            Response.Redirect("Login.aspx")
        End If
    End Sub
End Class
