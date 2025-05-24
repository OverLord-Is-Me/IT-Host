<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ProDetails.ascx.cs" Inherits="WUC_ProDetails" %>
<style type="text/css">
    .style1
    {
        width: 86%;
        height: 100%;
    }
</style>

<body style="text-align: center">
    <table align="center" class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="lbldtls" runat="server" Font-Names="Algerian" Font-Size="Large" 
                    Text="Product Details :"></asp:Label>
            </td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td rowspan="7">
                <asp:Image ID="Img" runat="server" Height="265px" Width="231px" />
            </td>
            <td>
                <asp:Label ID="lblcat" runat="server" Font-Names="Algerian" Font-Size="Large" 
                    Text="Category"></asp:Label>
            </td>
            <td colspan="2">
                <asp:Label ID="Label9" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblproid" runat="server" Font-Names="Algerian" Font-Size="Large" 
                    Text="Product ID"></asp:Label>
            </td>
            <td colspan="2">
                <asp:Label ID="Label10" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblpronm" runat="server" Font-Names="Algerian" Font-Size="Large" 
                    Text="Product Name"></asp:Label>
            </td>
            <td colspan="2">
                <asp:Label ID="Label11" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblprc" runat="server" Font-Names="Algerian" Font-Size="Large" 
                    Text="Price"></asp:Label>
            </td>
            <td colspan="2">
                <asp:Label ID="Label12" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblqty" runat="server" Font-Names="Algerian" Font-Size="Large" 
                    Text="Max Quantuty"></asp:Label>
            </td>
            <td colspan="2">
                <asp:Label ID="lblav" runat="server"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" Visible="False" Width="36px" 
                    Height="16px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbldes" runat="server" Font-Names="Algerian" Font-Size="Large" 
                    Text="Description"></asp:Label>
            </td>
            <td colspan="2">
                <asp:Label ID="Label14" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbldte" runat="server" Font-Names="Algerian" Font-Size="Large" 
                    Text="Release date"></asp:Label>
            </td>
            <td colspan="2">
                <asp:Label ID="Label15" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox2" ControlToValidate="TextBox1" 
                    ErrorMessage="Choose Less Quantity" ForeColor="Red" Operator="LessThanEqual" 
                    Type="Integer"></asp:CompareValidator>
                <asp:Label ID="lblMsg" runat="server" Font-Names="Algerian" Font-Size="X-Large" 
                    ForeColor="Red"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblbuy" runat="server" Font-Names="Algerian" Font-Size="Large" 
                    Text="Order Quantity"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="60px"></asp:TextBox>
            </td>
            <td>
                <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" Width="67px" 
                    onclick="ImageButton1_Click" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
    </table>

