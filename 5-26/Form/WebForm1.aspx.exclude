<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Delivary.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            text-align: center;
        }
        .style1
        {
            width: 100%;
            top: 52px;
            left: 13px;
        }
        .style5
        {
            height: 31px;
            width: 21px;
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
        .style19
        {
            width: 39px;
        }
        .style20
        {
            width: 9px;
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
    </style>
</head>
<body style="height: 480px; width: 1118px;">

    <form id="form1" runat="server">
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
                <asp:Button ID="btnid" runat="server" EnableTheming="False" Font-Size="Medium" 
                    ForeColor="#006600" Text="Id" Width="84px" onclick="btnid_Click" />
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                    onselectedindexchanged="RadioButtonList1_SelectedIndexChanged">
                    <asp:ListItem Selected="True">id</asp:ListItem>
                    <asp:ListItem>name</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td colspan="2">
                
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="ID" DataValueField="ID" 
                    Height="16px" onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                    Width="199px">
                </asp:DropDownList>
                
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [ID], [Name] FROM [Driver]"></asp:SqlDataSource>
            </td>
            <td class="style13" style="vertical-align: baseline">
                <asp:Button ID="btnAdd" runat="server" Text="Add" Width="100px" 
                    onclick="btnAdd_Click" />
            </td>
        </tr>
        <tr>
            <td class="style13" width="5">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td colspan="2" style="text-align: right">
                &nbsp;</td>
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
                <asp:Button ID="btnsave" runat="server" Font-Size="Large" ForeColor="#009933" 
                    Height="73px" onclick="Button1_Click" Text="Save" Visible="False" 
                    Width="244px" />
            </td>
            <td class="style20">
                <asp:Label ID="lblName" runat="server" Text="Name" Width="50px"></asp:Label>
            </td>
            <td class="style19">
                <asp:TextBox ID="TextBox3" runat="server" style="text-align: left" 
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
                <asp:TextBox ID="TextBox4" runat="server" style="text-align: left" 
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
                <asp:TextBox ID="TextBox5" runat="server" style="text-align: left" 
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
                <asp:TextBox ID="TextBox6" runat="server" style="text-align: left" 
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
                <asp:TextBox ID="TextBox7" runat="server" style="text-align: left" 
                    Width="300px" Font-Size="Medium" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style13" width="5">
                &nbsp;</td>
            <td class="style17">
                &nbsp;</td>
            <td class="style20">
                <asp:Label ID="lblCarno" runat="server" Text="Car No" Width="67px"></asp:Label>
            </td>
            <td class="style19">
                <asp:TextBox ID="TextBox8" runat="server" style="text-align: left" 
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
        </tr>
        <tr>
            <td class="style13" width="5">
                &nbsp;</td>
            <td class="style17">
                &nbsp;<asp:Button ID="btnDelete" runat="server" Text="Delete" Width="100px" />
                <asp:Button ID="btnModify" runat="server" Text="Modify" Width="100px" 
                    onclick="btnModify_Click" />
            </td>
            <td class="style20">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
            <td class="style13">
                <asp:Button ID="Cancel" runat="server" Text="Cancel" Width="100px" />
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
    </table>
    </form>

</body>
</html>
