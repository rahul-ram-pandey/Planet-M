<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="forgotpasswd.aspx.vb" Inherits="_Default" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:panel ID="login" runat="server" Font-Bold="True" BorderColor="#666666" 
    BorderStyle="Solid" Font-Names="Lucida Sans Unicode" Height="356px" 
    style="margin-left: 175px" Width="640px">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" BackColor="White" ForeColor="#660033" 
        Text="Answer Security question"></asp:Label>
    <br />
    <br />
    <br />
    <table style="width: 100%; margin-right: 0px;">
        <tr>
            <td style="width: 119px">
                &nbsp;</td>
            <td style="width: 112px">
                <asp:Label ID="lblusername" runat="server" Text="Question:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlq" runat="server">
                    <asp:ListItem>What is your school name ?</asp:ListItem>
                    <asp:ListItem>What is your mother&#39;s name ?</asp:ListItem>
                    <asp:ListItem>What is your college name ?</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr><td></td><td></td><td></td></tr>
        <tr>
            <td style="width: 119px">
                &nbsp;</td>
            <td style="width: 112px">
                <asp:Label ID="lblpassword" runat="server" Text="Answer:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtans" runat="server" TextMode="SingleLine" Width="136px"></asp:TextBox>
                &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtans" ErrorMessage="type your answer" ForeColor="Black"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr><td></td><td></td><td>&nbsp;</td></tr>
        <tr>
            <td style="width: 119px">
                &nbsp;</td>
            <td style="width: 112px">
                <asp:Label ID="lblpassword0" runat="server" Text="Email-Id:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" Width="136px"></asp:TextBox>
                &nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="not a valid email-id" 
                    ForeColor="Black" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
         <tr><td></td><td></td><td>&nbsp;</td></tr>
        <tr>
            <td style="width: 119px">
                &nbsp;</td>
            <td style="width: 112px">
                <asp:Label ID="lblpass" runat="server" Text="Password:" Visible="False"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpass" runat="server" TextMode="SingleLine" Width="136px" 
                    AutoPostBack="True" Enabled="False" Visible="False"></asp:TextBox>
            </td>
        </tr>
    </table>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Button ID="btnsubmit" runat="server" BackColor="Black" BorderColor="Black" 
        BorderWidth="4px" Font-Bold="False" Font-Names="Source Code Pro" 
        Font-Size="Medium" Font-Underline="False" ForeColor="White" Height="33px" 
        style="margin-left: 0px;" Text="Submit" Width="97px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
    <br />
                    
</asp:panel>


</asp:Content>

