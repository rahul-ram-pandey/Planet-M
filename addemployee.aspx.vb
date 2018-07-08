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
            cmd = New SqlCommand("Select * from empregistration order by empid", con)
            da = New SqlDataAdapter(cmd)
            da.Fill(ds, "empregistration")
            gvemployee.DataSource = ds.Tables("empregistration")
        End If
        con.Close()
        If Not Page.IsPostBack Then

        End If
    End Sub

    Protected Sub btnadd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd.Click
        Dim strcon As String = ConfigurationManager.ConnectionStrings("dbconnection1").ConnectionString
        Dim con As New SqlConnection(strcon)
        con.Open()
        If btnadd.Text = "ADD" Then
            da = New SqlDataAdapter("select empid from empregistration order by empid", con)
            da.Fill(ds, "empregistration")
            txtid.Enabled = False
            If ds.Tables("empregistration").Rows.Count = 0 Then
                uni_id = 101
                btnadd.Text = "SAVE"
                txtid.Text = "E" & uni_id
            Else
                cnt = ds.Tables("empregistration").Rows.Count
                uni_id = Val(Mid(ds.Tables("empregistration").Rows(cnt - 1)("empid"), 2)) + 1
                btnadd.Text = "SAVE"
                txtid.Text = "E" & uni_id

            End If
        ElseIf btnadd.Text = "SAVE" Then


            If txtaccholder.Text = "" Then
                MsgBox("Please Enter Account Holder's Name.. ")
                txtaccholder.Focus()

            ElseIf txtaptdate.Text = "" Then
                MsgBox("Please Enter Appointment Date..")
                txtaptdate.Focus()
            ElseIf txtbankbranch.Text = "" Then
                MsgBox("Please Enter Branch Name..")
                txtbankbranch.Focus()

            ElseIf txtbranch.Text = "" Then
                MsgBox("Please Enter Branch Name..")
                txtbranch.Focus()
            ElseIf txtcity.Text = "" Then
                MsgBox("Please Enter City Name..")
                txtcity.Focus()
            ElseIf txtcleaves.Text = "" Then
                MsgBox("Please Enter Leaves..")
                txtcleaves.Focus()

            ElseIf txtdept.Text = "" Then
                MsgBox("Please Enter Department Name..")
                txtdept.Focus()

            ElseIf txtdesig.Text = "" Then
                MsgBox("Please Enter Designation..")
                txtdesig.Focus()

            ElseIf txteleave.Text = "" Then
                MsgBox("Please Enter Leaves..")
                txteleave.Focus()

            ElseIf txtfname.Text = "" Then
                MsgBox("Please Enter First Name..")
                txtfname.Focus()

            ElseIf txtlname.Text = "" Then
                MsgBox("Please Enter Last Name..")
                txtlname.Focus()

            ElseIf txtmarital.Text = "" Then
                MsgBox("Please Enter Marital Status..")
                txtmarital.Focus()

            ElseIf txtnotes.Text = "" Then
                MsgBox("Please Enter Notes..")
                txtnotes.Focus()
            ElseIf IsNumeric(txtlandline.Text) = False Or txtlandline.Text = "" Then
                MsgBox("Please Enter Valid Landline Number.. ")
                txtlandline.Focus()
            ElseIf txtqual.Text = "" Then
                MsgBox("Please Enter Qualifications..")
                txtqual.Focus()
            ElseIf IsNumeric(txtlstsal.Text) = False Or txtlstsal.Text = "" Then
                MsgBox("Please Enter Last Salary.. ")
                txtlstsal.Focus()
            ElseIf IsNumeric(txtpackage.Text) = False Or txtpackage.Text = "" Then
                MsgBox("Please Enter Valid Package Amount.. ")
                txtpackage.Focus()
            ElseIf txtstreet.Text = "" Then
                MsgBox("Please Enter Street.. ")
                txtstreet.Focus()

            ElseIf txtsuburb.Text = "" Then
                MsgBox("Please Enter Suburb.. ")
                txtsuburb.Focus()

            ElseIf txtworkexpi.Text = "" Then
                MsgBox("Please Enter Work Experience.. ")
                txtworkexpi.Focus()

            Else

                cmd = New SqlCommand("insert into empregistration values('" + txtid.Text + "','" + txtfname.Text + "','" + txtlname.Text + "','" + txtstreet.Text + "','" + txtsuburb.Text + "','" + txtcity.Text + "','" + txtlandline.Text + "','" + ddlgender.Text + "','" + txtdob.Text + "','" + txtaptdate.Text + "','" + txtdept.Text + "','" + txtbranch.Text + "','" + txtmarital.Text + "','" + txtaccno.Text + "','" + txtaccholder.Text + "','" + txtbankbranch.Text + "','" + txtworkexpi.Text + "','" + txtqual.Text + "','" + txtlstsal.Text + "','" + txtdesig.Text + "','" + txtpackage.Text + "','" + txtcleaves.Text + "','" + txteleave.Text + "','" + txtnotes.Text + "') ", con)
                cmd.ExecuteNonQuery()
                MsgBox("record inserted", MsgBoxStyle.ApplicationModal, "Notification")


                ds.Clear()
                txtid.Text = ""
                txtfname.Text = ""
                txtlname.Text = ""
                txtstreet.Text = ""
                txtsuburb.Text = ""
                txtcity.Text = ""
                txtlandline.Text = ""
                txtdob.Text = ""
                txtaptdate.Text = ""
                txtdept.Text = ""
                txtbranch.Text = ""
                txtmarital.Text = ""
                txtaccno.Text = ""
                txtaccholder.Text = ""
                txtbankbranch.Text = ""
                txtworkexpi.Text = ""
                txtqual.Text = ""
                txtlstsal.Text = ""
                txtdesig.Text = ""
                txtpackage.Text = ""
                txtcleaves.Text = ""
                txteleave.Text = ""
                txtnotes.Text = ""

                btnadd.Text = "ADD"
            End If
            con.Close()
        End If
    End Sub

    Protected Sub btnupdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnupdate.Click
        Dim strcon As String = ConfigurationManager.ConnectionStrings("dbconnection1").ConnectionString
        Dim con As New SqlConnection(strcon)
        con.Open()

        If btnupdate.Text = "MODIFY" Then
            btnupdate.Text = "UPDATE"


        ElseIf btnupdate.Text = "UPDATE" Then

            If txtaccholder.Text = "" Then
                MsgBox("Please Enter Account Holder's Name.. ")
                txtaccholder.Focus()

            ElseIf txtaptdate.Text = "" Then
                MsgBox("Please Enter Appointment Date..")
                txtaptdate.Focus()
            ElseIf txtbankbranch.Text = "" Then
                MsgBox("Please Enter Branch Name..")
                txtbankbranch.Focus()

            ElseIf txtbranch.Text = "" Then
                MsgBox("Please Enter Branch Name..")
                txtbranch.Focus()
            ElseIf txtcity.Text = "" Then
                MsgBox("Please Enter City Name..")
                txtcity.Focus()
            ElseIf txtcleaves.Text = "" Then
                MsgBox("Please Enter Leaves..")
                txtcleaves.Focus()

            ElseIf txtdept.Text = "" Then
                MsgBox("Please Enter Department Name..")
                txtdept.Focus()

            ElseIf txtdesig.Text = "" Then
                MsgBox("Please Enter Designation..")
                txtdesig.Focus()

            ElseIf txteleave.Text = "" Then
                MsgBox("Please Enter Leaves..")
                txteleave.Focus()

            ElseIf txtfname.Text = "" Then
                MsgBox("Please Enter First Name..")
                txtfname.Focus()

            ElseIf txtlname.Text = "" Then
                MsgBox("Please Enter Last Name..")
                txtlname.Focus()

            ElseIf txtmarital.Text = "" Then
                MsgBox("Please Enter Marital Status..")
                txtmarital.Focus()

            ElseIf txtnotes.Text = "" Then
                MsgBox("Please Enter Notes..")
                txtnotes.Focus()
            ElseIf IsNumeric(txtlandline.Text) = False Or txtlandline.Text = "" Then
                MsgBox("Please Enter Valid Landline Number.. ")
                txtlandline.Focus()
            ElseIf txtqual.Text = "" Then
                MsgBox("Please Enter Qualifications..")
                txtqual.Focus()
            ElseIf IsNumeric(txtlstsal.Text) = False Or txtlstsal.Text = "" Then
                MsgBox("Please Enter Last Salary.. ")
                txtlstsal.Focus()
            ElseIf IsNumeric(txtpackage.Text) = False Or txtpackage.Text = "" Then
                MsgBox("Please Enter Valid Package Amount.. ")
                txtpackage.Focus()
            ElseIf txtstreet.Text = "" Then
                MsgBox("Please Enter Street.. ")
                txtstreet.Focus()

            ElseIf txtsuburb.Text = "" Then
                MsgBox("Please Enter Suburb.. ")
                txtsuburb.Focus()

            ElseIf txtworkexpi.Text = "" Then
                MsgBox("Please Enter Work Experience.. ")
                txtworkexpi.Focus()


            Else


                cmd = New SqlCommand("update empregistration set empid='" + txtid.Text + "',firstname='" + txtfname.Text + "',lastname='" + txtlname.Text + "',street='" + txtstreet.Text + "',suburb='" + txtsuburb.Text + "',city='" + txtcity.Text + "',landline='" + txtlandline.Text + "',gender='" + ddlgender.Text + "',dateofbirth='" + txtdob.Text + "',appointmentdate='" + txtaptdate.Text + "',department='" + txtdept.Text + "',branch='" + txtbranch.Text + "',maritalstatus='" + txtmarital.Text + "',accountnumber='" + txtaccno.Text + "',accountholder='" + txtaccholder.Text + "'bankbranch=,'" + txtbankbranch.Text + "',workexp='" + txtworkexpi.Text + "',qualification='" + txtqual.Text + "',lastsalary='" + txtlstsal.Text + "',designation='" + txtdesig.Text + "',package='" + txtpackage.Text + "',cleaves='" + txtcleaves.Text + "',eleaves='" + txteleave.Text + "',notes='" + txtnotes.Text + "'", con)

                cmd.ExecuteNonQuery()

                MsgBox("Record Updated successfully")
                ds.Clear()

                txtid.Text = ""
                txtfname.Text = ""
                txtlname.Text = ""
                txtstreet.Text = ""
                txtsuburb.Text = ""
                txtcity.Text = ""
                txtlandline.Text = ""
                txtdob.Text = ""
                txtaptdate.Text = ""
                txtdept.Text = ""
                txtbranch.Text = ""
                txtmarital.Text = ""
                txtaccno.Text = ""
                txtaccholder.Text = ""
                txtbankbranch.Text = ""
                txtworkexpi.Text = ""
                txtqual.Text = ""
                txtlstsal.Text = ""
                txtdesig.Text = ""
                txtpackage.Text = ""
                txtcleaves.Text = ""
                txteleave.Text = ""
                txtnotes.Text = ""


                btnupdate.Text = "MODIFY"
            End If
            btnupdate.Text = "MODIFY"
            con.Close()
        End If
    End Sub

    Protected Sub btndel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btndel.Click
        Dim del As VariantType
        Dim strcon As String = ConfigurationManager.ConnectionStrings("dbconnection1").ConnectionString
        Dim con As New SqlConnection(strcon)

        con.Open()

        cmd = New SqlCommand("delete from empregistration where empid='" + txtid.Text + "'", con)

        del = MsgBox("Do you really want to delete this record", MsgBoxStyle.YesNo)
        If del = vbYes Then

            r = cmd.ExecuteNonQuery()
            cmd.ExecuteNonQuery()
         
        End If


        If r = 1 Then
            MsgBox("record deleted successfully")
            ds.Clear()
            txtid.Text = ""
            txtfname.Text = ""
            txtlname.Text = ""
            txtstreet.Text = ""
            txtsuburb.Text = ""
            txtcity.Text = ""
            txtlandline.Text = ""
            txtdob.Text = ""
            txtaptdate.Text = ""
            txtdept.Text = ""
            txtbranch.Text = ""
            txtmarital.Text = ""
            txtaccno.Text = ""
            txtaccholder.Text = ""
            txtbankbranch.Text = ""
            txtworkexpi.Text = ""
            txtqual.Text = ""
            txtlstsal.Text = ""
            txtdesig.Text = ""
            txtpackage.Text = ""
            txtcleaves.Text = ""
            txteleave.Text = ""
            txtnotes.Text = ""

        Else
            MsgBox("no such id exist")
        End If


    End Sub
End Class
