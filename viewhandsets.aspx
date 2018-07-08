<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="viewhandsets.aspx.vb" Inherits="viewhandsets" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align=center>
	<br/><br/>
			<table align=center><tr><td class="style2" 
                    style="font-family: 'Adobe Caslon Pro'; font-size: large; font-weight: bold; font-style: normal; color: #333333;">Search Mobiles here:</td>
			<td class="style3">&nbsp;<asp:TextBox ID="TextBox1" runat=server BorderColor="#666666" 
                    BorderStyle="Inset" ForeColor="#666666" Height="33px" Width="294px"></asp:TextBox></td>
			<td style="list-style-type: none">
                <asp:Button ID="btnsearch" runat="server" BackColor="#666666" BorderColor="Black" 
                    BorderWidth="0px" Font-Bold="False" Font-Names="Source Code Pro" 
                    Font-Size="Medium" Font-Underline="False" ForeColor="White" Height="33px" 
                    style="margin-left: 0px" Text="Search" Width="154px" 
                    BorderStyle="Outset" />
                </td></tr></table>
			
			</div>
 <div style=" width:926px ">
    <table style="width: 96%" border="Purple" >
        
            <td style="width: 1253px;">
                <asp:ListView ID="ListView1" GroupPlaceholderID="groupPlaceHoler" 
    runat="server" GroupItemCount ="3">
    
    <LayoutTemplate>
    <table id="Table1" runat ="server" >
    <tr id="Tr1" runat ="server">
    <td id="Td1" runat ="server"> 
    <table ID="groupPlaceHolderContainer" runat ="server">
    <tr ID="groupPlaceHoler" runat="server"></tr> 
    </table>
    </td>
    </tr>
    <tr id="Tr2" runat="server" align="center">
    <td id="Td2" runat="server">
    <asp:DataPager ID="DataPager1" runat ="server" PageSize ="9">
    <Fields>
    <asp:NumericPagerField /> 
    </Fields>
    </asp:DataPager> 
    
    </td>
    </tr>
    </table> 
    </LayoutTemplate>
    <GroupTemplate>
    <tr id="itemPlacdeholderContainer" runat="server">
    <td id="itemPlaceHolder" runat="server">
    </td></tr> 
    
    </GroupTemplate>
    <ItemTemplate>
    <td>
    <table width="100" cellpadding="10" cellspacing="50" style="border-style:double; margin-left:10px">
    <tr align="center" style="max-height:10px"><td>
    <a href="viewhandsetdetails.aspx?handsetid=<%#Eval("handsetname")%>">
    <asp:Image ID ="Image1" runat ="server" ImageUrl ='<%#"~\images\mobiles\"+Eval("url")%>' height="150" Width="150" />
   </a>  
    <br /><asp:Label ID="Label1" runat ="server" Text='<%#Eval("handsetname")%>' ForeColor="Black" Font-Size="Medium" Font-Bold="true"></asp:Label> 
<br /> Rs. <asp:Label ID="Label2" runat ="server" Text='<%#Eval("cost")%>' ForeColor="Blue" Font-Size="Medium" Font-Bold="true"></asp:Label> 
   </td> </tr>
   
    </table></td>
    </ItemTemplate>
    </asp:ListView></td>
        
    </table>
    
 </div>
</asp:Content>

