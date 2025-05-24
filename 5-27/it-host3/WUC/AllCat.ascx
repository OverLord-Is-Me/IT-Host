<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AllCat.ascx.cs" Inherits="WUC_AllCat" %>
<style type="text/css">
    .style1
    {
        width: 100%;
        height: 100%;
    }
    .style2
    {
        text-align: center;
    }
    .style3
    {
        width: 222px;
    }
</style>

<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
    <center >
<asp:DataList ID="DataList1" runat="server" CellPadding="40" 
    DataKeyField="CatId" DataSourceID="SqlDataSource1" RepeatColumns="2" 
            Font-Bold="False" Font-Italic="False" Font-Overline="False" 
            Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center">
    <ItemTemplate>
        <table align="center" class="style1">
            <tr>
                <td class="style2">
                    <asp:Label ID="Label1" runat="server" Font-Names="Algerian" Font-Size="XX-Large" 
                        Text='<%# Eval("CatName") %>'></asp:Label>
                </td>
            </tr>
            <tr>
            <center >
                <td class="style2">



                <a href="ProdOfCat.aspx?CatId=<%# Eval("CatId") %>" >
                    <asp:Image ID="Image1" runat="server" Height="169px" 
                        ImageUrl='<%# "..//Cat_img//"+Eval("CatId")+".jpg" %>' Width="217px" />
                        </a>
                </td>
                </center>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label5" runat="server" Height="69px" Width="221px" 
                        Font-Names="Algerian" Font-Size="Large" Text='<%# Eval("CatDescription") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
            </tr>
        </table>
        <br />
    </ItemTemplate>
</asp:DataList>
</center>
 