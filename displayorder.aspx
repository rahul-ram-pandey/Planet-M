<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="displayorder.aspx.vb" Inherits="Default2" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   
&nbsp;
    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button1" runat="server" 
        Text="Display Order" />
    <br/><br/>
    
    <asp:ListView ID="ListView1" runat="server" SelectedIndex="0">
                                    <ItemTemplate>
                                        <tr style="background-color:#DCDCDC;color: #000000;">
                                            <td>
                                            <a href="Getorderdetails.aspx?orderid=<%# Eval("orderid") %>">    <asp:Label ID="orderidLabel" runat="server" Text='<%# Eval("orderid") %>' /></a>
                                            </td>
                                            <td>
                                              <a href="displayuser.aspx?username=<%# Eval("username") %>">  <asp:Label ID="usernameLabel" runat="server" 
                                                    Text='<%# Eval("username") %>' /></a>
                                            </td>
                                            <td>
                                                <asp:Label ID="orderdateLabel" runat="server" 
                                                    Text='<%# Eval("orderdate") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="totalLabel" runat="server" 
                                                    Text='<%# Eval("total") %>' />
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                    <AlternatingItemTemplate>
                                        <tr style="background-color:#FFF8DC;">
                                            <td>
                                            <a href="Getorderdetails.aspx?orderid=<%# Eval("orderid") %>">     <asp:Label ID="orderidLabel" runat="server" Text='<%# Eval("orderid") %>' /></a>

                                            </td>
                                            <td>
                                             <a href="displayuser.aspx?username=<%# Eval("username") %>">   <asp:Label ID="usernameLabel" runat="server" 
                                                    Text='<%# Eval("username") %>' /></a>
                                            </td>
                                            <td>
                                                <asp:Label ID="orderdateLabel" runat="server" 
                                                    Text='<%# Eval("orderdate") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="totalLabel" runat="server" 
                                                    Text='<%# Eval("total") %>' />
                                            </td>
                                        </tr>
                                    </AlternatingItemTemplate>
                                    <EmptyDataTemplate>
                                        <table runat="server" 
                                            
                                            style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                                            <tr>
                                                <td>
                                                    No orders to be displayed.</td>
                                            </tr>
                                        </table>
                                    </EmptyDataTemplate>
                                    <InsertItemTemplate>
                                        <tr style="">
                                            <td>
                                                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                                                    Text="Insert" />
                                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                                    Text="Clear" />
                                            </td>
                                            <td>
                                             <a href="Getorderdetails.aspx?orderid=<%# Eval("orderid") %>">   <asp:TextBox ID="orderidTextBox" runat="server" Text='<%# Bind("orderid") %>' /></a>

                                            </td>
                                            <td>
                                            <a href="displayuser.aspx?username=<%# Eval("username") %>">    <asp:TextBox ID="usernameTextBox" runat="server" 
                                                    Text='<%# Bind("username") %>' /></a>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="orderdateTextBox" runat="server" 
                                                    Text='<%# Bind("orderdate") %>' />
                                            </td>
                                            <td>
                                                <asp:TextBox ID="totalTextBox" runat="server" 
                                                    Text='<%# Bind("total") %>' />
                                            </td>
                                        </tr>
                                    </InsertItemTemplate>
                                    <LayoutTemplate>
                                        <table runat="server">
                                            <tr runat="server">
                                                <td runat="server">
                                                    <table ID="itemPlaceholderContainer" runat="server" border="1" 
                                                        style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                                        <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                                            <th runat="server">
                                                                orderid</th>
                                                            <th runat="server">
                                                                username</th>
                                                            <th runat="server">
                                                                orderdate</th>
                                                            <th runat="server">
                                                                total</th>
                                                        </tr>
                                                        <tr ID="itemPlaceholder" runat="server">
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr runat="server">
                                                <td runat="server" 
                                                    
                                                    style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                                                    <asp:DataPager ID="DataPager1" runat="server">
                                                        <Fields>
                                                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                                                ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                                            <asp:NumericPagerField />
                                                            <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" 
                                                                ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                                        </Fields>
                                                    </asp:DataPager>
                                                </td>
                                            </tr>
                                        </table>
                                    </LayoutTemplate>
                                    <EditItemTemplate>
                                        <tr style="background-color:#008A8C;color: #FFFFFF;">
                                            <td>
                                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                                                    Text="Update" />
                                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                                    Text="Cancel" />
                                            </td>
                                            <td>
                                               <a href="Getorderdetails.aspx?orderid=<%# Eval("orderid") %>">   <asp:TextBox ID="orderidTextBox" runat="server" Text='<%# Bind("orderid") %>' /></a>

                                            </td>
                                            <td>
                                             <a href="displayuser.aspx?username=<%# Eval("username") %>">   <asp:TextBox ID="usernameTextBox" runat="server" 
                                                    Text='<%# Bind("username") %>' /></a>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="orderdateTextBox" runat="server" 
                                                    Text='<%# Bind("orderdate") %>' />
                                            </td>
                                            <td>
                                                <asp:TextBox ID="totalTextBox" runat="server" 
                                                    Text='<%# Bind("total") %>' />
                                            </td>
                                        </tr>
                                    </EditItemTemplate>
                                    <SelectedItemTemplate>
                                        <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                                            <td>
                                              <a href="Getorderdetails.aspx?orderid=<%# Eval("orderid") %>">    <asp:Label ID="orderidLabel" runat="server" Text='<%# Eval("orderid") %>' /></a>

                                            </td>
                                            <td>
                                           <a href="displayuser.aspx?username=<%# Eval("username") %>">     <asp:Label ID="usernameLabel" runat="server" 
                                                    Text='<%# Eval("username") %>' /></a>
                                            </td>
                                            <td>
                                                <asp:Label ID="orderdateLabel" runat="server" 
                                                    Text='<%# Eval("orderdate") %>' />
                                            </td>
                                            <td>
                                                <asp:Label ID="totalLabel" runat="server" 
                                                    Text='<%# Eval("total") %>' />
                                            </td>
                                        </tr>
                                    </SelectedItemTemplate>
                                </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:dbconnection1 %>" 
    SelectCommand="SELECT * FROM [orderdetails]"></asp:SqlDataSource>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;



</asp:Content>

