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
            cmd = New SqlCommand("Select * from adminhandset order by handsetid", con)
            da = New SqlDataAdapter(cmd)
            da.Fill(ds, "adminhandset")
            Gvproduct.DataSource = ds.Tables("adminhandset")
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
            da = New SqlDataAdapter("select handsetid from adminhandset order by handsetid", con)
            da.Fill(ds, "adminhandset")
            txtid.Enabled = False
            If ds.Tables("adminhandset").Rows.Count = 0 Then
                uni_id = 101
                btnprodadd.Text = "SAVE"
                txtid.Text = "H" & uni_id
            Else
                cnt = ds.Tables("adminhandset").Rows.Count
                uni_id = Val(Mid(ds.Tables("adminhandset").Rows(cnt - 1)("handsetid"), 2)) + 1
                btnprodadd.Text = "SAVE"
                txtid.Text = "H" & uni_id

            End If
        ElseIf btnprodadd.Text = "SAVE" Then


            If txtname.Text = "" Then
                MsgBox("Please Enter Audio's Name.. ")
                txtname.Focus()

            ElseIf txtbattery.Text = "" Then
                MsgBox("Please Enter Battery Value..")
                txtbattery.Focus()
            ElseIf txtbluetooth.Text = "" Then
                MsgBox("Please Enter Bluetooth Value..")
                txtbluetooth.Focus()

            ElseIf txtcal.Text = "" Then
                MsgBox("Please Enter Cal Value..")
                txtcal.Focus()
            ElseIf txtcalender.Text = "" Then
                MsgBox("Please Enter Calender Value..")
                txtcalender.Focus()
            ElseIf txtclock.Text = "" Then
                MsgBox("Please Enter Clock Value..")
                txtclock.Focus()

            ElseIf txtcon.Text = "" Then
                MsgBox("Please Enter Converter Value..")
                txtcon.Focus()

            ElseIf txtcamera.Text = "" Then
                MsgBox("Please Enter Camera Value..")
                txtcamera.Focus()

            ElseIf txtcolors.Text = "" Then
                MsgBox("Please Enter Colors Value..")
                txtcolors.Focus()

            ElseIf txtgames.Text = "" Then
                MsgBox("Please Enter Games..")
                txtgames.Focus()

            ElseIf txtinfrared.Text = "" Then
                MsgBox("Please Enter Infrared Values..")
                txtinfrared.Focus()

            ElseIf txtmemo.Text = "" Then
                MsgBox("Please Enter memo..")
                txtmemo.Focus()

            ElseIf txtmemory.Text = "" Then
                MsgBox("Please Enter Memory..")
                txtmemory.Focus()
            ElseIf IsNumeric(txtcopies.Text) = False Or txtcopies.Text = "" Then
                MsgBox("Please Enter Valid No. Copies.. ")
                txtcopies.Focus()
            ElseIf txtmisc.Text = "" Then
                MsgBox("Please Enter Synopsis..")
                txtmisc.Focus()
            ElseIf txtmusic.Text = "" Then
                MsgBox("Please Enter Music..")
                txtmusic.Focus()
            ElseIf IsNumeric(txtcost.Text) = False Or txtcost.Text = "" Then
                MsgBox("Please Enter Valid Amount.. ")
                txtcost.Focus()
            ElseIf IsNumeric(txtamt.Text) = False Or txtamt.Text = "" Then
                MsgBox("Please Enter Valid Amount.. ")
                txtamt.Focus()
            ElseIf txtratings.Text = "" Then
                MsgBox("Please Enter Rating's.. ")
                txtratings.Focus()

            ElseIf txtimg.HasFile = False Then
                MsgBox("Please Upload a file.. ")
                txtimg.Focus()
            Else
                cmd = New SqlCommand("insert into adminhandset values('" + txtid.Text + "','" + txtname.Text + "','" + txtseries.Text + "','" + txtweight.Text + "','" + txtbattery.Text + "','" + txttalktime.Text + "','" + txtstandby.Text + "','" + txtcamera.Text + "','" + txtvideo.Text + "','" + txtmusic.Text + "','" + txtgames.Text + "','" + txtradio.Text + "','" + txtmemory.Text + "','" + txtbluetooth.Text + "','" + txtinfrared.Text + "','" + txtusb.Text + "','" + txtpcsync.Text + "','" + txtmisc.Text + "','" + txtcalender.Text + "','" + txtclock.Text + "','" + txtclock.Text + "','" + txtschedul.Text + "','" + txtworld.Text + "','" + txtcon.Text + "','" + txtcal.Text + "','" + txtmemo.Text + "','" + txtnotes.Text + "','" + txttodo.Text + "','" + txtorganizer.Text + "','" + txtstop.Text + "','" + txtcolors.Text + "','" + txtcopies.Text + "','" + txtcost.Text + "','" + txtamt.Text + "','" + txtratings.Text + "','" + f + "') ", con)
                cmd.ExecuteNonQuery()
                MsgBox("record inserted", MsgBoxStyle.ApplicationModal, "Notification")


                ds.Clear()
                txtid.Text = ""
                txtname.Text = ""
                txtseries.Text = ""
                txtweight.Text = ""
                txtbattery.Text = ""
                txttalktime.Text = ""
                txtstandby.Text = ""
                txtcamera.Text = ""
                txtmisc.Text = ""
                txtcolors.Text = ""
                txtcopies.Text = ""
                txtcost.Text = ""
                txtamt.Text = ""
                txtratings.Text = ""

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

            ElseIf txtbattery.Text = "" Then
                MsgBox("Please Enter Battery Value..")
                txtbattery.Focus()
            ElseIf txtbluetooth.Text = "" Then
                MsgBox("Please Enter Bluetooth Value..")
                txtbluetooth.Focus()

            ElseIf txtcal.Text = "" Then
                MsgBox("Please Enter Cal Value..")
                txtcal.Focus()
            ElseIf txtcalender.Text = "" Then
                MsgBox("Please Enter Calender Value..")
                txtcalender.Focus()
            ElseIf txtclock.Text = "" Then
                MsgBox("Please Enter Clock Value..")
                txtclock.Focus()

            ElseIf txtcon.Text = "" Then
                MsgBox("Please Enter Converter Value..")
                txtcon.Focus()

            ElseIf txtcamera.Text = "" Then
                MsgBox("Please Enter Camera Value..")
                txtcamera.Focus()

            ElseIf txtcolors.Text = "" Then
                MsgBox("Please Enter Colors Value..")
                txtcolors.Focus()

            ElseIf txtgames.Text = "" Then
                MsgBox("Please Enter Games..")
                txtgames.Focus()

            ElseIf txtinfrared.Text = "" Then
                MsgBox("Please Enter Infrared Values..")
                txtinfrared.Focus()

            ElseIf txtmemo.Text = "" Then
                MsgBox("Please Enter memo..")
                txtmemo.Focus()

            ElseIf txtmemory.Text = "" Then
                MsgBox("Please Enter Memory..")
                txtmemory.Focus()
            ElseIf IsNumeric(txtcopies.Text) = False Or txtcopies.Text = "" Then
                MsgBox("Please Enter Valid No. Copies.. ")
                txtcopies.Focus()
            ElseIf txtmisc.Text = "" Then
                MsgBox("Please Enter Synopsis..")
                txtmisc.Focus()
            ElseIf txtmusic.Text = "" Then
                MsgBox("Please Enter Music..")
                txtmusic.Focus()
            ElseIf IsNumeric(txtcost.Text) = False Or txtcost.Text = "" Then
                MsgBox("Please Enter Valid Amount.. ")
                txtcost.Focus()
            ElseIf IsNumeric(txtamt.Text) = False Or txtamt.Text = "" Then
                MsgBox("Please Enter Valid Amount.. ")
                txtamt.Focus()
            ElseIf txtratings.Text = "" Then
                MsgBox("Please Enter Rating's.. ")
                txtratings.Focus()

            ElseIf txtimg.HasFile = False Then
                MsgBox("Please Upload a file.. ")
                txtimg.Focus()

            Else

                cmd = New SqlCommand("update adminhandset set handsetid='" + txtid.Text + "',handsetname='" + txtname.Text + "',series='" + txtseries.Text + "',weight='" + txtweight.Text + "',battery='" + txtbattery.Text + "',talktime='" + txttalktime.Text + "',standbytime='" + txtstandby.Text + "',camera='" + txtcamera.Text + "',videoplayer='" + txtvideo.Text + "',musicplayer='" + txtmusic.Text + "',games='" + txtgames.Text + "',fmradio='" + txtradio.Text + "',memory='" + txtmemory.Text + "',bluetooth='" + txtbluetooth.Text + "',infrared='" + txtinfrared.Text + "',usb='" + txtusb.Text + "',pcsync='" + txtpcsync.Text + "',misc='" + txtmisc.Text + "',calender='" + txtcalender.Text + "',clock='" + txtclock.Text + "',alarm='" + txtclock.Text + "',scheduler='" + txtschedul.Text + "',worldtime='" + txtworld.Text + "',currconv='" + txtcon.Text + "',calc='" + txtcal.Text + "',memobook='" + txtmemo.Text + "',notes='" + txtnotes.Text + "',todolist='" + txttodo.Text + "',organizer='" + txtorganizer.Text + "',stopwatch='" + txtstop.Text + "',colors='" + txtcolors.Text + "',copies='" + txtcopies.Text + "',cost='" + txtcost.Text + "',totalamt='" + txtamt.Text + "',ratings='" + txtratings.Text + "',url='" + f + "'", con)

                cmd.ExecuteNonQuery()

                MsgBox("Record Updated successfully")
                ds.Clear()

                txtid.Text = ""
                txtname.Text = ""
                txtseries.Text = ""
                txtweight.Text = ""
                txtbattery.Text = ""
                txttalktime.Text = ""
                txtstandby.Text = ""
                txtcamera.Text = ""
                txtmisc.Text = ""
                txtcolors.Text = ""
                txtcopies.Text = ""
                txtcost.Text = ""
                txtamt.Text = ""
                txtratings.Text = ""


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

        cmd = New SqlCommand("delete from adminhandset where handsetid='" + txtid.Text + "'", con)

        del = MsgBox("Do you really want to delete this record", MsgBoxStyle.YesNo)
        If del = vbYes Then

            r = cmd.ExecuteNonQuery()

            If del = vbYes Then
                cmd = New SqlCommand("delete from adminhandset where handsetid='" + txtid.Text + "'", con)
                cmd.ExecuteNonQuery()
            End If


            If r = 1 Then
                MsgBox("record deleted successfully")
                ds.Clear()
                txtid.Text = ""
                txtname.Text = ""
                txtseries.Text = ""
                txtweight.Text = ""
                txtbattery.Text = ""
                txttalktime.Text = ""
                txtstandby.Text = ""
                txtcamera.Text = ""
                txtmisc.Text = ""
                txtcolors.Text = ""
                txtcopies.Text = ""
                txtcost.Text = ""
                txtamt.Text = ""
                txtratings.Text = ""

            Else
                MsgBox("no such id exist")
            End If

        End If
    End Sub

End Class
