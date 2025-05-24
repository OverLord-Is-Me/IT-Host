<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Login.ascx.cs" Inherits="WUC_Login" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
        position: relative;
        z-index: auto;
        left: 11px;
        top: 9px;
        height: 311px;
        overflow: visible;
        table-layout: fixed;
    }
    .auto-style2 {
        width: 236px;
    }
    .auto-style3 {
        width: 407px;
    }
    .auto-style4 {
        width: 229px;
    }
</style>
<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <table align="center" class="auto-style1" style="vertical-align: middle; text-align: center;">
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblmsg" runat="server" Font-Names="Impact" Font-Size="X-Large" ForeColor="Red"></asp:Label>
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4" rowspan="3">
                    <asp:Image ID="img" runat="server" Height="141px" ImageAlign="Top" ImageUrl="~/IMG/Login.jpg" Visible="False" />
                </td>
                <td class="auto-style2">
                    <asp:Label ID="lblFullN" runat="server" Font-Names="MV Boli" Font-Size="XX-Large" Text="FullName" Width="159px"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtFullN" runat="server" Font-Size="X-Large" Height="35px" Width="250px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblPass" runat="server" Font-Names="MV Boli" Font-Size="XX-Large" Text="Password" Width="159px"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtPass" runat="server" Font-Size="X-Large" Height="35px" TextMode="Password" Width="250px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" BorderColor="White" Font-Bold="True" Font-Names="Gabriola" Font-Size="XX-Large" ForeColor="#009933" Height="75px" OnClick="Button1_Click" Text="Log" Width="178px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </ContentTemplate>
</asp:UpdatePanel>
<p>
    &nbsp;</p>


