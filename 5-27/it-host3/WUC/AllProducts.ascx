<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AllProducts.ascx.cs" Inherits="WUC_AllProducts" %>
<style type="text/css">
    .style1
    {
        font-family: Algerian;
    }
    .style2
    {
        text-align: center;
    }
    </style>

<h2 class="style1">
    All Products :</h2>

<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    SelectCommand=""> </asp:SqlDataSource>
    <center >
<asp:DataList ID="DataList1" runat="server" CellPadding="40" 
    DataKeyField="CatId" DataSourceID="SqlDataSource1" RepeatColumns="4" 
            Font-Bold="False" Font-Italic="False" Font-Overline="False" 
            Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center">
    <ItemTemplate>
        <table align="center" class="style1">
            <tr>
                <td class="style2" colspan="2">
                    <asp:Label ID="Label1" runat="server" Font-Names="Algerian" Font-Size="XX-Large" 
                        Text='<%# Eval("ProName") %>'></asp:Label>
                </td>
            </tr>
            <tr>
            <center >
                <td class="style2" colspan="2">




                <a href="ProDetails.aspx?ProId=<%# Eval("ProId") %> & CatId=<%# Eval("CatId") %>" >
                    <asp:Image ID="Image1" runat="server" Height="169px" 
                        ImageUrl='<%# "..//Prod_img//"+Eval("ProId")+".jpg" %>' Width="217px" />
                        </a>
             
             
             
                </td>


                </center>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label6" runat="server" Font-Size="Large" 
                        Text='<%# Eval("ProPrice") %>'></asp:Label>
                </td>
                <td class="style2">
                    <asp:Label ID="Label7" runat="server" Font-Size="Small" 
                        Text='<%# Eval("Avqty") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="2">
                    <asp:Label ID="Label8" runat="server" Font-Size="Large" 
                        Text='<%# Eval("WritingData") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="2">
                    <asp:Label ID="Label5" runat="server" Font-Names="Algerian" Font-Size="Large" 
                        Height="69px" Text='<%# Eval("ProDetails") %>' Width="221px"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
    </ItemTemplate>
</asp:DataList>
</center>
 
