<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="changepasswd.aspx.vb" Inherits="_Default" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 91px;
        }
        .style3
    {
        width: 91px;
        height: 2px;
    }
    .style4
    {
        width: 162px;
        height: 2px;
    }
    .style5
    {
        height: 2px;
    }
    .style6
    {
        width: 91px;
    }
    .style7
    {
        width: 91px;
        height: 7px;
    }
    .style8
    {
        width: 162px;
        height: 7px;
    }
    .style9
    {
        height: 7px;
    }
    .style10
    {
        width: 162px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:panel ID="login" runat="server" Font-Bold="True" BorderColor="#666666" 
    BorderStyle="Solid" Font-Names="Lucida Sans Unicode" Height="384px" 
    style="margin-left: 175px" Width="647px">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" BackColor="White" ForeColor="#660033" 
        Text="Change Password"></asp:Label>
    <br />
    <br />
    <br />
    <table style="width: 100%; margin-right: 0px;">
    
    <tr><td></td><td align="center" class="style10"><asp:Label ID="Label1" runat="server" Text="Enter Username:"></asp:Label></td><td>
    
    <asp:TextBox ID="txtusername" runat="server" Width="136px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtusername" ErrorMessage="Please enter username" 
            ForeColor="Black"></asp:RequiredFieldValidator>
    </td></tr>
    <tr><td></td><td class="style10"></td><td></td></tr>
        <tr>
            <td class="style7">
                </td>
            <td align="center" class="style8">
                <asp:Label ID="lblusername" runat="server" Text="Old Password:"></asp:Label>
            </td>
            <td class="style9">
                <asp:TextBox ID="txtoldpasswd" runat="server" TextMode="Password" Width="136px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtoldpasswd" ErrorMessage="Please enter password" 
                    ForeColor="Black"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td class="style3"></td><td class="style4"></td><td class="style5"></td></tr>
        <tr>
            <td class="style7">
                </td>
            <td align="center" class="style8">
                <asp:Label ID="lblpassword" runat="server" Text="New Password:"></asp:Label>
            </td>
            <td class="style9">
                <asp:TextBox ID="txtnewpasswd" runat="server" TextMode="Password" Width="136px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtnewpasswd" ErrorMessage="Please enter password" 
                    ForeColor="Black"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td class="style6"></td><td class="style10"></td><td></td></tr>
        <tr>
            <td class="style6">
                </td>
            <td align="center" class="style10">
                <asp:Label ID="lblpassword0" runat="server" Text="Retype Password:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtrepasswd" runat="server" TextMode="Password" Width="136px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtnewpasswd" ControlToValidate="txtrepasswd" 
                    ErrorMessage="Password do not match" ForeColor="Black"></asp:CompareValidator>
            </td>
        </tr>
    </table>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Button ID="btnsubmit"  runat="server" BackColor="Black" BorderColor="Black" 
        BorderWidth="4px" Font-Bold="False" Font-Names="Source Code Pro" 
        Font-Size="Medium" Font-Underline="False" ForeColor="White" Height="33px" 
        style="margin-left: 0px;" Text="Submit" Width="97px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="btncancel" runat="server" BackColor="Black" 
            BorderColor="Black" BorderWidth="4px" Font-Bold="False" 
            Font-Names="Source Code Pro" Font-Size="Medium" Font-Underline="False" 
            ForeColor="White" Height="33px" style="margin-left: 0px;" Text="Cancel" 
            Width="97px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
    <br />
                    
</asp:panel>
</asp:Content>

