<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Orderdetails.ascx.cs" Inherits="WUC_Orderdetails" %>
<style type="text/css">
    .style1
    {
        width: 100%;
    }
    .newStyle1
    {
        vertical-align: middle;
        text-align: center;
        position: absolute;
        visibility: hidden;
        table-layout: auto;
        empty-cells: hide;
    }
    .style3
    {
        width: 221px;
        text-align: center;
    }
    .style4
    {
        width: 254px;
        text-align: center;
    }
    .style5
    {
        width: 201px;
    }
</style>

<table class="style1">
    <tr>
        <td class="style5">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style5">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style5">
            &nbsp;</td>
        <td class="style3">
            <asp:Label ID="lblcid" runat="server" Text="Catid"></asp:Label>
        </td>
        <td class="style4">
            <asp:TextBox ID="txtcatid" runat="server" Width="208px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style5">
            &nbsp;</td>
        <td class="style3">
            <asp:Label ID="lblpid" runat="server" Text="proid"></asp:Label>
        </td>
        <td class="style4">
            <asp:TextBox ID="txtproid" runat="server" Width="208px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style5">
            &nbsp;</td>
        <td class="style3">
            <asp:Label ID="lblordid" runat="server" Text="ordid"></asp:Label>
        </td>
        <td class="style4">
            <asp:TextBox ID="txtordid" runat="server" Width="208px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style5">
            &nbsp;</td>
        <td class="style3">
            <asp:Label ID="lblqty" runat="server" Text="Quantity Avalible"></asp:Label>
        </td>
        <td class="style4">
            <asp:TextBox ID="txtqty" runat="server" Width="208px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style5">
            &nbsp;</td>
        <td class="style3">
            <asp:Label ID="lblsellprice" runat="server" Text="Sell price"></asp:Label>
        </td>
        <td class="style4">
            <asp:TextBox ID="txtsellprice" runat="server" Width="208px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style5">
            &nbsp;</td>
        <td class="style3">
            <asp:Label ID="lblMsg" runat="server" Visible="False"></asp:Label>
        </td>
        <td class="style4">
            <asp:Button ID="btnsave" runat="server" Height="27px" onclick="btnsave_Click" 
                style="text-align: center" Text="Save" Width="63px" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style5">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style5">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>

