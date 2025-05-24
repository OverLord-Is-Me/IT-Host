<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Log.ascx.cs" Inherits="WUC_Log" %>
<style type="text/css">
    .style1
    {
        width: 32%;
    }
    .style2
    {
        width: 113px;
    }
</style>

<table align="right" class="style1">
    <tr>
        <td class="style2" style="text-align: center">
            <asp:Label ID="Label1" runat="server" Font-Names="Edwardian Script ITC" 
                Font-Size="Medium" ForeColor="White" Text="User Name" Width="100px"></asp:Label>
        </td>
        <td style="text-align: center">
            <asp:TextBox ID="nametxt" runat="server" Font-Size="Small" Height="16px" 
                ontextchanged="TextBox1_TextChanged"></asp:TextBox>
        </td>
        <td colspan="1" dir="rtl" rowspan="4" 
            style="text-align: right; vertical-align: middle;" width="80">
            <asp:Button ID="Button1" runat="server" Font-Size="X-Small" Height="27px" 
                onclick="Button1_Click" Text="Login" Width="50px" />
        </td>
    </tr>
    <tr>
        <td class="style2" style="text-align: center">
            <asp:Label ID="Label2" runat="server" Font-Names="Edwardian Script ITC" 
                Font-Size="Medium" ForeColor="White" Text="Password" Width="100px"></asp:Label>
        </td>
        <td style="text-align: center">
            <asp:TextBox ID="passtxt" runat="server" Font-Size="Small" Height="16px" 
                ontextchanged="TextBox2_TextChanged" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
</table>

