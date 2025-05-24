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
</style>

<p>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
</p>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <table class="style1" style="text-align: center;">
            <tr>
                <td class="style11">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="style2">&nbsp;</td>
                <td class="style12">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="style11" height="35">&nbsp;</td>
                <td height="35">
                    <asp:Label ID="lblname" runat="server" Text="Full Name :" height="28px" width="76px"></asp:Label>
                </td>
                <td class="style2" height="35">
                    <asp:TextBox ID="txtname" runat="server" height="22px" width="198px"></asp:TextBox>
                </td>
                <td height="35" class="style12">&nbsp;</td>
                <td height="35">&nbsp;</td>
            </tr>
            <tr>
                <td class="style11" height="35">
                    <asp:CompareValidator ID="CompareValidator3" runat="server"
                        ControlToCompare="txtpassword" ControlToValidate="txtrepassword"
                        ErrorMessage="Password &amp; RePassword Must Match" Font-Names="Ebrima"
                        ForeColor="Red" ValidationGroup="reg" Font-Size="Small">

                    </asp:CompareValidator>
                </td>
                <td height="35">
                    <asp:Label ID="lblpassword" runat="server" Text="Password:" height="28px" width="76px"></asp:Label>
                </td>
                <td class="style2" height="35">
                    <asp:TextBox ID="txtpassword" runat="server" height="22px" width="198px"></asp:TextBox>
                </td>
                <td height="35" class="style12">
                    <asp:Label ID="lblrepassword" runat="server" Text="Re-Password:" height="28px"></asp:Label>
                </td>
                <td height="35">
                    <asp:TextBox ID="txtrepassword" runat="server" Width="190px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    <asp:CompareValidator ID="CompareValidator6" runat="server"
                        ControlToValidate="txtnationaid" ErrorMessage="This National ID is bigger than usual"
                        Font-Names="Ebrima" ForeColor="Red" Operator="LessThan" Type="Double"
                        ValidationGroup="reg" ValueToCompare="99999999999999" Font-Size="Small"></asp:CompareValidator>
                </td>
                <td class="style14">
                    <asp:Label ID="lblnationalid" runat="server" Text="National ID:" height="28px"></asp:Label>
                </td>
                <td class="style15">
                    <asp:TextBox ID="txtnationaid" runat="server" height="22px" width="198px"></asp:TextBox>
                </td>
                <td class="style16">
                    <asp:CompareValidator ID="CompareValidator5" runat="server"
                        ControlToValidate="txtnationaid"
                        ErrorMessage="  *This National ID is smaller than usual" Font-Names="Ebrima"
                        Font-Size="Small" ForeColor="Red" Operator="GreaterThan" Type="Double"
                        ValidationGroup="reg" ValueToCompare="10000000000000"></asp:CompareValidator>
                </td>
                <td class="style14"></td>
            </tr>
            <tr>
                <td class="style11" height="35">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                        ControlToValidate="txtemail" ErrorMessage="Enter Correct Email Address"
                        Font-Names="Ebrima" ForeColor="Red"
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        ValidationGroup="reg" Font-Size="Small"></asp:RegularExpressionValidator>
                </td>
                <td height="35">
                    <asp:Label ID="lblemail" runat="server" Text="E-mail:" height="28px" width="76px"></asp:Label>
                </td>
                <td class="style2" height="35">
                    <asp:TextBox ID="txtemail" runat="server" height="22px" width="198px"></asp:TextBox>
                </td>
                <td height="35" class="style12">&nbsp;</td>
                <td height="35">&nbsp;</td>
            </tr>
            <tr>
                <td class="style11" height="35">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                        ControlToValidate="txtaddress" ErrorMessage="Must Fill Your Address"
                        Font-Names="Ebrima" ForeColor="Red" ValidationGroup="reg"
                        Font-Size="Small"></asp:RequiredFieldValidator>
                </td>
                <td height="35">
                    <asp:Label ID="lbladdress" runat="server" Text="Address:" height="28px" width="76px"></asp:Label>
                </td>
                <td class="style2" height="35">
                    <asp:TextBox ID="txtaddress" runat="server" height="22px" width="198px"></asp:TextBox>
                </td>
                <td height="35" class="style12">&nbsp;</td>
                <td height="35">&nbsp;</td>
            </tr>
            <tr>
                <td class="style11" height="35">
                    <asp:CompareValidator ID="CompareValidator7" runat="server"
                        ControlToValidate="txtphone" ErrorMessage="Phone number Invaild"
                        Font-Names="Ebrima" ForeColor="Red" Operator="GreaterThan" Type="Double"
                        ValidationGroup="reg" ValueToCompare="0100000000" Font-Size="Small"></asp:CompareValidator>
                </td>
                <td height="35">
                    <asp:Label ID="lblphone" runat="server" Text="Phone:" height="28px" width="76px"></asp:Label>
                </td>
                <td class="style2" height="35">
                    <asp:TextBox ID="txtphone" runat="server" height="22px" width="198px"></asp:TextBox>
                </td>
                <td height="35" class="style12">&nbsp;</td>
                <td height="35">&nbsp;</td>
            </tr>
            <tr>
                <td class="style11" height="35">&nbsp;</td>
                <td height="35">
                    <asp:Label ID="Label7" runat="server" Text="Label" height="28px" width="76px"></asp:Label>
                </td>
                <td class="style2" height="35">
                    <asp:TextBox ID="TextBox7" runat="server" height="22px" width="198px"></asp:TextBox>
                </td>
                <td height="35" class="style12">&nbsp;</td>
                <td height="35">&nbsp;</td>
            </tr>
            <tr>
                <td class="style8"></td>
                <td class="style3" width="200">
                    <asp:Button ID="btnempty" runat="server" OnClick="btnempty_Click"
                        Text="Empty" height="26px" width="60px" />
                </td>
                <td class="style4">
                    <asp:Button ID="btnregister" runat="server" OnClick="btnregister_Click"
                        Text="Register" ValidationGroup="reg" height="26px" width="60px" />
                </td>
                <td class="style13">
                    <asp:Button ID="btncancel" runat="server" OnClick="btncancel_Click"
                        Text="Cancel" />
                </td>
                <td class="style3"></td>
            </tr>
            <tr>
                <td class="style11" height="50">
                    <asp:Label ID="lblMsg" runat="server" Text="Label" Font-Size="XX-Large" 
                        ForeColor="Red"></asp:Label>
                </td>
                <td width="200">&nbsp;</td>
                <td class="style2">&nbsp;</td>
                <td class="style12">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </ContentTemplate>
</asp:UpdatePanel>
<p>
    <br />
</p>



