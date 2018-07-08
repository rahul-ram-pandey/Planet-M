<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="fbdetails.aspx.vb" Inherits="fbdetails" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" >
        <AlternatingItemTemplate>
            <li style="background-color: #FFFFFF;color: #284775;">Username:
                <asp:Label ID="UsernameLabel" runat="server" Text='<%# Eval("Username") %>' />
                <br />
                Comments:
                <asp:Label ID="CommentsLabel" runat="server" Text='<%# Eval("Comments") %>' />
                <br />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                        Text="Delete" />
            </li>
        </AlternatingItemTemplate>
        <LayoutTemplate>
            <ul ID="itemPlaceholderContainer" runat="server" 
                style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                <li ID="itemPlaceholder" runat="server" />
                </ul>
                <div style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
                    <asp:DataPager ID="DataPager1" runat="server">
                        <Fields>
                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                ShowNextPageButton="False" ShowPreviousPageButton="False" />
                            <asp:NumericPagerField />
                            <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" 
                                ShowNextPageButton="False" ShowPreviousPageButton="False" />
                        </Fields>
                    </asp:DataPager>
                </div>
            </LayoutTemplate>
            <ItemTemplate>
           
                    
                
                <li style="background-color: #E0FFFF;color: #333333;">Username:
                    <asp:Label ID="UsernameLabel" runat="server" Text='<%# Eval("Username") %>' />
                    <br />
                    Comments:
                    <asp:Label ID="CommentsLabel" runat="server" Text='<%# Eval("Comments") %>' />
                    <br />
                </li>
              <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                        Text="Delete" />
                   
            </ItemTemplate>
            <InsertItemTemplate>
                <li style="">Username:
                    <asp:TextBox ID="UsernameTextBox" runat="server" 
                        Text='<%# Bind("Username") %>' />
                    <br />
                    Comments:
                    <asp:TextBox ID="CommentsTextBox" runat="server" 
                        Text='<%# Bind("Comments") %>' />
                    <br />
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                        Text="Delete" />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                        Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Clear" />
                </li>
            </InsertItemTemplate>
            <SelectedItemTemplate>
                <li style="background-color: #E2DED6;font-weight: bold;color: #333333;">Username:
                    <asp:Label ID="UsernameLabel" runat="server" Text='<%# Eval("Username") %>' />
                    <br />
                    Comments:
                    <asp:Label ID="CommentsLabel" runat="server" Text='<%# Eval("Comments") %>' />
                    <br />
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                        Text="Delete" />
                </li>
            </SelectedItemTemplate>
            <EmptyDataTemplate>
                No Feedback was given...
            </EmptyDataTemplate>
            <EditItemTemplate>
                <li style="background-color: #999999;">Username:
                    <asp:TextBox ID="UsernameTextBox" runat="server" 
                        Text='<%# Bind("Username") %>' />
                    <br />
                    Comments:
                    <asp:TextBox ID="CommentsTextBox" runat="server" 
                        Text='<%# Bind("Comments") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                        Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Cancel" />
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                        Text="Delete" />
                </li>
            </EditItemTemplate>
            <ItemSeparatorTemplate>
                <br />
            </ItemSeparatorTemplate>
</asp:ListView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:dbConnection1 %>" 
    SelectCommand="SELECT * FROM [feedback]"
    DeleteCommand="DELETE FROM [feedback] WHERE [Username] = @Username" 
            InsertCommand="INSERT INTO [feedback] ([Username], [Comments]) VALUES (@Username, @Comments)" 
            UpdateCommand="UPDATE [feedback] SET [Comments] = @Comments WHERE [Username] = @Username">
    <DeleteParameters>
        <asp:Parameter Name="Username" Type="String" />
    </DeleteParameters>
    <UpdateParameters>
        <asp:Parameter Name="Comments" Type="String" />
        <asp:Parameter Name="Username" Type="String" />
    </UpdateParameters>
    <InsertParameters>
        <asp:Parameter Name="Username" Type="String" />
        <asp:Parameter Name="Comments" Type="String" />
    </InsertParameters>
    </asp:SqlDataSource>
     
</asp:Content>

