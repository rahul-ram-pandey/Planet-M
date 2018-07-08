<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Getorderdetails.aspx.vb" Inherits="Default2" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
    <AlternatingItemTemplate>
        <tr style="background-color:#FFF8DC;">
            <td>
                <asp:Label ID="productidLabel" runat="server" Text='<%# Eval("productid") %>' />
            </td>
            <td>
                <asp:Label ID="bookcatLabel" runat="server" Text='<%# Eval("productname") %>' />
            </td>
            <td>
                <asp:Label ID="rateLabel" runat="server" Text='<%# Eval("rate") %>' />
            </td>
            <td>
                <asp:Label ID="unitsLabel" runat="server" Text='<%# Eval("units") %>' />
            </td>
            <td>
                <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
            </td>
            <td>
                <asp:Label ID="totalLabel" runat="server" Text='<%# Eval("total") %>' />
            </td>
            <td>
                <asp:Label ID="orderidLabel" runat="server" Text='<%# Eval("orderid") %>' />
            </td>
        </tr>
    </AlternatingItemTemplate>
    <LayoutTemplate>
        <table runat="server">
            <tr runat="server">
                <td runat="server">
                    <table ID="itemPlaceholderContainer" runat="server" border="1" 
                        style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                        <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                            <th runat="server">
                                productid</th>
                            <th runat="server">
                                bookcat</th>
                            <th runat="server">
                                rate</th>
                            <th runat="server">
                                units</th>
                            <th runat="server">
                                price</th>
                            <th runat="server">
                                total</th>
                            <th runat="server">
                                orderid</th>
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
    <InsertItemTemplate>
        <tr style="">
            <td>
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                    Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Clear" />
            </td>
            <td>
                <asp:TextBox ID="productidTextBox" runat="server" 
                    Text='<%# Bind("productid") %>' />
            </td>
            <td>
                <asp:TextBox ID="bookcatTextBox" runat="server" Text='<%# Bind("productname") %>' />
            </td>
            <td>
                <asp:TextBox ID="rateTextBox" runat="server" Text='<%# Bind("rate") %>' />
            </td>
            <td>
                <asp:TextBox ID="unitsTextBox" runat="server" Text='<%# Bind("units") %>' />
            </td>
            <td>
                <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
            </td>
            <td>
                <asp:TextBox ID="totalTextBox" runat="server" Text='<%# Bind("total") %>' />
            </td>
            <td>
                <asp:TextBox ID="orderidTextBox" runat="server" Text='<%# Bind("orderid") %>' />
            </td>
        </tr>
    </InsertItemTemplate>
    <SelectedItemTemplate>
        <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
            <td>
                <asp:Label ID="productidLabel" runat="server" Text='<%# Eval("productid") %>' />
            </td>
            <td>
                <asp:Label ID="bookcatLabel" runat="server" Text='<%# Eval("productname") %>' />
            </td>
            <td>
                <asp:Label ID="rateLabel" runat="server" Text='<%# Eval("rate") %>' />
            </td>
            <td>
                <asp:Label ID="unitsLabel" runat="server" Text='<%# Eval("units") %>' />
            </td>
            <td>
                <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
            </td>
            <td>
                <asp:Label ID="totalLabel" runat="server" Text='<%# Eval("total") %>' />
            </td>
            <td>
                <asp:Label ID="orderidLabel" runat="server" Text='<%# Eval("orderid") %>' />
            </td>
        </tr>
    </SelectedItemTemplate>
    <EmptyDataTemplate>
        <table runat="server" 
            style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
            <tr>
                <td>
                    No data was returned.</td>
            </tr>
        </table>
    </EmptyDataTemplate>
    <EditItemTemplate>
        <tr style="background-color:#008A8C;color: #FFFFFF;">
            <td>
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                    Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Cancel" />
            </td>
            <td>
                <asp:TextBox ID="productidTextBox" runat="server" 
                    Text='<%# Bind("productid") %>' />
            </td>
            <td>
                <asp:TextBox ID="bookcatTextBox" runat="server" Text='<%# Bind("productname") %>' />
            </td>
            <td>
                <asp:TextBox ID="rateTextBox" runat="server" Text='<%# Bind("rate") %>' />
            </td>
            <td>
                <asp:TextBox ID="unitsTextBox" runat="server" Text='<%# Bind("units") %>' />
            </td>
            <td>
                <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
            </td>
            <td>
                <asp:TextBox ID="totalTextBox" runat="server" Text='<%# Bind("total") %>' />
            </td>
            <td>
                <asp:TextBox ID="orderidTextBox" runat="server" Text='<%# Bind("orderid") %>' />
            </td>
        </tr>
    </EditItemTemplate>
    <ItemTemplate>
        <tr style="background-color:#DCDCDC;color: #000000;">
            <td>
                <asp:Label ID="productidLabel" runat="server" Text='<%# Eval("productid") %>' />
            </td>
            <td>
                <asp:Label ID="bookcatLabel" runat="server" Text='<%# Eval("productname") %>' />
            </td>
            <td>
                <asp:Label ID="rateLabel" runat="server" Text='<%# Eval("rate") %>' />
            </td>
            <td>
                <asp:Label ID="unitsLabel" runat="server" Text='<%# Eval("units") %>' />
            </td>
            <td>
                <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
            </td>
            <td>
                <asp:Label ID="totalLabel" runat="server" Text='<%# Eval("total") %>' />
            </td>
            <td>
                <asp:Label ID="orderidLabel" runat="server" Text='<%# Eval("orderid") %>' />
            </td>
        </tr>
    </ItemTemplate>
</asp:ListView>
&nbsp;&nbsp;
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:dbconnection1 %>" 
    SelectCommand="SELECT * FROM [finalorder] WHERE ([orderid] = @orderid)">
    <SelectParameters>
        <asp:QueryStringParameter Name="orderid" QueryStringField="orderid" 
            Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
<asp:Button ID="Button1" runat="server" Text="BACK" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br />
<br />
<br />
<br />
<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
</asp:Content>

