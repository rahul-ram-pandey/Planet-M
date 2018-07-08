<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="displaydetails.aspx.vb" Inherits="displaydetails" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:Repeater ID="Repeater1" runat="server">
        <HeaderTemplate>
            <table>
        </HeaderTemplate>
        <ItemTemplate>
        <tr style="height:20px"></tr>
            <tr>
            <td width="200px">
            
            </td> 
            
            
                            <td>
                    <asp:Image runat="server" ID="I1" ImageUrl='<%#"~\img\"+Eval("url")%>' Height="250"
                        Width="250" AlternateText="P" align="middle"/></a>
                </td>
                
                <td style="width: 50px">
                
                </td>
                
                
                <td align="left">
                    <b><font color="66,00,33" size="4">Audio Name:</font></b>&nbsp;&nbsp;<%#Container.DataItem("audioname")%>
               
         
           <br />
                
                    <b><font color="66,00,33" size="4">Singers:</font></b>&nbsp;&nbsp;<%#Container.DataItem("singers")%>
                
            
            <br />
                
                    <b><font color="66,00,33" size="4">Composers:</font></b>&nbsp;&nbsp;<%#Container.DataItem("composers")%>
               
            
            <br />
                
                    <b><font color="66,00,33" size="4">Lyricist:</font></b>&nbsp;&nbsp;<%#Container.DataItem("lyricists")%>
                
            
            
               <br />
                    <b><font color="66,00,33" size="4">Track Length:</font></b>&nbsp;&nbsp;<%#Container.DataItem("tracklength")%>
               
           
            <br />
                
                    <b><font color="66,00,33" size="4">Ratings:</font></b>&nbsp;&nbsp;<%#Container.DataItem("ratings")%>
                
            <br />
            <b><font color="66,00,33" size="4">Payment Option:</font></b>&nbsp;&nbsp;Cash on Delivery
                
            <br />
            
            
            
            </td>

            <td width="50px">
            </td>
            
                <td align="center">
                    <b><font color="Blue">Price Rs. <asp:Label ID="L1" runat="server" Text='<%#Eval("cost")%>'></asp:Label></font></b>
               
           
 
           </td>
        </ItemTemplate>
        <FooterTemplate>
            </FooterTemplate>
    </asp:Repeater>
  
    <table>
      
      <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
      
       <td>
            
                <asp:Button ID="btnAddToCart" Text="Buy Now" runat="server" BackColor="Black" 
                    BorderColor="#333333" BorderStyle="Double" BorderWidth="4px" Font-Bold="True" 
                    Font-Names="Lucida Console" Font-Underline="False" ForeColor="White" 
                    Height="34px" Width="136px" Font-Size="Larger" />
            </td>
        
    </table>
    
    <table style="width: 70%; height: 143px; margin-left: 201px;">
       
       <tr>
       
   
            <td style="width: 1118px; font-family: Georgia; font-weight: bold; color: #000000;">
                Please Note-<br />
                <br />
                *We sell only NEW dvds and do NOT sell old or second-hand dvds.<br />
                *The product images and summary displayed may be of a different edition or binding 
                of the same title.<br />
                *Price can change due to reprinting,price change by publisher / distributor.
            </td>
        </tr>
    </table>

</asp:Content>

