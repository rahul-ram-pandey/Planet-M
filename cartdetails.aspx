<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="cartdetails.aspx.vb" Inherits="cartdetails" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:ListView 
    ID="ListView1" runat="server" DataSourceID="SqlDataSource1" 
        DataKeyNames="productid">
        <ItemTemplate>
            <tr style="background-color:#DCDCDC;color: #000000;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                        Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="BookidLabel" runat="server" 
                        Text='<%# Eval("productid") %>' />
                </td>
                <td>
                    <asp:Label ID="OrderidLabel" runat="server" Text='<%# Eval("Orderid") %>' />
                </td>
                <td>
                    <asp:Label ID="BookCatLabel" runat="server" 
                        Text='<%# Eval("productmame") %>' />
                </td>
                <td>
                    <asp:Label ID="RateLabel" runat="server" Text='<%# Eval("Rate") %>' />
                </td>
                <td>
                    <asp:Label ID="UnitsLabel" runat="server" Text='<%# Eval("Units") %>' />
                </td>
                <td>
                    <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Rate") * Eval("Units") %>' /> 
                </td>
            </tr>
        </ItemTemplate>
        <AlternatingItemTemplate>
            <tr style="background-color:#FFF8DC;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                        Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="BookidLabel" runat="server" 
                        Text='<%# Eval("productid") %>' />
                </td>
                <td>
                    <asp:Label ID="OrderidLabel" runat="server" Text='<%# Eval("Orderid") %>' />
                </td>
                <td>
                    <asp:Label ID="BookCatLabel" runat="server" 
                        Text='<%# Eval("productmame") %>' />
                </td>
                <td>
                    <asp:Label ID="RateLabel" runat="server" Text='<%# Eval("Rate") %>' />
                </td>
                <td>
                    <asp:Label ID="UnitsLabel" runat="server" Text='<%# Eval("Units") %>' />
                </td>
                <td>
                    <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Rate") * Eval("Units") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EmptyDataTemplate>
            <table id="Table1" runat="server" align=center
                
                style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>
                        No Product is added to cart.</td>
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
                    <asp:Label ID="BookidTextBox" runat="server" 
                        Text='<%# Bind("productid") %>' />
                </td>
                <td>
                    <asp:Label ID="OrderidTextBox" runat="server" Text='<%# Bind("Orderid") %>' />
                </td>
                <td>
                    <asp:Label ID="BookCatTextBox" runat="server" 
                        Text='<%# Bind("productmame") %>' />
                </td>
                <td>
                    <asp:Label ID="RateTextBox" runat="server" Text='<%# Bind("Rate") %>' />
                </td>
                <td>
                    <asp:TextBox ID="UnitsTextBox" runat="server" Text='<%# Bind("Units") %>' />
                </td>
                <td>
                    <asp:Label ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <LayoutTemplate>
            <table id="Table2" runat="server">
                <tr id="Tr1" runat="server">
                    <td id="Td1" runat="server">
                        <table ID="itemPlaceholderContainer" runat="server" border="1" 
                            style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr id="Tr2" runat="server" style="background-color:#DCDCDC;color: #000000;">
                                <th id="Th1" runat="server">
                                </th>
                                <th id="Th2" runat="server">
                                    Productid</th>
                                <th id="Th3" runat="server">
                                    Orderid</th>
                                <th id="Th4" runat="server">
                                    Product Name</th>
                                <th id="Th5" runat="server">
                                    Rate</th>
                                <th id="Th6" runat="server">
                                    Units</th>
                                <th id="Th7" runat="server">
                                    Price</th>
                            </tr>
                            <tr ID="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr id="Tr3" runat="server">
                    <td id="Td2" runat="server" 
                        
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
                    <asp:Label ID="BookidLabel1" runat="server" 
                        Text='<%# Eval("productid") %>' />
                </td>
                <td>
                    <asp:Label ID="OrderidTextBox" runat="server" Text='<%# Bind("Orderid") %>' />
                </td>
                <td>
                    <asp:Label ID="BookCatTextBox" runat="server" Text='<%# Bind("productmame") %>' />
                </td>
                <td>
                    <asp:Label ID="RateTextBox" runat="server" Text='<%# Bind("Rate") %>' />
                </td>
                <td>
                    <asp:TextBox ID="UnitsTextBox" runat="server" Text='<%# Bind("Units") %>' />
                </td>
                <td>
                    <asp:Label ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <SelectedItemTemplate>
            <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                        Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="BookidLabel" runat="server" 
                        Text='<%# Eval("productid") %>' />
                </td>
                <td>
                    <asp:Label ID="OrderidLabel" runat="server" Text='<%# Eval("Orderid") %>' />
                </td>
                <td>
                    <asp:Label ID="BookCatLabel" runat="server" 
                        Text='<%# Eval("productmame") %>' />
                </td>
                <td>
                    <asp:Label ID="RateLabel" runat="server" Text='<%# Eval("Rate") %>' />
                </td>
                <td>
                    <asp:TextBox ID="UnitsLabel" runat="server" Text='<%# Eval("Units") %>' />
                </td>
                <td>
                    <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Rate") * Eval("Units") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
</asp:ListView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:dbConnection1 %>" 
    DeleteCommand="DELETE FROM [cartdetails] WHERE [productid] = @original_productid" 
    InsertCommand="INSERT INTO [cartdetails] ([productid], [Orderid], [productmame], [Rate], [Units], [Price]) VALUES (@productid, @Orderid, @productmame, @Rate, @Units, @Price)" 
    OldValuesParameterFormatString="original_{0}" 
    SelectCommand="SELECT * FROM [cartdetails] WHERE ([Orderid] = @Orderid)" 
    
        
    
        UpdateCommand="UPDATE [cartdetails] SET [Orderid] = @Orderid, [productmame] = @productmame, [Rate] = @Rate, [Units] = @Units, [Price] = @Price WHERE [productid] = @original_productid">
    <SelectParameters>
        <asp:SessionParameter Name="Orderid" SessionField="orderid" Type="String" />
    </SelectParameters>
    <DeleteParameters>
        <asp:Parameter Name="original_productid" Type="String" />
    </DeleteParameters>
    <UpdateParameters>
        <asp:Parameter Name="Orderid" Type="String" />
        <asp:Parameter Name="productmame" Type="String" />
        <asp:Parameter Name="Rate" Type="String" />
        <asp:Parameter Name="Units" Type="String" />
        <asp:Parameter Name="Price" Type="String" />
        <asp:Parameter Name="original_productid" Type="String" />
    </UpdateParameters>
    <InsertParameters>
        <asp:Parameter Name="productid" Type="String" />
        <asp:Parameter Name="Orderid" Type="String" />
        <asp:Parameter Name="productmame" Type="String" />
        <asp:Parameter Name="Rate" Type="String" />
        <asp:Parameter Name="Units" Type="String" />
        <asp:Parameter Name="Price" Type="String" />
    </InsertParameters>
</asp:SqlDataSource>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" Text="Continue Shopping" 
        BackColor="Black" BorderColor="#333333" BorderStyle="Solid" BorderWidth="4px" 
        Font-Bold="True" Font-Names="Lucida Console" Font-Underline="True" 
        ForeColor="White" Height="33px" Width="171px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="Button1" runat="server" Text="Confirm Order" 
    style="height: 26px" BackColor="Black" BorderColor="#333333" BorderWidth="4px" 
        Font-Bold="True" Font-Names="Lucida Console" Font-Underline="True" 
        ForeColor="White" Height="33px" Width="142px" />
&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 

</asp:Content>

