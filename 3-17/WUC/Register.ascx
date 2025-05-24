<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Register.ascx.cs" Inherits="WUC_Register" %>
<style type="text/css">
    .style1 {
        width: 100%;
    }

    .style2 {
        width: 245px;
    }

    .style3 {
        height: 56px;
    }

    .style4 {
        width: 245px;
        height: 56px;
    }

    .style6 {
        table-layout: fixed;
        width: 420px;
        height: 24px;
    }

    .style8 {
        width: 420px;
        height: 56px;
    }

    .style11 {
        width: 420px;
    }

    .style12 {
        width: 200px;
    }

    .style13 {
        height: 56px;
        width: 200px;
    }

    .style14 {
        height: 24px;
    }

    .style15 {
        width: 245px;
        height: 24px;
    }

    .style16 {
        width: 200px;
        height: 24px;
    }
    .auto-style6 {
        width: 331px;
    }
    .auto-style7 {
        table-layout: fixed;
        width: 331px;
        height: 24px;
    }
    .auto-style8 {
        width: 331px;
        height: 56px;
    }
    .auto-style9 {
        width: 251px;
    }
    .auto-style10 {
        width: 251px;
        height: 24px;
    }
    .auto-style11 {
        height: 56px;
        width: 251px;
    }
</style>

