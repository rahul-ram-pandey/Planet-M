<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="feedback.aspx.vb" Inherits="Default3" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="245px" 
        style="margin-left: 186px; margin-top: 29px;" BorderColor="#660033" 
    BorderStyle="Solid" Font-Bold="True" Font-Names="Lucida Sans Unicode" 
    Width="575px">
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" ForeColor="#660033" 
            Text="Give Us Your Feedback It Helps Us To Update Our Website."></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <table style="width: 100%">
            <tr>
                <td style="width: 93px">
                    &nbsp;</td>
                <td style="width: 134px">
                    <asp:Label ID="lblusername" runat="server" Text="Username"></asp:Label>
                    :</td>
                <td style="width: 251px">
                    <asp:TextBox ID="txtusername" runat="server" Width="179px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 93px">
                    &nbsp;</td>
                <td style="width: 134px">
                    <asp:Label ID="lblcomments" runat="server" Text="Comments:"></asp:Label>
                </td>
                <td style="width: 251px">
                    <asp:TextBox ID="txtcomments" runat="server" Height="37px" 
                        style="margin-left: 2px" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 93px">
                    &nbsp;</td>
                <td style="width: 134px">
                    &nbsp;</td>
                <td style="width: 251px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 93px">
                    &nbsp;</td>
                <td style="width: 134px" align="center">
                    <asp:Button ID="btnsubmit" runat="server" BackColor="Black" 
                        BorderColor="Black" BorderWidth="4px" Font-Bold="False" 
                        Font-Names="Source Code Pro" Font-Underline="False" ForeColor="White" 
                        Height="33px" style="margin-left: 0px" Text="Submit" Width="97px" 
                        Font-Size="Medium" />
                </td>
                <td style="width: 251px" align="center">
                    <asp:Button ID="btnexit" runat="server" BackColor="Black" 
                        BorderColor="Black" BorderWidth="4px" Font-Bold="False" Font-Underline="False" 
                        ForeColor="White" Height="33px" style="margin-left: 0px" Text="Exit" 
                        Width="97px" Font-Names="Source Code Pro" Font-Size="Medium" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
</asp:Panel>

</asp:Content>

