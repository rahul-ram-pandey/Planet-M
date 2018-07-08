<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="addbooks.aspx.vb" Inherits="_Default" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
        width: 113px;
    }
    .style3
    {
        height: 31px;
        width: 113px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:panel ID="prod" runat="server"  Height="757px" 
    BackColor="White">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table style="width: 69%; height: 320px; margin-left: 78px">
            <tr>
                <td class="style2">
                    <asp:Label ID="llblbookid" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Book Id:"></asp:Label>
                </td>
                <td style="width: 284px">
                    <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="lblbookname" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Book name:"></asp:Label>
                </td>
                <td style="width: 284px">
                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="lblauthor" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Author:"></asp:Label>
                </td>
                <td style="width: 284px">
                    <asp:TextBox ID="txtauthor" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="lblprice" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Price:"></asp:Label>
                </td>
                <td style="width: 284px">
                    <asp:TextBox ID="txtprice" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="lblimg" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Image:"></asp:Label>
                </td>
                <td style="width: 284px">
                    <asp:FileUpload ID="txtimg" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="lblpublisher" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Publisher:"></asp:Label>
                </td>
                <td style="width: 284px">
                    <asp:TextBox ID="txtpublisher" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="lblpdate" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Publishing Date:"></asp:Label>
                </td>
                <td style="width: 284px">
                    <asp:TextBox ID="txtpdate" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="lblisbn" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="ISBN:"></asp:Label>
                </td>
                <td style="width: 284px">
                    <asp:TextBox ID="txtisbn" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="lblnop" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="No of pages:"></asp:Label>
                </td>
                <td style="width: 284px">
                    <asp:TextBox ID="txtnop" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="lbllang" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Language:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:TextBox ID="txtlang" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Category:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:DropDownList ID="txtcat" runat="server" Height="16px" Width="128px">
                        <asp:ListItem>bestseller</asp:ListItem>
                        <asp:ListItem>fiction</asp:ListItem>
                        <asp:ListItem>non-fiction</asp:ListItem>
                        <asp:ListItem>boxcollection</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
    <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnprodadd" runat="server" Text="ADD" 
            Width="79px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnprodupdate" runat="server" Height="26px" Text="MODIFY" 
            Width="79px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnproddel" runat="server" Height="26px" Text="DELETE" 
            Width="79px" />
        <br />
        <br />
        <br />
        <asp:Panel ID="gv" runat="server" Height="300px" ScrollBars="both" 
            Width="867px">
            <asp:GridView ID="Gvproduct" runat="server" AutoGenerateColumns="False" 
                BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                CellPadding="4" CellSpacing="2" ForeColor="Black" Height="286px" PageSize="1" 
                style="margin-right: 1px" Width="355px">
                <RowStyle BackColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                <FooterStyle BackColor="#CCCCCC" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            </asp:GridView>
           
        </asp:Panel>
        <br />
        <br />
        <br />
    </asp:panel>

</asp:Content>

