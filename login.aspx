<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="Default3" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:panel ID="login" runat="server" Font-Bold="True" BorderColor="#666666" 
    BorderStyle="Solid" Font-Names="Lucida Sans Unicode" Height="333px" 
    style="margin-left: 175px" Width="567px">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" BackColor="White" ForeColor="#660033" 
        Text="Provide Proper Username And Password To Login."></asp:Label>
    <br />
    <br />
    <br />
    <table style="width: 100%; margin-right: 0px;">
        <tr>
            <td style="width: 119px">
                &nbsp;</td>
            <td style="width: 112px">
                <asp:Label ID="lblusername" runat="server" Text="UserName:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtusername" runat="server" Width="136px"></asp:TextBox>
            </td>
        </tr>
        <tr><td></td><td></td><td></td></tr>
        <tr>
            <td style="width: 119px">
                &nbsp;</td>
            <td style="width: 112px">
                <asp:Label ID="lblpassword" runat="server" Text="Password:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Width="136px"></asp:TextBox>
            </td>
        </tr>
        <tr><td></td><td></td><td><a href="forgotpasswd.aspx" 
                style="font-family: 'source Code Pro'; font-size: small; font-weight: normal; color: #000000">Forgot your password?</td></tr>
        <tr>
            <td style="width: 119px">
                &nbsp;</td>
            <td style="width: 112px">
                &nbsp;</td>
           <td><a href="changepasswd.aspx" 
                style="font-family: 'source Code Pro'; font-size: small; font-weight: normal; color: #000000">Change password..</td>
        </tr>
    </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnsubmit" runat="server" BackColor="Black" 
        BorderColor="Black" BorderWidth="4px" Font-Bold="False" 
        Font-Names="Source Code Pro" Font-Underline="False" ForeColor="White" 
        Height="33px" style="margin-left: 0px;" Text="Login" Width="97px" 
        Font-Size="Medium" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btncancel" runat="server" BackColor="Black" 
        BorderColor="Black" BorderWidth="4px" Font-Bold="False" 
        Font-Names="Source Code Pro" Font-Underline="False" ForeColor="White" 
        Height="33px" style="margin-left: 0px" Text="Cancel" Width="97px" 
        Font-Size="Medium" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnreg" runat="server" BackColor="Black" 
        BorderColor="Black" BorderWidth="4px" Font-Bold="False" 
        Font-Names="Source Code Pro" Font-Underline="False" ForeColor="White" 
        Height="33px" Text="Register" Width="97px" Font-Size="Medium" 
        style="margin-left: 0px" />
                    
    <br />
                    
</asp:panel>

</asp:Content>

