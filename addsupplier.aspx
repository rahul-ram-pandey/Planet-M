<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="addsupplier.aspx.vb" Inherits="_Default" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:panel ID="prod" runat="server"  Height="780px" 
    BackColor="White">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table style="width: 55%; height: 320px; margin-left: 78px">
            <tr>
                <td style="width: 163px">
                    <asp:Label ID="llblbookid" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Supplier Id:"></asp:Label>
                </td>
                <td style="width: 284px">
                    <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 163px">
                    <asp:Label ID="lblbookname" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Supplier Name:"></asp:Label>
                </td>
                <td style="width: 284px">
                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 163px">
                    <asp:Label ID="lblauthor" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Primary address:"></asp:Label>
                </td>
                <td style="width: 284px">
                    <asp:TextBox ID="txtadd" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 163px">
                    <asp:Label ID="lblprice" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="State:"></asp:Label>
                </td>
                <td style="width: 284px">
                    <asp:TextBox ID="txxtstate" runat="server"></asp:TextBox>
                </td>
            </tr>
            
            <tr>
                <td style="width: 163px">
                    <asp:Label ID="lblpublisher" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="zipcode:"></asp:Label>
                </td>
                <td style="width: 284px">
                    <asp:TextBox ID="txtzip" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 163px">
                    <asp:Label ID="lblpdate" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="email:"></asp:Label>
                </td>
                <td style="width: 284px">
                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 163px">
                    <asp:Label ID="lblisbn" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="telephone:"></asp:Label>
                </td>
                <td style="width: 284px">
                    <asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 163px">
                    <asp:Label ID="lblnop" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="fax:"></asp:Label>
                </td>
                <td style="width: 284px">
                    <asp:TextBox ID="txtfax" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="lbllang" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="website address:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:TextBox ID="txtweb" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="account number:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:TextBox ID="txtaccno" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Account holder:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:TextBox ID="txtaccholder" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Bank Branch:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:TextBox ID="txtbankbranch" runat="server"></asp:TextBox>
                </td>
            </tr>
            
        </table>
    <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
        ID="btnadd" runat="server" Text="ADD" 
            Width="79px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnupdate" runat="server" Height="26px" Text="MODIFY" 
            Width="79px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btndel" runat="server" Height="26px" Text="DELETE" 
            Width="79px" />
        <br />
        <br />
        <asp:GridView ID="Gvproduct" runat="server" BackColor="#CCCCCC" 
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
            CellSpacing="2" ForeColor="Black" Height="286px" PageSize="1" 
            style="margin-right: 1px" Width="355px">
            <RowStyle BackColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
            <FooterStyle BackColor="#CCCCCC" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </asp:panel>
</asp:Content>

