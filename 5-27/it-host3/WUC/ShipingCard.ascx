<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ShipingCard.ascx.cs" Inherits="WUC_ShipingCard" %>
<style type="text/css">
    .style1
    {
        color: #003300;
        font-size: xx-large;
    }
    .style2
    {
        height: 23px;
    }
    .style3
    {
        height: 612px;
    }
</style>

<ul>
    <li><span class="style1">ShipingCard</span></li>
</ul>
<table align="center">
    <tr>
        <td class="style3">
            <ul>
                <li>
                    <asp:GridView ID="gridcart" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
                CellPadding="3" ForeColor="Black" GridLines="Vertical" 
                onrowdeleting="gridcart_RowDeleting" 
                onselectedindexchanged="gridcart_SelectedIndexChanged" style="text-align: left" 
                        onrowediting="gridcart_RowEditing">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:BoundField DataField="CatId" HeaderText="    Category       " 
                                ReadOnly="True">
                            </asp:BoundField>
                            <asp:BoundField DataField="ProId" ReadOnly="True" HeaderText="    id" 
                                HtmlEncode="False"></asp:BoundField>
                            <asp:BoundField DataField="ProName" HeaderText="   Product  " ReadOnly="True">
                            </asp:BoundField>
                            <asp:BoundField DataField="ProPrice" HeaderText="  Price  " ReadOnly="True" />
                            <asp:BoundField DataField="Avqty" HeaderText="  Quntty  " />
                            <asp:BoundField DataField="WritingData" 
                        ReadOnly="True" HeaderText="  SupTotal  " />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Image ID="Image2" runat="server" Height="65px" Width="83px" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField HeaderText="Category" ShowDeleteButton="True" 
                        ShowEditButton="True" ShowHeader="True" />
                        </Columns>
                        <EmptyDataTemplate>
                    ShopingCart is Empty
                        </EmptyDataTemplate>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="Gray" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                </li>
            </ul>
        </td>
    </tr>
    <tr>
        <td bgcolor="#999999" class="style2">
            <asp:Label ID="lbltotal" runat="server" ForeColor="#FF3300" Text="TotalPrice"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
    </tr>
</table>


