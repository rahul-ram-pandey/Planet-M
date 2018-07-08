<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="confirmorder.aspx.vb" Inherits="Default2" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 52%; height: 134px" align=center>
        <tr>
            <td align="center" style="width: 186px">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" style="width: 186px">
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" style="width: 186px">
                <asp:Button ID="Button1" runat="server" Text="Display Cart" BackColor="Black" 
                    BorderColor="#333333" BorderStyle="Double" BorderWidth="4px" Font-Bold="True" 
                    Font-Names="Lucida Console" Font-Underline="True" ForeColor="White" 
                    Height="33px" Width="129px" />
            </td>
            <td align="center">
                <asp:Button ID="Button2" runat="server" Text="Logout" BackColor="Black" 
                    BorderColor="#333333" BorderStyle="Double" BorderWidth="4px" Font-Bold="True" 
                    Font-Names="Lucida Console" Font-Underline="True" ForeColor="White" 
                    Height="33px" Width="112px" />
            </td>
        </tr>
    </table>
</asp:Content>

