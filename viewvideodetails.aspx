<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="viewvideodetails.aspx.vb" Inherits="viewvideodetails" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 218px;
        }
        .style3
        {
            width: 435px;
        }
    </style>
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
                    <asp:Image runat="server" ID="I1" ImageUrl='<%#"~\images\videos\"+Eval("url")%>' Height="250"
                        Width="250" AlternateText="P" align="middle"/></a>
                </td>
                
                <td style="width: 50px">
                
                </td>
                
                
                <td align="left">
                    <b><font color="66,00,33" size="4">Movie Name:</font></b>&nbsp;&nbsp;<%#Container.DataItem("moviename")%>
               
         
           <br />
                
                    <b><font color="66,00,33" size="4">Release Year:</font></b>&nbsp;&nbsp;<%#Container.DataItem("releaseyear")%>
                
            
            <br />
                
                    <b><font color="66,00,33" size="4">Music Director:</font></b>&nbsp;&nbsp;<%#Container.DataItem("director")%>
               
            
            <br />
                
                    <b><font color="66,00,33" size="4">Producer:</font></b>&nbsp;&nbsp;<%#Container.DataItem("producer")%>
                
            
            
               <br />
                    <b><font color="66,00,33" size="4">Star Cast:</font></b>&nbsp;&nbsp;<%#Container.DataItem("starcast")%>
               
           
            <br />
                
                    <b><font color="66,00,33" size="4">Singers:</font></b>&nbsp;&nbsp;<%#Container.DataItem("singers")%>
                
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
      <tr>
      <td class="style2"></td>
      <td align="right" class="style3"><asp:Label ID="lblstock" runat="server" Text="In Stock" ForeColor=Green Font-Size=XX-Large></asp:Label>
          </td>
       <td>
            
                <asp:Button ID="btnAddToCart" Text="Add To Cart" runat="server" BackColor="#999999" 
                    BorderColor="#333333" BorderStyle="None" BorderWidth="4px" Font-Bold="True" 
                    Font-Names="Microsoft Yi Baiti" Font-Underline="False" ForeColor="White" 
                    Height="34px" Width="187px" Font-Size="Larger" />
            </td>
        </tr>
    </table>
    
    <table style="width: 70%; height: 143px; margin-left: 201px;">
       
       <tr>
       
   
            <td style="width: 1118px; font-family: Georgia; font-weight: bold; color: #000000;">
                Please Note-<br />
                <br />
                *We sell only NEW book and do NOT sell old or used books.<br />
                *The book images and summary displayed may be of a different edition or binding 
                of the same title.<br />
                *Price can change due to reprinting,price change by publisher / distributor.
            </td>
        </tr>
    </table>


</asp:Content>

