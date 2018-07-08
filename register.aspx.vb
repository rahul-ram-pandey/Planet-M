Imports System.Data.SqlClient
Imports System.Data
Imports System.Web.Configuration
Partial Class Default3
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Dim da As New SqlDataAdapter
    Dim ds As New DataSet
    Dim drs As SqlDataReader
    Dim uni_id As String
    Dim flag As Integer
    Dim cnt As Integer



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim strcon As String = ConfigurationManager.ConnectionStrings("dbconnection1").ConnectionString
        Dim con As New SqlConnection(strcon)
        con.Open()

        txtcustid.Enabled = False
        da = New SqlDataAdapter("select Customer_ID from registeration order by Customer_ID", con)
        da.Fill(ds, "registeration")
        If ds.Tables("registeration").Rows.Count = 0 Then
            uni_id = 101
            txtcustid.Text = "C" & uni_id
        Else
            cnt = ds.Tables("registeration").Rows.Count
            uni_id = (Mid(ds.Tables("registeration").Rows(cnt - 1)("Customer_ID"), 2)) + 1
            txtcustid.Text = "C" & uni_id
        End If
        con.Close()

    End Sub

    Protected Sub btnsubmit0_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsubmit0.Click
        Response.Redirect("home.aspx")
    End Sub

    Protected Sub btnsubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsubmit.Click
        Dim strcon As String = ConfigurationManager.ConnectionStrings("dbconnection1").ConnectionString
        Dim con As New SqlConnection(strcon)
        con.Open()
        flag = 1
        If txtfullname.Text.Trim = "" Or Text_Validation(txtfullname.Text) = True Then
            MsgBox("Enter valid Name", MsgBoxStyle.Exclamation, "field mandatory")
            flag = 0
            txtfullname.Focus()
        ElseIf ddlgender.Text = "" Then
            MsgBox("select gender", MsgBoxStyle.Exclamation, "field mandatory")
            flag = 0
            ddlgender.Focus()
        ElseIf txtusername.Text = "" Or Text_Validation(txtusername.Text) = True Then
            MsgBox("Enter valid username", MsgBoxStyle.Exclamation, "field mandatory")
            flag = 0
            txtusername.Focus()
        ElseIf txtconfpassword.Text <> txtpassword.Text Then
            MsgBox("Password not matched", MsgBoxStyle.Exclamation, "field mandatory")
            flag = 0
            txtpassword.Focus()
        ElseIf ddlquestions.Text = "" Then
            MsgBox("select security question", MsgBoxStyle.Exclamation, "field mandatory")
            flag = 0
            ddlquestions.Focus()
        ElseIf txtans.Text = "" Then
            MsgBox("Enter valid username", MsgBoxStyle.Exclamation, "field mandatory")
            flag = 0
            txtans.Focus()
        ElseIf IsNumeric(txtcontact.Text) = False Or txtcontact.Text = "" Or Len(txtcontact.Text) <> 10 Then
            MsgBox("Enter valid Contact Number", MsgBoxStyle.Exclamation, "field mandatory")
            flag = 0
            txtcontact.Focus()
        ElseIf txtemail.Text <> "" Then
            Dim rex As Match = Regex.Match(Trim(txtemail.Text), "^([0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,3})$", RegexOptions.IgnoreCase)
            If rex.Success = False Then
                MsgBox("Please Enter a valid E-mail Address", MsgBoxStyle.Exclamation, "field mandatory")
                flag = 0
                txtemail.Focus()
            ElseIf txtaddr.Text = "" Then
                MsgBox("Enter Address", MsgBoxStyle.Exclamation, "field mandatory")
                flag = 0
                txtaddr.Focus()

            ElseIf txtcity.Text = "" Then
                MsgBox("Enter City ", MsgBoxStyle.Exclamation, "field mandatory")
                flag = 0
                txtcity.Focus()

            ElseIf IsNumeric(txtcontact.Text) = False Or txtcontact.Text = "" Or Len(txtcontact.Text) <> 10 Then
                MsgBox("Enter valid Contact Number", MsgBoxStyle.Exclamation, "field mandatory")
                flag = 0
                txtcontact.Focus()
            Else
                cmd = New SqlCommand("select * from registeration", con)
                drs = cmd.ExecuteReader()
                While drs.Read()
                    If drs.GetString(3) = txtusername.Text Then
                        Label14.Text = "Username already exist"
                        flag = 0
                    Else
                        flag = 1

                    End If
                End While
                drs.Close()
            End If
        End If
        If flag = 1 Then
            cmd = New SqlCommand("insert into registeration values('" + txtcustid.Text + "','" + txtfullname.Text + "','" + ddlgender.SelectedItem.Text + "','" + txtusername.Text + "','" + txtpassword.Text + "','" + txtconfpassword.Text + "','" + ddlquestions.SelectedItem.Text + "','" + txtans.Text + "','" + txtemail.Text + "','" + txtaddr.Text + "','" + txtcity.Text + "','" + txtcontact.Text + "')", con)
            cmd.ExecuteNonQuery()
            MsgBox("Registered", MsgBoxStyle.Information, "Registeration Successfull")
            Response.Redirect("login.aspx")
            Label14.Text = ""
        End If
    End Sub
    Public Function Text_Validation(ByVal ch As Char) As Boolean
        If Not (Asc(ch)) = 8 Then
            If InStr("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRST.UVWXYZ ", ch) = 0 Then
                Return True
            End If
        End If
    End Function
End Class
