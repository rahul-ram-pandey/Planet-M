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
            cmd = New SqlCommand("Select * from adminvideo order by movieid", con)
            da = New SqlDataAdapter(cmd)
            da.Fill(ds, "adminvideo")
            GridView1.DataSource = ds.Tables("adminvideo")
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
            da = New SqlDataAdapter("select movieid from adminvideo order by movieid", con)
            da.Fill(ds, "adminvideo")
            txtid.Enabled = False
            If ds.Tables("adminvideo").Rows.Count = 0 Then
                uni_id = 101
                btnprodadd.Text = "SAVE"
                txtid.Text = "M" & uni_id
            Else
                cnt = ds.Tables("adminvideo").Rows.Count
                uni_id = Val(Mid(ds.Tables("adminvideo").Rows(cnt - 1)("movieid"), 2)) + 1
                btnprodadd.Text = "SAVE"
                txtid.Text = "M" & uni_id

            End If
        ElseIf btnprodadd.Text = "SAVE" Then


           




            If txtratings.Text = "" Then
                MsgBox("Please Enter Rating's.. ")
                txtratings.Focus()

            ElseIf txtimg.HasFile = False Then
                MsgBox("Please Upload a file.. ")
                txtimg.Focus()

            Else

                cmd = New SqlCommand("insert into adminvideo values('" + txtid.Text + "','" + txtname.Text + "','" + txtrelyear.Text + "','" + txtprod.Text + "','" + txtdir.Text + "','" + txtstar.Text + "','" + txtlabel.Text + "','" + txtsingers.Text + "','" + txtlyricists.Text + "','" + txteditors.Text + "','" + txtcinemato.Text + "','" + txtdialog.Text + "','" + txtcostumes.Text + "','" + txtwriter.Text + "','" + txtsynop.Text + "','" + txtgenre.Text + "','" + txtruntime.Text + "','" + txtcopies.Text + "','" + txtcat.Text + "','" + txtcost.Text + "','" + txtamt.Text + "','" + txtratings.Text + "','" + f + "') ", con)
                cmd.ExecuteNonQuery()
                MsgBox("record inserted", MsgBoxStyle.ApplicationModal, "Notification")


                ds.Clear()
                txtid.Text = ""
                txtname.Text = ""

                txtcopies.Text = ""
                txtdir.Text = ""
                txtcost.Text = ""
                txtgenre.Text = ""
                txtlabel.Text = ""


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

            
          
         
            ElseIf txtratings.Text = "" Then
                MsgBox("Please Enter Rating's.. ")
                txtratings.Focus()

            ElseIf txtimg.HasFile = False Then
                MsgBox("Please Upload a file.. ")
                txtimg.Focus()


            Else

                cmd = New SqlCommand("update adminvideo set movieid='" + txtid.Text + "',moviename='" + txtname.Text + "',releaseyear='" + txtrelyear.Text + "',producer='" + txtprod.Text + "',director='" + txtdir.Text + "',starcast='" + txtstar.Text + "',label='" + txtlabel.Text + "',singers='" + txtsingers.Text + "',lyricist='" + txtlyricists.Text + "',editor='" + txteditors.Text + "',cinematographer='" + txtcinemato.Text + "',dialogue='" + txtdialog.Text + "',costumes='" + txtcostumes.Text + "',writer='" + txtwriter.Text + "',synopsis='" + txtsynop.Text + "',genre='" + txtgenre.Text + "',runtime='" + txtruntime.Text + "',cdcopies='" + txtcopies.Text + "',cdcategories='" + txtcat.Text + "',cost='" + txtcost.Text + "',totalamount='" + txtamt.Text + "',ratings='" + txtratings.Text + "',url='" + f + "'", con)

                cmd.ExecuteNonQuery()

                MsgBox("Record Updated successfully")
                ds.Clear()

                txtid.Text = ""
                txtname.Text = ""
             

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

        cmd = New SqlCommand("delete from adminvideo where movieid='" + txtid.Text + "'", con)

        del = MsgBox("Do you really want to delete this record", MsgBoxStyle.YesNo)
        If del = vbYes Then

            r = cmd.ExecuteNonQuery()

            If del = vbYes Then
                cmd = New SqlCommand("delete from adminvideo where movieid='" + txtid.Text + "'", con)
                cmd.ExecuteNonQuery()
            End If


            If r = 1 Then
                MsgBox("record deleted successfully")
                ds.Clear()
                txtid.Text = ""
                txtname.Text = ""
           
                txtcopies.Text = ""
                txtdir.Text = ""
                txtcost.Text = ""
                txtgenre.Text = ""
                txtlabel.Text = ""
              
            Else
                MsgBox("no such id exist")
            End If

        End If
    End Sub
End Class
