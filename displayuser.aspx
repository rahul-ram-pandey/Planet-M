<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="displayuser.aspx.vb" Inherits="Default2" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource1">
    <AlternatingItemTemplate>
        <tr style="background-color:#FFF8DC;">
            <td>
                <asp:Label ID="Full_NameLabel" runat="server" Text='<%# Eval("Full_Name") %>' />
            </td>
            <td>
                <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
            </td>
            <td>
                <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
            </td>
            <td>
                <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
            </td>
            <td>
                <asp:Label ID="CityLabel" runat="server" Text='<%# Eval("City") %>' />
            </td>
            <td>
                <asp:Label ID="Contact_NoLabel" runat="server" 
                    Text='<%# Eval("Contact_No") %>' />
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
                                Full_Name</th>
                            <th runat="server">
                                Gender</th>
                            <th runat="server">
                                Email</th>
                            <th runat="server">
                                Address</th>
                            <th runat="server">
                                City</th>
                            <th runat="server">
                                Contact_No</th>
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
                <asp:TextBox ID="Full_NameTextBox" runat="server" 
                    Text='<%# Bind("Full_Name") %>' />
            </td>
            <td>
                <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
            </td>
            <td>
                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            </td>
            <td>
                <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
            </td>
            <td>
                <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
            </td>
            <td>
                <asp:TextBox ID="Contact_NoTextBox" runat="server" 
                    Text='<%# Bind("Contact_No") %>' />
            </td>
        </tr>
    </InsertItemTemplate>
    <SelectedItemTemplate>
        <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
            <td>
                <asp:Label ID="Full_NameLabel" runat="server" Text='<%# Eval("Full_Name") %>' />
            </td>
            <td>
                <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
            </td>
            <td>
                <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
            </td>
            <td>
                <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
            </td>
            <td>
                <asp:Label ID="CityLabel" runat="server" Text='<%# Eval("City") %>' />
            </td>
            <td>
                <asp:Label ID="Contact_NoLabel" runat="server" 
                    Text='<%# Eval("Contact_No") %>' />
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
                <asp:TextBox ID="Full_NameTextBox" runat="server" 
                    Text='<%# Bind("Full_Name") %>' />
            </td>
            <td>
                <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
            </td>
            <td>
                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            </td>
            <td>
                <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
            </td>
            <td>
                <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
            </td>
            <td>
                <asp:TextBox ID="Contact_NoTextBox" runat="server" 
                    Text='<%# Bind("Contact_No") %>' />
            </td>
        </tr>
    </EditItemTemplate>
    <ItemTemplate>
        <tr style="background-color:#DCDCDC;color: #000000;">
            <td>
                <asp:Label ID="Full_NameLabel" runat="server" Text='<%# Eval("Full_Name") %>' />
            </td>
            <td>
                <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
            </td>
            <td>
                <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
            </td>
            <td>
                <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
            </td>
            <td>
                <asp:Label ID="CityLabel" runat="server" Text='<%# Eval("City") %>' />
            </td>
            <td>
                <asp:Label ID="Contact_NoLabel" runat="server" 
                    Text='<%# Eval("Contact_No") %>' />
            </td>
        </tr>
    </ItemTemplate>
</asp:ListView>
<br />
&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="BACK" />
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:dbconnection1 %>" 
    
        SelectCommand="SELECT [Full_Name], [Gender], [Email], [Address], [City], [Contact_No] FROM [Registeration] WHERE ([Username] = @Username)">
    <SelectParameters>
        <asp:QueryStringParameter Name="Username" QueryStringField="username" 
            Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
</asp:Content>

