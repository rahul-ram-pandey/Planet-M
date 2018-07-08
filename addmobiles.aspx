<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="addmobiles.aspx.vb" Inherits="_Default" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:panel ID="prod" runat="server"  Height="1610px" 
    BackColor="White">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table style="width: 55%; height: 1179px; margin-left: 78px">
            <tr>
                <td style="width: 163px">
                    <asp:Label ID="llblbookid" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Handset Id:"></asp:Label>
                </td>
                <td style="width: 284px">
                    <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 163px">
                    <asp:Label ID="lblbookname" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Handset name:"></asp:Label>
                </td>
                <td style="width: 284px">
                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 163px">
                    <asp:Label ID="lblauthor" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Series:"></asp:Label>
                </td>
                <td style="width: 284px">
                    <asp:TextBox ID="txtseries" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 163px">
                    <asp:Label ID="lblprice" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="weight:"></asp:Label>
                </td>
                <td style="width: 284px">
                    <asp:TextBox ID="txtweight" runat="server"></asp:TextBox>
                </td>
            </tr>
            
            <tr>
                <td style="width: 163px">
                    <asp:Label ID="lblpublisher" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Battery:"></asp:Label>
                </td>
                <td style="width: 284px">
                    <asp:TextBox ID="txtbattery" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 163px">
                    <asp:Label ID="lblpdate" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Talktime:"></asp:Label>
                </td>
                <td style="width: 284px">
                    <asp:TextBox ID="txttalktime" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 163px">
                    <asp:Label ID="lblisbn" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Standby time:"></asp:Label>
                </td>
                <td style="width: 284px">
                    <asp:TextBox ID="txtstandby" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 163px">
                    <asp:Label ID="lblnop" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Camera:"></asp:Label>
                </td>
                <td style="width: 284px">
                    <asp:TextBox ID="txtcamera" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="lbllang" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Video player:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:DropDownList ID="txtvideo" runat="server" Height="16px" Width="131px">
                        <asp:ListItem>yes</asp:ListItem>
                        <asp:ListItem>no</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
             <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Music player:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:DropDownList ID="txtmusic" runat="server" Height="16px" Width="131px">
                        <asp:ListItem>yes</asp:ListItem>
                        <asp:ListItem>no</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
             <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Games:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:DropDownList ID="txtgames" runat="server" Height="16px" Width="131px">
                        <asp:ListItem>yes</asp:ListItem>
                        <asp:ListItem>no</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
             <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="FM Radio:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:DropDownList ID="txtradio" runat="server" Height="16px" Width="131px">
                        <asp:ListItem>yes</asp:ListItem>
                        <asp:ListItem>no</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
             <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Memory:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:TextBox ID="txtmemory" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Bluetooth:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:DropDownList ID="txtbluetooth" runat="server" Height="16px" Width="131px">
                        <asp:ListItem>yes</asp:ListItem>
                        <asp:ListItem>no</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label11" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Infrared:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:DropDownList ID="txtinfrared" runat="server" Height="16px" Width="131px">
                        <asp:ListItem>yes</asp:ListItem>
                        <asp:ListItem>no</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label12" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="usb:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:DropDownList ID="txtusb" runat="server" Height="16px" Width="131px">
                        <asp:ListItem>yes</asp:ListItem>
                        <asp:ListItem>no</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label13" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="pysync:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:DropDownList ID="txtpcsync" runat="server" Height="16px" Width="131px">
                        <asp:ListItem>yes</asp:ListItem>
                        <asp:ListItem>no</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
             <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Misc:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:TextBox ID="txtmisc" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Calender:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:DropDownList ID="txtcalender" runat="server" Height="16px" Width="131px">
                        <asp:ListItem>yes</asp:ListItem>
                        <asp:ListItem>no</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
             <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Clock:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:DropDownList ID="txtclock" runat="server" Height="16px" Width="131px">
                        <asp:ListItem>yes</asp:ListItem>
                        <asp:ListItem>no</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
             <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Scheduler:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:DropDownList ID="txtschedul" runat="server" Height="16px" Width="131px">
                        <asp:ListItem>yes</asp:ListItem>
                        <asp:ListItem>no</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
             <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label10" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Worldtime:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:DropDownList ID="txtworld" runat="server" Height="16px" Width="131px">
                        <asp:ListItem>yes</asp:ListItem>
                        <asp:ListItem>no</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label14" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="currency Converter:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:DropDownList ID="txtcon" runat="server" Height="16px" Width="131px">
                        <asp:ListItem>yes</asp:ListItem>
                        <asp:ListItem>no</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 163px; height: 31px; margin-left: 120px;">
                    <asp:Label ID="Label15" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Calculator:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:DropDownList ID="txtcal" runat="server" Height="16px" Width="131px">
                        <asp:ListItem>yes</asp:ListItem>
                        <asp:ListItem>no</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label16" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Memobook:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:DropDownList ID="txtmemo" runat="server" Height="16px" Width="131px">
                        <asp:ListItem>yes</asp:ListItem>
                        <asp:ListItem>no</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label17" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Notes:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:DropDownList ID="txtnotes" runat="server" Height="16px" Width="131px">
                        <asp:ListItem>yes</asp:ListItem>
                        <asp:ListItem>no</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label18" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="To-Do-List:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:DropDownList ID="txttodo" runat="server" Height="16px" Width="131px">
                        <asp:ListItem>yes</asp:ListItem>
                        <asp:ListItem>no</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label19" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Organizer:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:DropDownList ID="txtorganizer" runat="server" Height="16px" Width="131px">
                        <asp:ListItem>yes</asp:ListItem>
                        <asp:ListItem>no</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label20" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Category:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:DropDownList ID="txtstop" runat="server" Height="16px" Width="128px">
                        <asp:ListItem>Nokia</asp:ListItem>
                        <asp:ListItem>Samsung</asp:ListItem>
                        <asp:ListItem>Sony</asp:ListItem>
                        <asp:ListItem>HTC</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label21" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Colors:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:TextBox ID="txtcolors" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label22" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Copies:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:TextBox ID="txtcopies" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label23" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Cost:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:TextBox ID="txtcost" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label24" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Total amount:"></asp:Label>
                </td>
                <td style="width: 284px; height: 31px">
                    <asp:TextBox ID="txtamt" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 163px; height: 31px">
                    <asp:Label ID="Label25" runat="server" Font-Bold="True" ForeColor="Black" 
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
          <asp:panel ID="gv" runat="server" ScrollBars="both" Height="300px" 
            Width="867px">
    <asp:GridView ID="Gvproduct" runat="server" BackColor="#CCCCCC" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
        CellSpacing="2" ForeColor="Black" PageSize="1" Height="286px" 
            style="margin-right: 1px" Width="355px">
        <RowStyle BackColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
        <FooterStyle BackColor="#CCCCCC" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    </asp:panel>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:panel>
</asp:Content>

