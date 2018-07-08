<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="addvideos.aspx.vb" Inherits="_Default" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:panel ID="prod" runat="server"  Height="1144px" 
    BackColor="White">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table style="width: 55%; height: 320px; margin-left: 78px">
            <tr>
                <td style="width: 163px">
                    <asp:Label ID="llblbookid" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Movie Id:"></asp:Label>
                </td>
                <td style="width: 284px">
                    <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 163px">
                    <asp:Label ID="lblbookname" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Movie name:"></asp:Label>
                </td>
                <td style="width: 284px">
                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 163px">
                    <asp:Label ID="lblauthor" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Release year:"></asp:Label>
                </td>
                <td style="width: 284px">
                    <asp:TextBox ID="txtrelyear" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 163px">
                    <asp:Label ID="lblprice" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Producer:"></asp:Label>
                </td>
                <td style="width: 284px">
                    <asp:TextBox ID="txtprod" runat="server"></asp:TextBox>
                </td>
            </tr>
            
            <tr>
                <td style="width: 163px">
                    <asp:Label ID="lblpublisher" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Director:"></asp:Label>
                </td>
                <td style="width: 284px">
                    <asp:TextBox ID="txtdir" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 163px">
                    <asp:Label ID="lblpdate" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Star cast:"></asp:Label>
                </td>
                <td style="width: 284px">
                    <asp:TextBox ID="txtstar" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 163px">
                    <asp:Label ID="lblisbn" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Label:"></asp:Label>
                </td>
                <td style="width: 284px">
                    <asp:TextBox ID="txtlabel" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 163px">
                    <asp:Label ID="lblnop" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Singers:"></asp:Label>
                </td>
                <td style="width: 284px">
                    <asp:TextBox ID="txtsingers" runat="server"></asp:TextBox>
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
                        Text="Editor:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:TextBox ID="txteditors" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Cinematographer:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:TextBox ID="txtcinemato" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Dialogue:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:TextBox ID="txtdialog" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Costumes:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:TextBox ID="txtcostumes" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Writer:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:TextBox ID="txtwriter" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label11" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Synopsis:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:TextBox ID="txtsynop" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label12" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Genre:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:TextBox ID="txtgenre" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label13" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Runtime:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:TextBox ID="txtruntime" runat="server"></asp:TextBox>
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
                    <asp:DropDownList ID="txtcat" runat="server" Height="16px" Width="128px">
                        <asp:ListItem>pre-orders</asp:ListItem>
                        <asp:ListItem>new releases</asp:ListItem>
                        <asp:ListItem>hindi movies</asp:ListItem>
                        <asp:ListItem>english movies</asp:ListItem>
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
                    <asp:TextBox ID="txtamt" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label10" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Ratings:"></asp:Label>
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
        <br />
        <asp:panel ID="gv" runat="server" ScrollBars="both" Height="249px" 
            Width="867px">
        <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    </asp:panel>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:panel>

</asp:Content>

