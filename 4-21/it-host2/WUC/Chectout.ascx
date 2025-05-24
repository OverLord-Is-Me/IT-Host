<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Chectout.ascx.cs" Inherits="WUC_Chectout" %>
<%@ Register src="Login.ascx" tagname="Login" tagprefix="uc1" %>
<style type="text/css">
    .style1
    {}
    .style18
    {
        width: 133px;
        height: 26px;
    }
    .style19
    {
        height: 26px;
    }
    .style3
    {
        width: 133px;
        height: 29px;
    }
    .style4
    {
        height: 29px;
    }
    .style2
    {
        width: 133px;
    }
    .style5
    {
        height: 20px;
    }
    .style15
    {
        height: 20px;
        width: 11px;
    }
    .style6
    {
        width: 5px;
    }
    .style12
    {
        width: 126px;
    }
    .style16
    {
        width: 11px;
    }
    .style8
    {
        width: 2px;
        height: 20px;
    }
    .style11
    {
        height: 20px;
    }
    .style13
    {
        width: 5px;
        height: 26px;
    }
    .style14
    {
        width: 126px;
        height: 26px;
    }
    .style17
    {
        width: 11px;
        height: 26px;
    }
    </style>

<body>

dfgdfgdfgdfgdfgdfgfdg<p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
&nbsp;<table align="center">
    <tr>
        <td>
            <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="1" BackColor="#E6E2D8" 
                BorderColor="#999999" BorderWidth="1px" Font-Names="Verdana" Font-Size="1.2em" 
                Height="240px" Width="620px" 
                onactivestepchanged="Wizard1_ActiveStepChanged" 
                onfinishbuttonclick="Wizard1_FinishButtonClick" BorderStyle="Solid">
                <HeaderStyle BackColor="#666666" BorderColor="#E6E2D8" BorderStyle="Solid" 
                    BorderWidth="2px" Font-Bold="True" Font-Size="1.2em" ForeColor="White" 
                    HorizontalAlign="Center" />
                <NavigationButtonStyle BackColor="White" BorderColor="#C5BBAF" 
                    BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="1.2em" 
                    ForeColor="#1C5E55" />
                <SideBarButtonStyle 
                    ForeColor="White" />
                <SideBarStyle BackColor="#1C5E55" Font-Size="1.2em" VerticalAlign="Top" />
                <StepStyle BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderStyle="Solid" 
                    BorderWidth="2px" />
                <WizardSteps>
                    <asp:WizardStep runat="server" StepType="Start" title="Login">
                        <uc1:Login ID="Login1" runat="server" />
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" title="DeliveryAddress">
                        <table align="center">
                            <tr>
                                <td class="style1" colspan="2">
                                    <asp:Label ID="Label17" runat="server" Font-Names="Segoe UI Semibold" 
                                        Font-Size="X-Large" ForeColor="#000066" Text="Delivery Address"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style18">
                                    <asp:Label ID="Label18" runat="server" Text="name"></asp:Label>
                                </td>
                                <td class="style19">
                                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style3">
                                    <asp:Label ID="Label19" runat="server" Text="City"></asp:Label>
                                </td>
                                <td class="style4">
                                    <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    <asp:Label ID="Label20" runat="server" Text="Area"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtarea" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    <asp:Label ID="Label21" runat="server" Text="Address"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtaddress" runat="server"  
                                        Width="225px" Height="23px"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" Title="Confermation">
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" Title="Payment">
                        <table align="center">
                            <tr>
                                <td class="style5" colspan="2">
                                    <asp:Label ID="Label7" runat="server" Font-Names="Segoe UI Semibold" 
                                        Font-Size="X-Large" ForeColor="#000066" Text="Payment"></asp:Label>
                                </td>
                                <td class="style15">
                                </td>
                                <td class="style15">
                                    <asp:Image ID="Image1" runat="server" Height="44px" ImageUrl="~/IMG/cat.jpg" 
                                        Width="73px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style6">
                                    <asp:Label ID="Label8" runat="server" Text="CartType"></asp:Label>
                                </td>
                                <td class="style12">
                                    <asp:DropDownList ID="ddl" runat="server">
                                        <asp:ListItem>VisaCard</asp:ListItem>
                                        <asp:ListItem>MasterCard</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td class="style16">
                                    &nbsp;</td>
                                <td class="style16" rowspan="4">
                                    <asp:Image ID="Image2" runat="server" Height="101px" 
                                        ImageUrl="~/IMG/shopping_cart_racing.png" Width="161px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style6">
                                    <asp:Label ID="Label9" runat="server" Text="CartNumber"></asp:Label>
                                </td>
                                <td class="style12">
                                    <asp:TextBox ID="txtcartnum" runat="server"></asp:TextBox>
                                </td>
                                <td class="style16">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style8">
                                    <asp:Label ID="Label10" runat="server" Text="Expires"></asp:Label>
                                </td>
                                <td class="style11" colspan="2">
                                    <asp:TextBox ID="txtmanth" runat="server" Width="45px"></asp:TextBox>
                                    <asp:TextBox ID="txtyear" runat="server" Width="87px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style13">
                                    <asp:Label ID="Label11" runat="server" Text="CartName"></asp:Label>
                                </td>
                                <td class="style14">
                                    <asp:TextBox ID="txtnamecart" runat="server"></asp:TextBox>
                                </td>
                                <td class="style17">
                                </td>
                            </tr>
                        </table>
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" Title="Shipment" StepType="Finish">
                        <table align="center">
                            <tr>
                                <td colspan="2">
                                    <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="False" 
                                        Font-Size="X-Large" Text="ShipmentMethods"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style5">
                                    <asp:RadioButtonList ID="rblshipment" runat="server">
                                        <asp:ListItem Value="Repesentitive">&lt;b&gt;Repesentitive&lt;/b&gt; (only in cairo)</asp:ListItem>
                                        <asp:ListItem Value="Surface Mail">&lt;b&gt;Surface Mail&lt;/b&gt; (take 5 to 10 days)</asp:ListItem>
                                        <asp:ListItem Value="Regstrated Mail">&lt;b&gt;Regstrated Mail&lt;/b&gt; ( take 3 days)</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                                <td class="style8">
                                </td>
                            </tr>
                        </table>
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" StepType="Complete" Title="Complete">
                        <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label>
                    </asp:WizardStep>
                </WizardSteps>
            </asp:Wizard>
        </td>
    </tr>
    <tr>
        <td class="style1">
            &nbsp;</td>
    </tr>
</table>

