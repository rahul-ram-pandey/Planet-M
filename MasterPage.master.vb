Imports System.Data.SqlClient
Imports System.Data
Imports System.Web.Configuration
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage
    Dim con As New SqlConnection
    Dim p As String

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged
        If DropDownList1.SelectedItem.Text = "Books" Then
            Response.Redirect("addbooks.aspx")
        ElseIf DropDownList1.SelectedItem.Text = "Mobiles" Then
            Response.Redirect("addmobiles.aspx")

        ElseIf DropDownList1.SelectedItem.Text = "Audios" Then
            Response.Redirect("addaudios.aspx")
        ElseIf DropDownList1.SelectedItem.Text = "Videos" Then
            Response.Redirect("addvideos.aspx")
        ElseIf DropDownList1.SelectedItem.Text = "Employees" Then
            Response.Redirect("addemployee.aspx")
        ElseIf DropDownList1.SelectedItem.Text = "Suppliers" Then
            Response.Redirect("addsupplier.aspx")
        ElseIf DropDownList1.SelectedItem.Text = "Order details" Then
            Response.Redirect("displayorder.aspx")
        ElseIf DropDownList1.SelectedItem.Text = "feedback" Then
            Response.Redirect("fbdetails.aspx")
        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("username") <> "" Then
            Label1.Text = "Welcome " & Session("username")
            hplogout.Visible = True
            hplogin.Visible = False
            hpreg.Visible = False
        Else
            hplogin.Visible = True
            hplogout.Visible = False
            hpreg.Visible = True

        End If
        If Session("adminuser") <> "" Then
            hplogout.Visible = True
            hplogin.Visible = False
            hpreg.Visible = False

            DropDownList1.Visible = True
            lbladmin.Visible = True
        Else
            DropDownList1.Visible = False
            lbladmin.Visible = False
        End If
    End Sub
    
End Class

