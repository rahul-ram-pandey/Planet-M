<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="register.aspx.vb" Inherits="Default3" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="729px" 
        Width="750px" style="margin-right: 18px" BorderStyle="Solid" 
        Font-Names="Lucida Sans Unicode" Font-Underline="False" 
    ForeColor="#660033">
        &nbsp;<br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label15" runat="server" BackColor="White" BorderColor="Red" 
            Font-Bold="True" Font-Underline="True" ForeColor="#660033" 
            Text="Welcome User Please Register To Our Website by Filling The Following Details"></asp:Label>
        .<br />
        <br />
        <table style="width: 100%">
            <tr>
                <td style="width: 71px">
                    &nbsp;</td>
                <td style="width: 200px">
                    <asp:Label ID="lblcustomerid" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Customer Id:"></asp:Label>
                </td>
                <td style="width: 217px">
                    <asp:TextBox ID="txtcustid" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 71px">
                    &nbsp;</td>
                <td style="width: 200px">
                    <asp:Label ID="lblname" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Full Name:"></asp:Label>
                </td>
                <td style="width: 217px">
                    <asp:TextBox ID="txtfullname" runat="server" ValidationGroup="g1"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 71px">
                    &nbsp;</td>
                <td style="width: 200px">
                    <asp:Label ID="lblgender" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Gender:"></asp:Label>
                </td>
                <td style="width: 217px">
                    <asp:DropDownList ID="ddlgender" runat="server" Height="22px" Width="128px">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 71px">
                    &nbsp;</td>
                <td style="width: 200px">
                    <asp:Label ID="lblusername" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Username:"></asp:Label>
                </td>
                <td style="width: 217px">
                    <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label14" runat="server" ForeColor="Black" Font-Bold="True" 
                        Font-Names="Georgia"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 71px">
                    &nbsp;</td>
                <td style="width: 200px">
                    <asp:Label ID="lblpassword" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Password:"></asp:Label>
                </td>
                <td style="width: 217px">
                    <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 71px; height: 11px">
                </td>
                <td style="width: 200px; height: 11px">
                    <asp:Label ID="lblconfpassword" runat="server" Font-Bold="True" 
                        ForeColor="Black" Text="Confirm Password:"></asp:Label>
                </td>
                <td style="height: 11px; width: 217px">
                    <asp:TextBox ID="txtconfpassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td style="height: 11px">
                </td>
            </tr>
            <tr>
                <td style="width: 71px">
                    &nbsp;</td>
                <td style="width: 200px">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Security Question:"></asp:Label>
                </td>
                <td style="width: 217px">
                    <asp:DropDownList ID="ddlquestions" runat="server">
                        <asp:ListItem>What is your school name ?</asp:ListItem>
                        <asp:ListItem>What is your mother&#39;s name ?</asp:ListItem>
                        <asp:ListItem>What is your college name ?</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 71px">
                    &nbsp;</td>
                <td style="width: 200px">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Answer:"></asp:Label>
                </td>
                <td style="width: 217px">
                    <asp:TextBox ID="txtans" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 71px">
                    &nbsp;</td>
                <td style="width: 200px">
                    <asp:Label ID="lblemail" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Email Id:"></asp:Label>
                </td>
                <td style="width: 217px">
                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtemail" ErrorMessage="Please Enter E-mail Address" 
                        ForeColor="Black"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 71px">
                    &nbsp;</td>
                <td style="width: 200px">
                    <asp:Label ID="lbladdress" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Address:"></asp:Label>
                </td>
                <td style="width: 217px">
                    <asp:TextBox ID="txtaddr" runat="server" Height="35px" TextMode="MultiLine" 
                        Width="130px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 71px">
                    &nbsp;</td>
                <td style="width: 200px">
                    <asp:Label ID="lblcity" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="City:"></asp:Label>
                </td>
                <td style="width: 217px">
                    <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 71px">
                    &nbsp;</td>
                <td style="width: 200px">
                    <asp:Label ID="lblcontact" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Contact:"></asp:Label>
                </td>
                <td style="width: 217px">
                    <asp:TextBox ID="txtcontact" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 71px">
                    &nbsp;</td>
                <td style="width: 200px">
                    &nbsp;</td>
                <td style="width: 217px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 71px">
                    &nbsp;</td>
                <td style="width: 200px">
                    <asp:Button ID="btnsubmit" runat="server" BackColor="Black" 
                        BorderColor="Black" BorderWidth="4px" Font-Bold="False" 
                        Font-Names="Source Code Pro" ForeColor="White" Height="33px" Text="Register" 
                        Width="97px" Font-Underline="False" Font-Size="Medium" 
                        style="margin-left: 0px" />
                </td>
                <td style="width: 217px">
                    <asp:Button ID="btnsubmit0" runat="server" BackColor="Black" BorderColor="Black" 
                        BorderWidth="4px" Font-Bold="False" 
                        Font-Names="Source Code Pro" ForeColor="White" Height="33px" Text="Exit" Width="97px" 
                        Font-Underline="False" Font-Size="Medium" style="margin-left: 0px" />
                </td>
                <td>
                    &nbsp;&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

