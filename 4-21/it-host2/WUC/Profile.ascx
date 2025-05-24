<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Profile.ascx.cs" Inherits="WUC_WebUserControl2" %>
<style type="text/css">

    .style1 {
        width: 100%;
    }

    .auto-style6 {
        width: 331px;
    }
    
    .style2 {
        width: 245px;
    }

    .auto-style9 {
        width: 251px;
    }
    .auto-style7 {
        table-layout: fixed;
        width: 331px;
        height: 24px;
    }
    
    .style14 {
        height: 24px;
    }

    .style15 {
        width: 245px;
        height: 24px;
    }

    .auto-style10 {
        width: 251px;
        height: 24px;
    }
    .auto-style8 {
        width: 331px;
        height: 56px;
    }
    
    .style3 {
        height: 56px;
    }

    .style4 {
        width: 245px;
        height: 56px;
    }

    .auto-style11 {
        height: 56px;
        width: 251px;
    }
    .style16
    {
        width: 331px;
        height: 34px;
    }
    .style17
    {
        height: 34px;
    }
    .style18
    {
        width: 245px;
        height: 34px;
    }
    .style19
    {
        width: 251px;
        height: 34px;
    }
    .style20
    {
        width: 156px;
    }
    .style21
    {
        height: 34px;
        width: 156px;
    }
    .style22
    {
        height: 24px;
        width: 156px;
    }
    .style23
    {
        height: 56px;
        width: 156px;
    }
    .style24
    {
        width: 331px;
        height: 35px;
    }
    .style25
    {
        height: 35px;
        width: 156px;
    }
    .style26
    {
        width: 245px;
        height: 35px;
    }
    .style27
    {
        width: 251px;
        height: 35px;
    }
    .style28
    {
        height: 35px;
    }
