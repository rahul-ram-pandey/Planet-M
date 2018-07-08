<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="addemployee.aspx.vb" Inherits="_Default" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:panel ID="prod" runat="server"  Height="1068px" 
    BackColor="White">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table style="width: 55%; height: 805px; margin-left: 78px">
            <tr>
                <td style="width: 163px">
                    <asp:Label ID="llblbookid" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Emp Id:"></asp:Label>
                </td>
                <td style="width: 284px">
                    <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 163px">
                    <asp:Label ID="lblbookname" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="First Name:"></asp:Label>
                </td>
                <td style="width: 284px">
                    <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 163px">
                    <asp:Label ID="lblauthor" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Last Name:"></asp:Label>
                </td>
                <td style="width: 284px">
                    <asp:TextBox ID="txtlname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 163px">
                    <asp:Label ID="lblprice" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Street:"></asp:Label>
                </td>
                <td style="width: 284px">
                    <asp:TextBox ID="txtstreet" runat="server"></asp:TextBox>
                </td>
            </tr>
            
            <tr>
                <td style="width: 163px">
                    <asp:Label ID="lblpublisher" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Suburb:"></asp:Label>
                </td>
                <td style="width: 284px">
                    <asp:TextBox ID="txtsuburb" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 163px">
                    <asp:Label ID="lblpdate" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="City:"></asp:Label>
                </td>
                <td style="width: 284px">
                    <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 163px">
                    <asp:Label ID="lblisbn" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Landline:"></asp:Label>
                </td>
                <td style="width: 284px">
                    <asp:TextBox ID="txtlandline" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 163px">
                    <asp:Label ID="lblnop" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Gender:"></asp:Label>
                </td>
                <td style="width: 284px">
                    <asp:DropDownList ID="ddlgender" runat="server" Height="22px" Width="128px">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="lbllang" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Date of Birth:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:TextBox ID="txtdob" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Appointment Date:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:TextBox ID="txtaptdate" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Department:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:TextBox ID="txtdept" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Branch:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:TextBox ID="txtbranch" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Marital status:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:TextBox ID="txtmarital" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Account number:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:TextBox ID="txtaccno" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Account holder:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:TextBox ID="txtaccholder" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Bank branch:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:TextBox ID="txtbankbranch" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Work experience:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:TextBox ID="txtworkexpi" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Qualification:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:TextBox ID="txtqual" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label10" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Last salary:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:TextBox ID="txtlstsal" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label11" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Designation:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:TextBox ID="txtdesig" runat="server"></asp:TextBox>
                </td>
            </tr>
           <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label12" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Package:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:TextBox ID="txtpackage" runat="server"></asp:TextBox>
                </td>
            </tr>
           <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label13" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="C_Leaves:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:TextBox ID="txtcleaves" runat="server"></asp:TextBox>
                </td>
            </tr>
           <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label14" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="E_Leaves:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:TextBox ID="txteleave" runat="server"></asp:TextBox>
                </td>
            </tr>
           <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label15" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Notes:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:TextBox ID="txtnotes" runat="server"></asp:TextBox>
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
        <asp:Panel ID="Panel1" runat="server" Height="212px">
            <asp:GridView ID="gvemployee" runat="server">
            </asp:GridView>
        </asp:Panel>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    </asp:panel>
    
    </asp:Content>

