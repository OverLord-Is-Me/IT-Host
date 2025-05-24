<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Support.ascx.cs" Inherits="WUC_Support" %>
<style type="text/css">
    .style4
    {
        width: 711px;
        height: 280px;
    }
</style>

<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
<p>
    &nbsp;</p>
<asp:UpdatePanel ID="UpdatePanel4" runat="server">
    <ContentTemplate>
        <br />
        <table align="center" class="style4">
            <tr>
                <td colspan="3" style="text-align: center">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Algerian" 
                        Font-Overline="True" Font-Size="XX-Large" Font-Underline="True" 
                        Text="Search For SomeOne!!!"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="text-align: center">
                    <asp:Label ID="lblMsg" runat="server" Font-Size="XX-Large" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Algerian" 
                        Font-Overline="True" Font-Size="X-Large" Font-Underline="True" 
                        Text="Search by :"></asp:Label>
                </td>
                <td style="text-align: left">
                    <asp:RadioButtonList ID="RadioButtonList2" runat="server" Font-Names="Algerian" 
                        Font-Size="X-Large" RepeatDirection="Horizontal" style="text-align: left">
                        <asp:ListItem Value="FullName">Name     ,</asp:ListItem>
                        <asp:ListItem>NationalId</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Algerian" 
                        Font-Overline="True" Font-Size="X-Large" Font-Underline="True" 
                        Text="Search by :"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox1" runat="server" style="text-align: center" 
                        Width="273px"></asp:TextBox>
                    <asp:Button ID="btnsearch" runat="server" onclick="Button1_Click" Text="Search" 
                        Width="65px" />
                    <asp:Button ID="Button1" runat="server" Enabled="False" 
                        onclick="Button1_Click1" Text="Delete" Width="65px" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3" style="text-align: center">
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                        GridLines="None" onselectedindexchanged="GridView1_SelectedIndexChanged1">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Select" 
                                ShowHeader="True" Text="&gt;&gt;&gt;" />
                        </Columns>
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="text-align: center">
                    <asp:UpdateProgress ID="UpdateProgress3" runat="server">
                        <ProgressTemplate>
                            <asp:Image ID="Image3" runat="server" Height="160px" 
                                ImageUrl="~/IMG/Loading.gif" Width="212px" />
                            <br />
                            <asp:Label ID="Label7" runat="server" Font-Size="X-Large" Text="Loading...!"></asp:Label>
                        </ProgressTemplate>
                    </asp:UpdateProgress>
                </td>
            </tr>
        </table>
<br />
    </ContentTemplate>
</asp:UpdatePanel>




