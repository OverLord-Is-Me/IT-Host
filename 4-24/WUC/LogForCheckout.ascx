<%@ Control Language="C#" AutoEventWireup="true" CodeFile="LogForCheckout.ascx.cs" Inherits="WUC_LogForCheckout" %>
<style type="text/css">

    .style2
    {
        width: 56%;
        height: 213px;
        float: left;
        margin-right: 0px;
        margin-bottom: 0px;
    }
    </style>
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
                            &nbsp;</td>
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
                                Font-Names="Algerian" Font-Size="Medium" ForeColor="#009933" Height="26px" 
                                OnClick="Button1_Click" Text="Log" Width="95px" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            
