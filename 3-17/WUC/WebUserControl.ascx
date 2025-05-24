<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControl.ascx.cs" Inherits="WUC_WebUserControl" %>
<style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        width: 277px;
    }
    .style3
    {
        width: 363px;
    }
    .style4
    {
        width: 277px;
        color: #3399FF;
        font-size: xx-large;
        font-family: FangSong;
    }
    .style5
    {
        width: 363px;
        color: #3399FF;
        font-size: xx-large;
        font-family: FangSong;
    }
    .style6
    {
        width: 297px;
        color: #3399FF;
        font-size: xx-large;
        font-family: FangSong;
    }
    .style7
    {
        width: 297px;
    }
    .style8
    {
        text-align: center;
    }
    .style9
    {
        text-align: center;
        table-layout: auto;
        height: 44px;
    }
</style>

<p>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
</p>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="View1" runat="server">
                <table align="center" class="style1" 
                    style="text-align: center; table-layout: auto">
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style5">
                            &nbsp;</td>
                        <td class="style6">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style4">
                            Driver Manager</td>
                        <td class="style5">
                            Shop&amp;Store Manager</td>
                        <td class="style6">
                            Road&amp;Track Manager</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style5">
                            &nbsp;</td>
                        <td class="style6">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            <asp:ImageButton ID="ImageButton4" runat="server" Height="150px" 
                                ImageUrl="~/IMG/Login.jpg" onclick="ImageButton1_Click" Width="150px" />
                        </td>
                        <td class="style3">
                            <asp:ImageButton ID="ImageButton5" runat="server" Height="150px" 
                                ImageUrl="~/IMG/Login2.jpg" onclick="ImageButton2_Click" Width="150px" />
                        </td>
                        <td class="style7">
                            <asp:ImageButton ID="ImageButton6" runat="server" Height="150px" 
                                ImageUrl="~/IMG/Login3.jpg" onclick="ImageButton3_Click" Width="150px" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            <asp:Label ID="Label4" runat="server" Text="Nunc at viverra risus. "></asp:Label>
                        </td>
                        <td class="style3">
                            <asp:Label ID="Label5" runat="server" Text="Nunc at viverra risus. "></asp:Label>
                        </td>
                        <td class="style7">
                            <asp:Label ID="Label6" runat="server" Text="Nunc at viverra risus. "></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style2">
                            &nbsp;</td>
                        <td class="style3">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="View2" runat="server">
                <p>
                </p>
                <table class="style1">
                    <tr>
                        <td class="style9" style="text-align: center; ">
                        </td>
                        <td class="style9" style="text-align: center; ">
                        </td>
                        <td class="style9" style="text-align: center; ">
                        </td>
                        <td class="style9" style="text-align: center; ">
                        </td>
                    </tr>
                    <tr>
                        <td class="style8" style="text-align: center; table-layout: auto">
                            &nbsp;</td>
                        <td class="style8" style="text-align: center; table-layout: auto">
                            <asp:Label ID="UserNamelbl" runat="server" Font-Size="Large" ForeColor="Red" 
                                Text="UserName"></asp:Label>
                        </td>
                        <td class="style8" style="text-align: center; table-layout: auto">
                            <asp:TextBox ID="Usernametxt" runat="server" Height="25px" Width="213px"></asp:TextBox>
                        </td>
                        <td class="style8" style="text-align: center; table-layout: auto">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style8" rowspan="2" style="text-align: center; table-layout: auto">
                            <asp:Image ID="Image1" runat="server" Height="89px" ImageUrl="~/IMG/Login.jpg" 
                                Width="94px" />
                        </td>
                        <td class="style8" style="text-align: center; table-layout: auto">
                            <asp:Label ID="Passwordlbl" runat="server" Font-Size="Large" ForeColor="Red" 
                                Text="Password"></asp:Label>
                        </td>
                        <td class="style8" style="text-align: center; table-layout: auto">
                            <asp:TextBox ID="Passwordtxt" runat="server" Height="25px" Width="213px"></asp:TextBox>
                        </td>
                        <td class="style8" style="text-align: center; table-layout: auto">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style8" style="text-align: center; table-layout: auto">
                            &nbsp;</td>
                        <td class="style8" style="text-align: center; table-layout: auto">
                            <asp:Button ID="Logbtn" runat="server" BackColor="#009933" 
                                Font-Names="Comic Sans MS" Font-Size="Medium" ForeColor="White" Height="38px" 
                                Text="LogIn" Width="123px" />
                        </td>
                        <td class="style8" style="text-align: center; table-layout: auto">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style8" style="text-align: center; table-layout: auto">
                            <asp:Button ID="Button1" runat="server" BackColor="Black" Font-Names="MV Boli" 
                                ForeColor="#FF6666" onclick="Button1_Click" Text="BackToAdminChoice" />
                        </td>
                        <td class="style8" style="text-align: center; table-layout: auto">
                            <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="style8" style="text-align: center; table-layout: auto">
                            &nbsp;</td>
                        <td class="style8" style="text-align: center; table-layout: auto">
                            &nbsp;</td>
                    </tr>
                </table>
                <br />
                <br />
                <br />
            </asp:View>
            <asp:View ID="View3" runat="server">
                <p>
                </p>
                <table class="style1">
                    <tr>
                        <td class="style9" style="text-align: center; ">
                        </td>
                        <td class="style9" style="text-align: center; ">
                        </td>
                        <td class="style9" style="text-align: center; ">
                        </td>
                        <td class="style9" style="text-align: center; ">
                        </td>
                    </tr>
                    <tr>
                        <td class="style8" style="text-align: center; table-layout: auto">
                            &nbsp;</td>
                        <td class="style8" style="text-align: center; table-layout: auto">
                            <asp:Label ID="Label1" runat="server" Font-Size="Large" ForeColor="Red" 
                                Text="UserName"></asp:Label>
                        </td>
                        <td class="style8" style="text-align: center; table-layout: auto">
                            <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="213px"></asp:TextBox>
                        </td>
                        <td class="style8" style="text-align: center; table-layout: auto">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style8" rowspan="2" style="text-align: center; table-layout: auto">
                            <asp:Image ID="Image2" runat="server" Height="89px" ImageUrl="~/IMG/Login2.jpg" 
                                Width="94px" />
                        </td>
                        <td class="style8" style="text-align: center; table-layout: auto">
                            <asp:Label ID="Label2" runat="server" Font-Size="Large" ForeColor="Red" 
                                Text="Password"></asp:Label>
                        </td>
                        <td class="style8" style="text-align: center; table-layout: auto">
                            <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="213px"></asp:TextBox>
                        </td>
                        <td class="style8" style="text-align: center; table-layout: auto">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style8" style="text-align: center; table-layout: auto">
                            &nbsp;</td>
                        <td class="style8" style="text-align: center; table-layout: auto">
                            <asp:Button ID="Button2" runat="server" BackColor="#009933" 
                                Font-Names="Comic Sans MS" Font-Size="Medium" ForeColor="White" Height="38px" 
                                Text="LogIn" Width="123px" />
                        </td>
                        <td class="style8" style="text-align: center; table-layout: auto">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style8" style="text-align: center; table-layout: auto">
                            <asp:Button ID="Button3" runat="server" BackColor="Black" Font-Names="MV Boli" 
                                ForeColor="#FF6666" onclick="Button1_Click" Text="BackToAdminChoice" />
                        </td>
                        <td class="style8" style="text-align: center; table-layout: auto">
                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="style8" style="text-align: center; table-layout: auto">
                            &nbsp;</td>
                        <td class="style8" style="text-align: center; table-layout: auto">
                            &nbsp;</td>
                    </tr>
                </table>
                <br />
                <br />
                <br />
            </asp:View>
            <asp:View ID="View4" runat="server">
                <p>
                </p>
                <table class="style1">
                    <tr>
                        <td class="style9" style="text-align: center; ">
                        </td>
                        <td class="style9" style="text-align: center; ">
                        </td>
                        <td class="style9" style="text-align: center; ">
                        </td>
                        <td class="style9" style="text-align: center; ">
                        </td>
                    </tr>
                    <tr>
                        <td class="style8" style="text-align: center; table-layout: auto">
                            &nbsp;</td>
                        <td class="style8" style="text-align: center; table-layout: auto">
                            <asp:Label ID="Label7" runat="server" Font-Size="Large" ForeColor="Red" 
                                Text="UserName"></asp:Label>
                        </td>
                        <td class="style8" style="text-align: center; table-layout: auto">
                            <asp:TextBox ID="TextBox3" runat="server" Height="25px" Width="213px"></asp:TextBox>
                        </td>
                        <td class="style8" style="text-align: center; table-layout: auto">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style8" rowspan="2" style="text-align: center; table-layout: auto">
                            <asp:Image ID="Image3" runat="server" Height="89px" ImageUrl="~/IMG/Login3.jpg" 
                                Width="94px" />
                        </td>
                        <td class="style8" style="text-align: center; table-layout: auto">
                            <asp:Label ID="Label8" runat="server" Font-Size="Large" ForeColor="Red" 
                                Text="Password"></asp:Label>
                        </td>
                        <td class="style8" style="text-align: center; table-layout: auto">
                            <asp:TextBox ID="TextBox4" runat="server" Height="25px" Width="213px"></asp:TextBox>
                        </td>
                        <td class="style8" style="text-align: center; table-layout: auto">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style8" style="text-align: center; table-layout: auto">
                            &nbsp;</td>
                        <td class="style8" style="text-align: center; table-layout: auto">
                            <asp:Button ID="Button4" runat="server" BackColor="#009933" 
                                Font-Names="Comic Sans MS" Font-Size="Medium" ForeColor="White" Height="38px" 
                                Text="LogIn" Width="123px" />
                        </td>
                        <td class="style8" style="text-align: center; table-layout: auto">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style8" style="text-align: center; table-layout: auto">
                            <asp:Button ID="Button5" runat="server" BackColor="Black" Font-Names="MV Boli" 
                                ForeColor="#FF6666" onclick="Button1_Click" Text="BackToAdminChoice" />
                        </td>
                        <td class="style8" style="text-align: center; table-layout: auto">
                            <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="style8" style="text-align: center; table-layout: auto">
                            &nbsp;</td>
                        <td class="style8" style="text-align: center; table-layout: auto">
                            &nbsp;</td>
                    </tr>
                </table>
                <br />
                <br />
                <br />
            </asp:View>
        </asp:MultiView>
<br />
<br />
    </ContentTemplate>
</asp:UpdatePanel>
<p>
    &nbsp;</p>

