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
    .style2
    {
        width: 100%;
        height: 100%;
        float: left;
    }
    .style6
    {
        width: 250px;
        height: 250px;
    }
</style>
<body style="text-align: center">
<p>
<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
    <br />
</p>
<div>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>

        <br />
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="View1" runat="server">
                <table align="center" class="style2" dir="ltr">
                    <tr>
                        <td width="200">
                            &nbsp;</td>
                        <td width="180">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td width="200">
                            &nbsp;</td>
                        <td width="180">
                            <asp:Label ID="lblFullN" runat="server" Font-Names="MV Boli" 
                                Font-Size="XX-Large" Text="FullName" Width="159px"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtFullN" runat="server" Font-Size="X-Large" Height="35px" 
                                Width="250px"></asp:TextBox>
                        </td>
                        <td rowspan="3" style="text-align: left">
                            <asp:Image ID="img" runat="server" Height="141px" ImageAlign="Top" 
                                ImageUrl="~/IMG/Login.jpg" />
                        </td>
                    </tr>
                    <tr>
                        <td width="200">
                            &nbsp;</td>
                        <td width="180">
                            <asp:Label ID="lblPass" runat="server" Font-Names="MV Boli" 
                                Font-Size="XX-Large" Text="Password" Width="159px"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtPass" runat="server" Font-Size="X-Large" Height="35px" 
                               Width="250px" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td width="200">
                            &nbsp;</td>
                        <td width="180">
                            &nbsp;</td>
                        <td>
                            <asp:CheckBox ID="chkremember" runat="server" Text="Remember Me" />
                        </td>
                    </tr>
                    <tr>
                        <td width="200">
                            &nbsp;</td>
                        <td style="text-align: center" width="180">
                            <asp:Label ID="lblmsg" runat="server" Font-Names="Impact" Font-Size="X-Large" 
                                ForeColor="Red"></asp:Label>
                        </td>
                        <td style="text-align: center">
                            <asp:Button ID="Button1" runat="server" BorderColor="White" Font-Bold="True" 
                                Font-Names="Gabriola" Font-Size="XX-Large" ForeColor="#009933" Height="75px" 
                                OnClick="Button1_Click" Text="Log" Width="178px" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="View2" runat="server">
                <table align="center" class="style6">
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td colspan="2" rowspan="2">
                            <asp:ImageButton ID="ImageButton1" runat="server" 
                                ImageUrl="~/IMG/wellcome.gif" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:HyperLink ID="HyperLink2" runat="server" Font-Size="Large" 
                                NavigateUrl="~/Page/Client.aspx" Visible="False" Enabled="False">---&gt; See my home</asp:HyperLink>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td rowspan="3">
                            <asp:Label ID="Label2" runat="server" Font-Overline="False" Font-Size="Large" 
                                Font-Underline="True" Text="What is Your chooice?"></asp:Label>
                        </td>
                        <td>
                            <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Large" 
                                onclick="LinkButton1_Click">---&gt; See my home</asp:LinkButton>
                            <asp:Label ID="Label3" runat="server" Font-Size="Small" ForeColor="White" 
                                Text="( profile )" Enabled="False" Visible="False"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:HyperLink ID="HyperLink3" runat="server" Font-Size="Large">---&gt; Search the Products</asp:HyperLink>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                                Text="Sign Out" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </asp:View>
        </asp:MultiView>
        
                <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                    <ProgressTemplate>
                        <asp:Image ID="Image1" runat="server" Height="160px" 
                            ImageUrl="~/IMG/Loading.gif" Width="212px" />
                        <br />
                        <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="Loading...!"></asp:Label>
                    </ProgressTemplate>
        </asp:UpdateProgress>
    </ContentTemplate>
</asp:UpdatePanel>
</div>
<p>
    <br />
</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>



