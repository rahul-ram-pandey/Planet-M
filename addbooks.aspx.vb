Imports System.Data.SqlClient
Imports System.Data
Imports System.Web.Configuration


Partial Class _Default
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Dim ds As New DataSet
    Dim uni_id As Integer
    Dim da As New SqlDataAdapter
    Dim r As Integer
    Dim cnt As Integer
    Dim f As String
    Dim a As String
    Dim drs As SqlDataReader
    Dim s As String
    Dim s1 As String
    Dim s2 As String
    Dim txt As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim strcon As String = ConfigurationManager.ConnectionStrings("dbconnection1").ConnectionString
        Dim con As New SqlConnection(strcon)
        con.Open()
        If Me.IsPostBack = False Then
            cmd = New SqlCommand("Select * from adminbooks order by Bookid", con)
            da = New SqlDataAdapter(cmd)
            da.Fill(ds, "adminbooks")
            Gvproduct.DataSource = ds.Tables("adminbooks")
            Me.DataBind()
        End If
        con.Close()
        If Not Page.IsPostBack Then

        End If
    End Sub

    Protected Sub btnprodadd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnprodadd.Click
        f = txtimg.FileName.ToString
        Dim strcon As String = ConfigurationManager.ConnectionStrings("dbconnection1").ConnectionString
        Dim con As New SqlConnection(strcon)
        con.Open()
        If btnprodadd.Text = "ADD" Then
            da = New SqlDataAdapter("select Bookid from adminbooks order by Bookid", con)
            da.Fill(ds, "adminbooks")
            txtid.Enabled = False
            If ds.Tables("adminbooks").Rows.Count = 0 Then
                uni_id = 101
                btnprodadd.Text = "SAVE"
                txtid.Text = "B" & uni_id
            Else
                cnt = ds.Tables("adminbooks").Rows.Count
                uni_id = Val(Mid(ds.Tables("adminbooks").Rows(cnt - 1)("Bookid"), 2)) + 1
                btnprodadd.Text = "SAVE"
                txtid.Text = "B" & uni_id

            End If
        ElseIf btnprodadd.Text = "SAVE" Then


            If txtname.Text = "" Then
                MsgBox("Please Enter Book Name.. ")
                txtname.Focus()

            ElseIf txtauthor.Text = "" Then
                MsgBox("Please Enter Author Name..")
                txtauthor.Focus()


            ElseIf IsNumeric(txtprice.Text) = False Or txtprice.Text = "" Then
                MsgBox("Please Enter Valid Amount.. ")
                txtprice.Focus()

            ElseIf txtpublisher.Text = "" Then
                MsgBox("Please Enter Publisher.. ")
                txtpublisher.Focus()

            ElseIf txtpdate.Text = "" Then
                MsgBox("Please Enter Valid Date.. ")
                txtpdate.Focus()

            ElseIf txtisbn.Text = "" Then
                MsgBox("Please Enter Valid ISBN.. ")
                txtisbn.Focus()

            ElseIf txtnop.Text = "" Then
                MsgBox("Please Enter No.OfPages.. ")
                txtnop.Focus()
            Else

                cmd = New SqlCommand("insert into adminbooks values('" + txtid.Text + "','" + txtname.Text + "','" + txtauthor.Text + "','" + txtprice.Text + "','" + f + "','" + txtpublisher.Text + "','" + txtpdate.Text + "','" + txtisbn.Text + "','" + txtnop.Text + "','" + txtlang.Text + "','" + txtcat.Text + "') ", con)
                cmd.ExecuteNonQuery()
                MsgBox("record inserted", MsgBoxStyle.ApplicationModal, "Notification")
               


                ds.Clear()
                txtid.Text = ""
                txtname.Text = ""
                txtauthor.Text = ""
                txtprice.Text = ""
                txtpublisher.Text = ""
                txtpdate.Text = ""
                txtisbn.Text = ""
                txtnop.Text = ""
                txtlang.Text = ""


                btnprodadd.Text = "ADD"
            End If
            con.Close()
        End If

    End Sub

    Protected Sub btnprodupdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnprodupdate.Click
        Dim strcon As String = ConfigurationManager.ConnectionStrings("dbconnection1").ConnectionString
        Dim con As New SqlConnection(strcon)
        con.Open()

        If btnprodupdate.Text = "MODIFY" Then
            btnprodupdate.Text = "UPDATE"


        ElseIf btnprodupdate.Text = "UPDATE" Then

            If txtid.Text = "" Then
                MsgBox("Please Enter Product Id ")
                txtid.Focus()

            ElseIf txtname.Text = "" Then
                MsgBox("Please Enter Book Name.. ")
                txtname.Focus()

            ElseIf txtauthor.Text = "" Then
                MsgBox("Please Enter Author Name..")
                txtauthor.Focus()


            ElseIf txtprice.Text = "" Then
                MsgBox("Please Enter Price.. ")
                txtprice.Focus()

            ElseIf txtpublisher.Text = "" Then
                MsgBox("Please Enter Publisher Name.. ")
                txtpublisher.Focus()

            ElseIf txtpdate.Text = "" Then
                MsgBox("Please Enter Series ")
                txtpdate.Focus()

            ElseIf txtisbn.Text = "" Then
                MsgBox("Please Enter ISBN.. ")
                txtisbn.Focus()

            ElseIf txtnop.Text = "" Then
                MsgBox("Please Enter No Of Pages.. ")
                txtnop.Focus()

            Else

                cmd = New SqlCommand("update adminbooks set Bookid='" + txtid.Text + "',Bookname='" + txtname.Text + "',Author='" + txtauthor.Text + "',Price='" + txtprice.Text + "',prod_image='" + f + "', Publisher='" + txtpublisher.Text + "',Publishigdate='" + txtpdate.Text + "',ISBN='" + txtisbn.Text + "',Noofpages='" + txtnop.Text + "' ,Language='" + txtlang.Text + "',Category='" + txtcat.Text + "' where Bookid='" + txtid.Text + "'", con)
                cmd.ExecuteNonQuery()

                MsgBox("Record Updated successfully")
                ds.Clear()

                txtid.Text = ""
                txtname.Text = ""
                txtauthor.Text = ""
                txtprice.Text = ""
                txtpublisher.Text = ""
                txtpdate.Text = ""
                txtisbn.Text = ""
                txtnop.Text = ""
                txtlang.Text = ""

                btnprodupdate.Text = "MODIFY"
            End If
            btnprodupdate.Text = "MODIFY"
            con.Close()
        End If
    End Sub

    Protected Sub btnproddel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnproddel.Click
        Dim del As VariantType
        Dim strcon As String = ConfigurationManager.ConnectionStrings("dbconnection1").ConnectionString
        Dim con As New SqlConnection(strcon)

        con.Open()

        cmd = New SqlCommand("delete from adminbooks where Bookid='" + txtid.Text + "'", con)

        del = MsgBox("Are you really want to delete this record", MsgBoxStyle.YesNo)
        If del = vbYes Then

            r = cmd.ExecuteNonQuery()

           

            If r = 1 Then
                MsgBox("record deleted successfully")
                ds.Clear()
                txtid.Text = ""
                txtname.Text = ""
                txtauthor.Text = ""
                txtprice.Text = ""
                txtpublisher.Text = ""
                txtpdate.Text = ""
                txtisbn.Text = ""
                txtnop.Text = ""
                txtlang.Text = ""

            Else
                MsgBox("no such id exist")
            End If

        End If
    End Sub


End Class
