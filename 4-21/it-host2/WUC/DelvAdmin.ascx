<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DelvAdmin.ascx.cs" Inherits="WUC_DelvAdmin" %>
<style type="text/css">

    .style30
    {
        width: 59%;
    }
    .style31
    {
        text-align: center;
    }
    </style>
        <table align="center" class="style30">
            <tr>
                <td class="style31" style="text-align: center">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style31">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="100px" 
                        ImageUrl="~/IMG/profile.png" Width="200px" onclick="ImageButton1_Click" />
                </td>
                <td style="text-align: center">
                    <asp:ImageButton ID="ImageButton5" runat="server" Height="100px" 
                        ImageUrl="~/IMG/Orders.jpg" Width="200px" />
                </td>
            </tr>
            <tr>
                <td class="style31">
                    <asp:Label ID="Label1" runat="server" Font-Names="Edwardian Script ITC" 
                        Font-Size="XX-Large" ForeColor="#0099FF" Text="Profile"></asp:Label>
                </td>
                <td style="text-align: center">
                    <asp:Label ID="Label3" runat="server" Font-Names="Edwardian Script ITC" 
                        Font-Size="XX-Large" ForeColor="#0099FF" Text="Orders"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style31">
                    &nbsp;</td>
                <td style="text-align: center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style31" colspan="2">
                    <asp:ImageButton ID="ImageButton6" runat="server" Height="100px" 
                        ImageUrl="~/IMG/truck-delivery-driver.png" Width="200px" />
                </td>
            </tr>
            <tr>
                <td class="style31" colspan="2">
                    <asp:Label ID="Label4" runat="server" Font-Names="Edwardian Script ITC" 
                        Font-Size="XX-Large" ForeColor="#0099FF" Text="Drivers"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style31">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
</table>

    

    

