<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Driver.ascx.cs" Inherits="WUC_Driver" %>
<style type="text/css">

        .style1
        {
            width: 100%;
            top: 52px;
            left: 13px;
        }
        .style21
        {
            width: 21px;
            text-align: right;
            height: 35px;
        }
        .style22
        {
            width: 42px;
            height: 35px;
        }
        .style23
        {
            width: 9px;
            height: 35px;
        }
        .style24
        {
            width: 39px;
            height: 35px;
        }
        .style13
        {
            width: 21px;
            text-align: right;
        }
        .style17
        {
            width: 42px;
        }
        .style20
        {
            width: 9px;
        }
        .style19
        {
            width: 39px;
        }
        .style5
        {
            height: 31px;
            width: 21px;
        }
        </style>
    <table class="style1" dir="ltr" 
        style="vertical-align: bottom; table-layout: fixed;">
        <tr>
            <td class="style21" width="5">
                </td>
            <td class="style22">
                <asp:Label ID="lblMsg" runat="server" Font-Size="Large" ForeColor="Red" 
                    Text="Label"></asp:Label>
            </td>
            <td class="style23">
                </td>
            <td class="style24">
                </td>
            <td class="style21">
                </td>
        </tr>
        <tr>
            <td class="style13" width="5">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td colspan="2">
                
                &nbsp;</td>
            <td class="style13" style="vertical-align: baseline">
                <asp:Button ID="btnAdd" runat="server" Text="Add" Width="100px" 
                    onclick="btnAdd_Click" />
            </td>
        </tr>
        <tr>
            <td class="style13" width="5">
                &nbsp;</td>
            <td class="style17">
                <asp:Label ID="lblCartyp0" runat="server" Text="password" Width="80px"></asp:Label>
            </td>
            <td colspan="2" style="text-align: right">
                <asp:TextBox ID="txtpass" runat="server" style="text-align: left" 
                    Width="300px" Font-Size="Medium" Enabled="False"></asp:TextBox>
            </td>
            <td class="style13" style="vertical-align: baseline">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13" width="5">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td class="style20">
                <asp:Label ID="lblID" runat="server" Text="ID" Width="50px"></asp:Label>
            </td>
            <td class="style19">
                <asp:Label ID="lblidshow" runat="server" Enabled="False" Font-Size="Medium" 
                    Text="Driver ID" Width="93px"></asp:Label>
            </td>
            <td class="style13" rowspan="8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13" width="5">
                &nbsp;</td>
            <td class="style17" rowspan="5">
                &nbsp;</td>
            <td class="style20">
                <asp:Label ID="lblName" runat="server" Text="Name" Width="50px"></asp:Label>
            </td>
            <td class="style19">
                <asp:TextBox ID="txtname" runat="server" style="text-align: left" 
                    Width="300px" Font-Size="Medium" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style13" width="5">
                &nbsp;</td>
            <td class="style20">
                <asp:Label ID="lNational" runat="server" Text="National ID" Width="87px"></asp:Label>
            </td>
            <td class="style19">
                <asp:TextBox ID="txtnaid" runat="server" style="text-align: left" 
                    Width="300px" Font-Size="Medium" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5" width="5">
            </td>
            <td class="style20">
                <asp:Label ID="lblAddress" runat="server" Text="Address" Width="69px"></asp:Label>
            </td>
            <td class="style19">
                <asp:TextBox ID="txtaddres" runat="server" style="text-align: left" 
                    Width="300px" Font-Size="Medium" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style13" width="5">
                &nbsp;</td>
            <td class="style20">
                <asp:Label ID="lblPhone" runat="server" Text="Phone No" Width="79px"></asp:Label>
            </td>
            <td class="style19">
                <asp:TextBox ID="txtphone" runat="server" style="text-align: left" 
                    Width="300px" Font-Size="Medium" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style13" width="5">
                &nbsp;</td>
            <td class="style20">
                <asp:Label ID="lblCartyp" runat="server" Text="Car Type" Width="80px"></asp:Label>
            </td>
            <td class="style19">
                <asp:TextBox ID="txtcarty" runat="server" style="text-align: left" 
                    Width="300px" Font-Size="Medium" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style13" width="5">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td class="style20">
                <asp:Label ID="lblCarno" runat="server" Text="Car Number" Width="67px"></asp:Label>
            </td>
            <td class="style19">
                <asp:TextBox ID="txtcarnu" runat="server" style="text-align: left" 
                    Width="300px" Font-Size="Medium" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style13" width="5">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td class="style20">
                <asp:Label ID="lblCartyp1" runat="server" Text="email" Width="80px"></asp:Label>
            </td>
            <td class="style19">
                <asp:TextBox ID="txtemail" runat="server" style="text-align: left" 
                    Width="300px" Font-Size="Medium" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style13" width="5">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td class="style20">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13" width="5">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td class="style20">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
        </tr>
    </table>
    