<p>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
</p>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <table class="style1" style="text-align: center;">
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
                <td colspan="2">
                    <asp:Label ID="lblMsg" runat="server" Font-Size="XX-Large" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6" height="35">&nbsp;</td>
                <td height="35">
                    <asp:Label ID="lblname" runat="server" Text="Full Name " height="28px" width="121px" Font-Names="Segoe Print" Font-Size="Large"></asp:Label>
                </td>
                <td class="style2" height="35" style="line-height: inherit; vertical-align: inherit">
                    <asp:TextBox ID="txtname" runat="server" height="28px" width="206px" Font-Names="MV Boli" Font-Size="Large" ForeColor="#0033CC"></asp:TextBox>
                </td>
                <td height="35" class="auto-style9">&nbsp;</td>
                <td height="35">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6" height="35">
                    <asp:CompareValidator ID="CompareValidator3" runat="server"
                        ControlToCompare="txtpassword" ControlToValidate="txtrepassword"
                        ErrorMessage="Password &amp; RePassword Must Match" Font-Names="Ebrima"
                        ForeColor="Red" ValidationGroup="reg" Font-Size="Small">

                    </asp:CompareValidator>
                </td>
                <td height="35">
                    <asp:Label ID="lblpassword" runat="server" Text="Password" height="28px" width="76px" Font-Names="Segoe Print" Font-Size="Large"></asp:Label>
                </td>
                <td class="style2" height="35" style="line-height: inherit; vertical-align: inherit">
                    <asp:TextBox ID="txtpassword" runat="server" height="28px" width="206px" Font-Names="MV Boli" Font-Size="Large" ForeColor="#0033CC" TextMode="Password"></asp:TextBox>
                </td>
                <td height="35" class="auto-style9">
                    <asp:Label ID="lblrepassword" runat="server" Text="Re-Password" height="28px" Font-Names="Segoe Print" Font-Size="Large"></asp:Label>
                </td>
                <td height="35" style="line-height: inherit; vertical-align: inherit">
                    <asp:TextBox ID="txtrepassword" runat="server" Width="206px" Font-Names="MV Boli" Font-Size="Large" ForeColor="#0033CC" height="28px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7" aria-multiline="True">
                    <asp:CompareValidator ID="CompareValidator6" runat="server"
                        ControlToValidate="txtnationaid" ErrorMessage="This National ID is bigger than usual"
                        Font-Names="Ebrima" ForeColor="Red" Operator="LessThanEqual" Type="Double"
                        ValidationGroup="reg" ValueToCompare="99999999999999" Font-Size="Small"></asp:CompareValidator>
                </td>
                <td class="style14">
                    <asp:Label ID="lblnationalid" runat="server" Text="National ID" height="28px" Font-Names="Segoe Print" Font-Size="Large"></asp:Label>
                </td>
                <td class="style15" style="line-height: inherit; vertical-align: inherit">
                    <asp:TextBox ID="txtnationaid" runat="server" height="28px" width="206px" Font-Names="MV Boli" Font-Size="Large" ForeColor="#0033CC"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:CompareValidator ID="CompareValidator5" runat="server"
                        ControlToValidate="txtnationaid"
                        ErrorMessage="  *This National ID is smaller than usual" Font-Names="Ebrima"
                        Font-Size="Small" ForeColor="Red" Operator="GreaterThan" Type="Double"
                        ValidationGroup="reg" ValueToCompare="10000000000000"></asp:CompareValidator>
                </td>
                <td class="style14"></td>
            </tr>
            <tr>
                <td class="auto-style6" height="35">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                        ControlToValidate="txtemail" ErrorMessage="Enter Correct Email Address"
                        Font-Names="Ebrima" ForeColor="Red"
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        ValidationGroup="reg" Font-Size="Small"></asp:RegularExpressionValidator>
                </td>
                <td height="35">
                    <asp:Label ID="lblemail" runat="server" Text="E-mail" height="28px" width="76px" Font-Names="Segoe Print" Font-Size="Large"></asp:Label>
                </td>
                <td class="style2" height="35" style="line-height: inherit; vertical-align: inherit">
                    <asp:TextBox ID="txtemail" runat="server" height="28px" width="206px" Font-Names="MV Boli" Font-Size="Large" ForeColor="#0033CC"></asp:TextBox>
                </td>
                <td height="35" class="auto-style9">&nbsp;</td>
                <td height="35">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6" height="35">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                        ControlToValidate="txtaddress" ErrorMessage="Must Fill Your Address"
                        Font-Names="Ebrima" ForeColor="Red" ValidationGroup="reg"
                        Font-Size="Small"></asp:RequiredFieldValidator>
                </td>
                <td height="35">
                    <asp:Label ID="lbladdress" runat="server" Text="Address" height="28px" width="76px" Font-Names="Segoe Print" Font-Size="Large"></asp:Label>
                </td>
                <td class="style2" height="35" style="line-height: inherit; vertical-align: inherit">
                    <asp:TextBox ID="txtaddress" runat="server" height="28px" width="206px" Font-Names="MV Boli" Font-Size="Large" ForeColor="#0033CC"></asp:TextBox>
                </td>
                <td height="35" class="auto-style9">&nbsp;</td>
                <td height="35">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6" height="35">
                    <asp:CompareValidator ID="CompareValidator7" runat="server"
                        ControlToValidate="txtphone" ErrorMessage="Phone number Invaild"
                        Font-Names="Ebrima" ForeColor="Red" Operator="GreaterThan" Type="Double"
                        ValidationGroup="reg" ValueToCompare="0100000000" Font-Size="Small"></asp:CompareValidator>
                </td>
                <td height="35">
                    <asp:Label ID="lblphone" runat="server" Text="Phone" height="28px" width="76px" Font-Names="Segoe Print" Font-Size="Large"></asp:Label>
                </td>
                <td class="style2" height="35" style="line-height: inherit; vertical-align: inherit">
                    <asp:TextBox ID="txtphone" runat="server" height="28px" width="207px" Font-Names="MV Boli" Font-Size="Large" ForeColor="#0033CC"></asp:TextBox>
                </td>
                <td height="35" class="auto-style9">&nbsp;</td>
                <td height="35">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6" height="35">&nbsp;</td>
                <td height="35">
                    &nbsp;</td>
                <td class="style2" height="35" style="line-height: inherit; vertical-align: inherit">
                    &nbsp;</td>
                <td height="35" class="auto-style9">&nbsp;</td>
                <td height="35">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td class="style3" width="200">
                    <asp:Button ID="btnempty" runat="server" OnClick="btnempty_Click"
                        Text="Empty" height="40px" width="90px" />
                </td>
                <td class="style4">
                    <asp:Button ID="btnregister" runat="server" OnClick="btnregister_Click"
                        Text="Register" ValidationGroup="reg" height="40px" width="90px" />
                </td>
                <td class="auto-style11">
                    <asp:Button ID="btncancel" runat="server" OnClick="btncancel_Click"
                        Text="Cancel" height="40px" width="90px" />
                </td>
                <td class="style3"></td>
            </tr>
            <tr>
                <td class="auto-style6" height="50">
                    &nbsp;</td>
                <td width="200">&nbsp;</td>
                <td class="style2">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </ContentTemplate>
</asp:UpdatePanel>
<p>
    <br />
</p>



