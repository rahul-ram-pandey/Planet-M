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
            cmd = New SqlCommand("Select * from adminaudio order by audioid", con)
            da = New SqlDataAdapter(cmd)
            da.Fill(ds, "adminaudio")
            Gvproduct.DataSource = ds.Tables("adminaudio")
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
            da = New SqlDataAdapter("select audioid from adminaudio order by audioid", con)
            da.Fill(ds, "adminaudio")
            txtid.Enabled = False
            If ds.Tables("adminaudio").Rows.Count = 0 Then
                uni_id = 101
                btnprodadd.Text = "SAVE"
                txtid.Text = "A" & uni_id
            Else
                cnt = ds.Tables("adminaudio").Rows.Count
                uni_id = Val(Mid(ds.Tables("adminaudio").Rows(cnt - 1)("audioid"), 2)) + 1
                btnprodadd.Text = "SAVE"
                txtid.Text = "A" & uni_id

            End If
        ElseIf btnprodadd.Text = "SAVE" Then


            If txtname.Text = "" Then
                MsgBox("Please Enter Audio's Name.. ")
                txtname.Focus()

            ElseIf txtmovname.Text = "" Then
                MsgBox("Please Enter Movie Name..")
                txtmovname.Focus()
            ElseIf txtdir.Text = "" Then
                MsgBox("Please Enter Director Name..")
                txtdir.Focus()

            ElseIf txtartist.Text = "" Then
                MsgBox("Please Enter Artist Name..")
                txtartist.Focus()
            ElseIf txtalbums.Text = "" Then
                MsgBox("Please Enter Album Name..")
                txtalbums.Focus()
            ElseIf txtsingers.Text = "" Then
                MsgBox("Please Enter Singer Name..")
                txtsingers.Focus()

            ElseIf txtcomposers.Text = "" Then
                MsgBox("Please Enter Composers Name..")
                txtcomposers.Focus()

            ElseIf txtlyricists.Text = "" Then
                MsgBox("Please Enter Lyricists Name..")
                txtlyricists.Focus()

            ElseIf txtlabel.Text = "" Then
                MsgBox("Please Enter Label Name..")
                txtlabel.Focus()

            ElseIf txtlength.Text = "" Then
                MsgBox("Please Enter Length..")
                txtlength.Focus()

            ElseIf txtrelyear.Text = "" Then
                MsgBox("Please Enter Release Year..")
                txtrelyear.Focus()

            ElseIf txtsynopsis.Text = "" Then
                MsgBox("Please Enter Synopsis..")
                txtsynopsis.Focus()

            ElseIf txtgenre.Text = "" Then
                MsgBox("Please Enter Genre..")
                txtmovname.Focus()
            ElseIf IsNumeric(txtcopies.Text) = False Or txtcopies.Text = "" Then
                MsgBox("Please Enter Valid No. Copies.. ")
                txtcopies.Focus()
            ElseIf txtcategory.Text = "" Then
                MsgBox("Please Enter Category..")
                txtcategory.Focus()
            ElseIf IsNumeric(txtcost.Text) = False Or txtcost.Text = "" Then
                MsgBox("Please Enter Valid Amount.. ")
                txtcost.Focus()
            ElseIf IsNumeric(txtamount.Text) = False Or txtamount.Text = "" Then
                MsgBox("Please Enter Valid Amount.. ")
                txtamount.Focus()
            ElseIf txtratings.Text = "" Then
                MsgBox("Please Enter Rating's.. ")
                txtratings.Focus()

            ElseIf txtimg.HasFile = False Then
                MsgBox("Please Upload a file.. ")
                txtimg.Focus()

            Else

                cmd = New SqlCommand("insert into adminaudio values('" + txtid.Text + "','" + txtname.Text + "','" + txtmovname.Text + "','" + txtdir.Text + "','" + txtartist.Text + "','" + txtalbums.Text + "','" + txtsingers.Text + "','" + txtcomposers.Text + "','" + txtlyricists.Text + "','" + txtlabel.Text + "','" + txtlength.Text + "','" + txtrelyear.Text + "','" + txtsynopsis.Text + "','" + txtgenre.Text + "','" + txtcopies.Text + "','" + txtcategory.Text + "','" + txtcost.Text + "','" + txtamount.Text + "','" + txtratings.Text + "','" + f + "') ", con)
                cmd.ExecuteNonQuery()
                MsgBox("record inserted", MsgBoxStyle.ApplicationModal, "Notification")
                

                ds.Clear()
                txtid.Text = ""
                txtname.Text = ""
                txtalbums.Text = ""
                txtamount.Text = ""
                txtartist.Text = ""

                txtcomposers.Text = ""
                txtcopies.Text = ""
                txtdir.Text = ""
                txtcost.Text = ""
                txtgenre.Text = ""
                txtlabel.Text = ""
                txtlength.Text = ""
                txtlyricists.Text = ""
                txtmovname.Text = ""
                txtratings.Text = ""
                txtrelyear.Text = ""
                txtsingers.Text = ""
                txtsynopsis.Text = ""

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

            If txtname.Text = "" Then
                MsgBox("Please Enter Audio's Name.. ")
                txtname.Focus()

            ElseIf txtmovname.Text = "" Then
                MsgBox("Please Enter Movie Name..")
                txtmovname.Focus()
            ElseIf txtdir.Text = "" Then
                MsgBox("Please Enter Director Name..")
                txtdir.Focus()

            ElseIf txtartist.Text = "" Then
                MsgBox("Please Enter Artist Name..")
                txtartist.Focus()
            ElseIf txtalbums.Text = "" Then
                MsgBox("Please Enter Album Name..")
                txtalbums.Focus()
            ElseIf txtsingers.Text = "" Then
                MsgBox("Please Enter Singer Name..")
                txtsingers.Focus()

            ElseIf txtcomposers.Text = "" Then
                MsgBox("Please Enter Composers Name..")
                txtcomposers.Focus()

            ElseIf txtlyricists.Text = "" Then
                MsgBox("Please Enter Lyricists Name..")
                txtlyricists.Focus()

            ElseIf txtlabel.Text = "" Then
                MsgBox("Please Enter Label Name..")
                txtlabel.Focus()

            ElseIf txtlength.Text = "" Then
                MsgBox("Please Enter Length..")
                txtlength.Focus()

            ElseIf txtrelyear.Text = "" Then
                MsgBox("Please Enter Release Year..")
                txtrelyear.Focus()

            ElseIf txtsynopsis.Text = "" Then
                MsgBox("Please Enter Synopsis..")
                txtsynopsis.Focus()

            ElseIf txtgenre.Text = "" Then
                MsgBox("Please Enter Genre..")
                txtmovname.Focus()
            ElseIf IsNumeric(txtcopies.Text) = False Or txtcopies.Text = "" Then
                MsgBox("Please Enter Valid No. Copies.. ")
                txtcopies.Focus()
            ElseIf txtcategory.Text = "" Then
                MsgBox("Please Enter Category..")
                txtcategory.Focus()
            ElseIf IsNumeric(txtcost.Text) = False Or txtcost.Text = "" Then
                MsgBox("Please Enter Valid Amount.. ")
                txtcost.Focus()
            ElseIf IsNumeric(txtamount.Text) = False Or txtamount.Text = "" Then
                MsgBox("Please Enter Valid Amount.. ")
                txtamount.Focus()
            ElseIf txtratings.Text = "" Then
                MsgBox("Please Enter Rating's.. ")
                txtratings.Focus()

            ElseIf txtimg.HasFile = False Then
                MsgBox("Please Upload a file.. ")
                txtimg.Focus()


            Else

                cmd = New SqlCommand("update adminaudio set audioid='" + txtid.Text + "',audioname='" + txtname.Text + "',moviename='" + txtmovname.Text + "',musicdirector='" + txtdir.Text + "',artists='" + txtartist.Text + "',album='" + txtalbums.Text + "',singers='" + txtsingers.Text + "',composers='" + txtcomposers.Text + "',lyricists='" + txtlyricists.Text + "',label='" + txtlabel.Text + "',tracklength='" + txtlength.Text + "',releaseyear='" + txtrelyear.Text + "',synopsis='" + txtsynopsis.Text + "',genre='" + txtgenre.Text + "',cdcopies='" + txtcopies.Text + "',cdcategory='" + txtcategory.Text + "',cost='" + txtcost.Text + "',totalamount='" + txtamount.Text + "',ratings='" + txtratings.Text + "',url='" + f + "'", con)

                cmd.ExecuteNonQuery()

                MsgBox("Record Updated successfully")
                ds.Clear()

                txtid.Text = ""
                txtname.Text = ""
                txtalbums.Text = ""
                txtamount.Text = ""

                txtcategory.Text = ""
                txtcomposers.Text = ""
                txtcopies.Text = ""
                txtdir.Text = ""
                txtcost.Text = ""
                txtgenre.Text = ""
                txtlabel.Text = ""
                txtlength.Text = ""
                txtlyricists.Text = ""
                txtmovname.Text = ""
                txtratings.Text = ""
                txtrelyear.Text = ""
                txtsingers.Text = ""
                txtsynopsis.Text = ""

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

        cmd = New SqlCommand("delete from adminaudio where audioid='" + txtid.Text + "'", con)

        del = MsgBox("Do you really want to delete this record", MsgBoxStyle.YesNo)
        If del = vbYes Then

            r = cmd.ExecuteNonQuery()

            If del = vbYes Then
                cmd = New SqlCommand("delete from adminaudio where audioid='" + txtid.Text + "'", con)
                cmd.ExecuteNonQuery()
            End If

            
            If r = 1 Then
                MsgBox("record deleted successfully")
                ds.Clear()
                txtid.Text = ""
                txtname.Text = ""
                txtalbums.Text = ""
                txtamount.Text = ""
                txtartist.Text = ""

                txtcomposers.Text = ""
                txtcopies.Text = ""
                txtdir.Text = ""
                txtcost.Text = ""
                txtgenre.Text = ""
                txtlabel.Text = ""
                txtlength.Text = ""
                txtlyricists.Text = ""
                txtmovname.Text = ""
                txtratings.Text = ""
                txtrelyear.Text = ""
                txtsingers.Text = ""
                txtsynopsis.Text = ""

            Else
                MsgBox("no such id exist")
            End If

        End If
    End Sub
End Class
