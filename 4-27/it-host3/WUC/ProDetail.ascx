<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ProDetail.ascx.cs" Inherits="WUC_ProDetail" %>
<style type="text/css">
    .style1
    {
        width: 260px;
    }
    .style2
    {
        width: 265%;
        height: 164px;
    }
    .style3
    {
        width: 88px;
        text-align: justify;
    }
    .style4
    {
        width: 59px;
    }
</style>

<table style="height: 291px; width: 417px">
    <tr>
        <td class="style1" rowspan="2">
            <asp:Image ID="imgpro" runat="server" Height="256px" Width="247px" />
        </td>
        <td class="style1" rowspan="2">
            &nbsp;</td>
        <td class="style3">
            <table class="style2">
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label1" runat="server" Font-Size="X-Large" 
                            Text="Product Details"></asp:Label>
                        </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Categury"></asp:Label>
                    </td>
                    <td class="style4">
                        <asp:Label ID="lblcat" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="ProductID"></asp:Label>
                    </td>
                    <td class="style4">
                        <asp:Label ID="lblproid" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="ProductName"></asp:Label>
                    </td>
                    <td class="style4">
                        <asp:Label ID="lblproname" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Price"></asp:Label>
                    </td>
                    <td class="style4">
                        <asp:Label ID="lblprice" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblaq" runat="server" Text="AvliableQuntity"></asp:Label>
                    </td>
                    <td class="style4">
                        <asp:Label ID="lblprodata" runat="server" Text="Label"></asp:Label>
                        <asp:TextBox ID="Maxaq" runat="server" Visible="False" Width="34px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="ProDetails"></asp:Label>
                    </td>
                    <td class="style4">
                        <asp:Label ID="lblprodetails" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td class="style3">
            <asp:Label ID="prodetails0" runat="server" style="text-align: center" 
                Text="Quntity"></asp:Label>
            <asp:TextBox ID="txtty" runat="server" Width="33px">1</asp:TextBox>
            <asp:ImageButton ID="ImageButton1" runat="server" Height="43px" 
                ImageUrl="~/IMG/Prouducts.jpg" style="text-align: justify" Width="87px" />
            <br />
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="Maxaq" ErrorMessage="CompareValidator" Type="Integer" 
                ControlToValidate="txtty"></asp:CompareValidator>
        </td>
    </tr>
</table>

