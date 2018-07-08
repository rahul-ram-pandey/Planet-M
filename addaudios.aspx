<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="addaudios.aspx.vb" Inherits="_Default" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:panel ID="prod" runat="server"  Height="1107px" 
    BackColor="White">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table style="width: 55%; height: 320px; margin-left: 78px">
            <tr>
                <td style="width: 163px">
                    <asp:Label ID="llblbookid" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Audio Id:"></asp:Label>
                </td>
                <td style="width: 284px">
                    <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 163px">
                    <asp:Label ID="lblbookname" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Audio name:"></asp:Label>
                </td>
                <td style="width: 284px">
                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 163px">
                    <asp:Label ID="lblauthor" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Movie name:"></asp:Label>
                </td>
                <td style="width: 284px">
                    <asp:TextBox ID="txtmovname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 163px">
                    <asp:Label ID="lblprice" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Music director:"></asp:Label>
                </td>
                <td style="width: 284px">
                    <asp:TextBox ID="txtdir" runat="server"></asp:TextBox>
                </td>
            </tr>
            
            <tr>
                <td style="width: 163px">
                    <asp:Label ID="lblpublisher" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Artists:"></asp:Label>
                </td>
                <td style="width: 284px">
                    <asp:TextBox ID="txtartist" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 163px">
                    <asp:Label ID="lblpdate" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Albums:"></asp:Label>
                </td>
                <td style="width: 284px">
                    <asp:TextBox ID="txtalbums" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 163px">
                    <asp:Label ID="lblisbn" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Singers:"></asp:Label>
                </td>
                <td style="width: 284px">
                    <asp:TextBox ID="txtsingers" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 163px">
                    <asp:Label ID="lblnop" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Composers:"></asp:Label>
                </td>
                <td style="width: 284px">
                    <asp:TextBox ID="txtcomposers" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="lbllang" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Lyricists:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:TextBox ID="txtlyricists" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Label:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:TextBox ID="txtlabel" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Track Length:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:TextBox ID="txtlength" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Release year:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:TextBox ID="txtrelyear" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Synopsis:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:TextBox ID="txtsynopsis" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Genre:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:TextBox ID="txtgenre" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Cd copies:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:TextBox ID="txtcopies" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="cd category:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:DropDownList ID="txtcategory" runat="server" Height="16px" Width="128px">
                        <asp:ListItem>pre-orders</asp:ListItem>
                        <asp:ListItem>new releases</asp:ListItem>
                        <asp:ListItem>devotional</asp:ListItem>
                        <asp:ListItem>bollywood retro</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
             <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="cost:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:TextBox ID="txtcost" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Total Amount:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:TextBox ID="txtamount" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label10" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Rating's:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:TextBox ID="txtratings" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 163px">
                    <asp:Label ID="lblimg" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Image URL:"></asp:Label>
                </td>
                <td style="width: 284px">
                    <asp:FileUpload ID="txtimg" runat="server" />
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
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:panel ID="gv" runat="server" ScrollBars="both" Height="300px" 
            Width="867px">
    <asp:GridView ID="Gvproduct" runat="server" BackColor="#CCCCCC" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
        CellSpacing="2" ForeColor="Black" PageSize="1" Height="286px" 
            style="margin-right: 1px" Width="355px">
        <RowStyle BackColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
        <FooterStyle BackColor="#CCCCCC" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    </asp:panel>
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:panel>

</asp:Content>