</style>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
<asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
    <asp:View ID="View1" runat="server">
        <table class="style1" style="text-align: center;">
            <tr>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="style20">
                    &nbsp;</td>
                <td colspan="2">
                    <asp:Label ID="lblMsg" runat="server" Font-Size="XX-Large" ForeColor="Red" 
                        Text="Label" Visible="False"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style16">
                    <asp:Label ID="lblname" runat="server" Font-Names="Segoe Print" 
                        Font-Size="Large" height="28px" Text="Full Name " width="121px"></asp:Label>
                </td>
                <td class="style16">
                    <asp:TextBox ID="txtname" runat="server" Enabled="False" Width="160px"></asp:TextBox>
                </td>
                <td class="style21">
                    &nbsp;</td>
                <td class="style18" style="line-height: inherit; vertical-align: inherit">
                    &nbsp;</td>
                <td class="style19">
                </td>
                <td class="style17">
                </td>
            </tr>
            <tr>
                <td class="auto-style6" height="35">
                    <asp:Label ID="lblnationalid" runat="server" Font-Names="Segoe Print" 
                        Font-Size="Large" height="28px" Text="National ID"></asp:Label>
                </td>
                <td class="auto-style6" height="35">
                    <asp:TextBox ID="txtni" runat="server" Enabled="False" Width="160px"></asp:TextBox>
                </td>
                <td class="style20" height="35">
                    &nbsp;</td>
                <td class="style2" height="35" 
                    style="line-height: inherit; vertical-align: inherit">
                    &nbsp;</td>
                <td class="auto-style9" height="35">
                    &nbsp;</td>
                <td height="35" style="line-height: inherit; vertical-align: inherit">
                    &nbsp;</td>
            </tr>
            <tr>
                <td aria-multiline="True" class="auto-style7">
                    <asp:Label ID="lblpassword" runat="server" Font-Names="Segoe Print" 
                        Font-Size="Large" height="28px" Text="Password" width="76px"></asp:Label>
                </td>
                <td aria-multiline="True" class="auto-style7">
                    <asp:TextBox ID="txtpass" runat="server" Width="160px"></asp:TextBox>
                </td>
                <td class="style22">
                    <asp:HyperLink ID="Hypass" runat="server">Change</asp:HyperLink>
                </td>
                <td class="style15" style="line-height: inherit; vertical-align: inherit">
                    <asp:Button ID="btnpass" runat="server" Text="Cancel" Visible="False" 
                        Width="63px" />
                </td>
                <td class="auto-style10">
                </td>
                <td class="style14">
                </td>
            </tr>
            <tr>
                <td class="auto-style6" height="35">
                    <asp:Label ID="lblemail" runat="server" Font-Names="Segoe Print" 
                        Font-Size="Large" height="28px" Text="E-mail" width="76px"></asp:Label>
                </td>
                <td class="auto-style6" height="35">
                    <asp:TextBox ID="txtemail" runat="server" Width="160px"></asp:TextBox>
                </td>
                <td class="style20" height="35">
                    <asp:HyperLink ID="mail" runat="server">Change</asp:HyperLink>
                </td>
                <td class="style2" height="35" 
                    style="line-height: inherit; vertical-align: inherit; font-weight: 700;">
                    <asp:Button ID="btnemail" runat="server" Text="Cancel" Visible="False" 
                        Width="63px" />
                </td>
                <td class="auto-style9" height="35">
                    &nbsp;</td>
                <td height="35">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6" height="35">
                    <asp:Label ID="lbladdress" runat="server" Font-Names="Segoe Print" 
                        Font-Size="Large" height="28px" Text="Address" width="76px"></asp:Label>
                </td>
                <td class="auto-style6" height="35">
                    <asp:TextBox ID="txtaddress" runat="server" Width="160px"></asp:TextBox>
                </td>
                <td class="style20" height="35">
                    <asp:HyperLink ID="Hyaddress" runat="server">Change</asp:HyperLink>
                </td>
                <td class="style2" height="35" 
                    style="line-height: inherit; vertical-align: inherit">
                    <asp:Button ID="btnaddress" runat="server" Text="Cancel" Visible="False" 
                        Width="63px" />
                </td>
                <td class="auto-style9" height="35">
                    &nbsp;</td>
                <td height="35">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6" height="35">
                    <asp:Label ID="lblphone" runat="server" Font-Names="Segoe Print" 
                        Font-Size="Large" height="28px" Text="Phone" width="76px"></asp:Label>
                </td>
                <td class="auto-style6" height="35">
                    <asp:TextBox ID="txtphone" runat="server" Width="160px"></asp:TextBox>
                </td>
                <td class="style20" height="35">
                    <asp:HyperLink ID="Hyphone" runat="server">Change</asp:HyperLink>
                </td>
                <td class="style2" height="35" 
                    style="line-height: inherit; vertical-align: inherit">
                    <asp:Button ID="btnphone" runat="server" Text="Cancel" Visible="False" 
                        Width="63px" />
                </td>
                <td class="auto-style9" height="35">
                    &nbsp;</td>
                <td height="35">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6" height="35">
                    <asp:Label ID="lblsecqus" runat="server" Font-Names="Segoe Print" 
                        Font-Size="Large" height="28px" Text="Security Qustion" width="169px"></asp:Label>
                </td>
                <td class="auto-style6" height="35">
                    <asp:TextBox ID="txtsecqes" runat="server" Width="160px"></asp:TextBox>
                </td>
                <td class="style20" height="35">
                    <asp:HyperLink ID="Hysecqes" runat="server">Change</asp:HyperLink>
                </td>
                <td class="style2" height="35" 
                    style="line-height: inherit; vertical-align: inherit">
                    <asp:Button ID="btnsecqes" runat="server" Text="Cancel" Visible="False" 
                        Width="63px" />
                </td>
                <td class="auto-style9" height="35">
                    &nbsp;</td>
                <td height="35">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style24">
                    <asp:Label ID="lblsecans" runat="server" Font-Names="Segoe Print" 
                        Font-Size="Large" height="28px" Text="The Anwser" width="121px"></asp:Label>
                </td>
                <td class="style24">
                    <asp:TextBox ID="TextBox1" runat="server" Enabled="False" Width="160px"></asp:TextBox>
                </td>
                <td class="style25">
                    <asp:HyperLink ID="Hyanswer" runat="server">Change</asp:HyperLink>
                </td>
                <td class="style26" style="line-height: inherit; vertical-align: inherit">
                    <asp:Button ID="btnanswer" runat="server" Text="Cancel" Visible="False" 
                        Width="63px" />
                </td>
                <td class="style27">
                </td>
                <td class="style28">
                </td>
            </tr>
            <tr>
                <td class="style24">
                    &nbsp;</td>
                <td class="style24">
                    &nbsp;</td>
                <td class="style25">
                    &nbsp;</td>
                <td class="style26" style="line-height: inherit; vertical-align: inherit">
                    &nbsp;</td>
                <td class="style27">
                    &nbsp;</td>
                <td class="style28">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">
                </td>
                <td class="auto-style8">
                    <asp:Button ID="btnreturn" runat="server" height="40px" 
                        OnClick="btnempty_Click" Text="Return" width="90px" />
                </td>
                <td class="style23">
                    <asp:Button ID="btnsave" runat="server" height="40px" OnClick="btnempty_Click" 
                        Text="Save" width="90px" />
                </td>
                <td class="style4">
                    &nbsp;</td>
                <td class="auto-style11">
                    &nbsp;</td>
                <td class="style3">
                </td>
            </tr>
            <tr>
                <td class="auto-style6" height="50">
                    &nbsp;</td>
                <td class="auto-style6" height="50">
                    &nbsp;</td>
                <td class="style20">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td class="auto-style9">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </asp:View>
    <asp:View ID="View2" runat="server">
    </asp:View>
    <asp:View ID="View3" runat="server">
    </asp:View>
</asp:MultiView>

    
