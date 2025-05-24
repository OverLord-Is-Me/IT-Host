<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Category22.ascx.cs" Inherits="WUC_Category22" %>
<style type="text/css">


    .style4
    {
        width: 711px;
        height: 280px;
    }
    .style6
    {
        height: 42px;
    }
    .style9
    {
        text-align: left;
    }
    .style11
    {
        width: 73%;
        height: 100%;
    }
    </style>

<body style="text-align: center">
    <p>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <br />
            <asp:View ID="View1" runat="server">
                <table align="center" class="style4">
                    <tr>
                        <td colspan="3" style="text-align: center">
                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Algerian" 
                                Font-Overline="True" Font-Size="XX-Large" Font-Underline="True" 
                                Text="Search For Category!!!"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" style="text-align: center">
                            <asp:Label ID="lblMsg" runat="server" Font-Size="XX-Large" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6" colspan="2">
                            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Algerian" 
                                Font-Overline="True" Font-Size="X-Large" Font-Underline="True" 
                                Text="Search by :"></asp:Label>
                        </td>
                        <td class="style6">
                            &nbsp;<asp:RadioButtonList ID="RBLsearch1" runat="server" Font-Names="Algerian" 
                                Font-Size="X-Large" RepeatDirection="Horizontal">
                                <asp:ListItem Value="CatId">ID  </asp:ListItem>
                                <asp:ListItem Value="CatName">Name</asp:ListItem>
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
                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
                                Text="Search" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td colspan="2">
                            <asp:Button ID="Button5" runat="server" Height="35px" onclick="Button5_Click" 
                                style="background-color: #C0C0C0" Text="Add" Width="70px" />
                            <asp:Button ID="Button6" runat="server" ForeColor="#999999" Height="35px" 
                                onclick="Button6_Click" style="color: #000000; background-color: #C0C0C0" 
                                Text="Update" Width="70px" />
                            <asp:Button ID="Button2" runat="server" Height="35px" onclick="Button2_Click1" 
                                style="background-color: #C0C0C0" Text="Delete" Width="70px" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                                GridLines="None" onselectedindexchanged="GridView1_SelectedIndexChanged">
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
                        <td colspan="3">
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
                    <tr>
                        <td colspan="3">
                            &nbsp;</td>
                    </tr>
                </table>
            </asp:View>
            <br />
            <br />
            <asp:View ID="View2" runat="server">
                <br />
                <table align="center" class="style11">
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Algerian" 
                                Font-Size="XX-Large" Height="50px" Text="Add Category" Width="300px"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="lblMsg2" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                                ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblid" runat="server" Font-Names="Algerian" Font-Size="X-Large" 
                                Text="ID"></asp:Label>
                        </td>
                        <td class="style9">
                            <asp:TextBox ID="txtid" runat="server" Enabled="False" Width="180px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red" 
                                ValidationGroup="a"></asp:RequiredFieldValidator>
                        </td>
                        <td rowspan="3">
                            <asp:Image ID="Image4" runat="server" Height="180px" Width="182px" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label9" runat="server" Font-Names="Algerian" Font-Size="X-Large" 
                                Text="Name"></asp:Label>
                        </td>
                        <td class="style9">
                            <asp:TextBox ID="TextBox2" runat="server" Width="180px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red" 
                                ValidationGroup="a"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label10" runat="server" Font-Names="Algerian" 
                                Font-Size="X-Large" Text="Description"></asp:Label>
                        </td>
                        <td class="style9">
                            <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Width="180px"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label13" runat="server" Font-Names="Algerian" 
                                Font-Size="X-Large" Text="Image"></asp:Label>
                        </td>
                        <td>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="lbladd" runat="server" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="Button3" runat="server" Height="35px" onclick="Button3_Click" 
                                Text="Save" ValidationGroup="a" Width="70px" />
                            <asp:Button ID="Button4" runat="server" Height="35px" onclick="Button4_Click" 
                                Text="Return" Width="70px" />
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <asp:UpdateProgress ID="UpdateProgress4" runat="server">
                                <ProgressTemplate>
                                    <asp:Image ID="Image5" runat="server" Height="160px" 
                                        ImageUrl="~/IMG/Loading.gif" Width="212px" />
                                    <br />
                                    <asp:Label ID="Label15" runat="server" Font-Size="X-Large" Text="Loading...!"></asp:Label>
                                </ProgressTemplate>
                            </asp:UpdateProgress>
                        </td>
                    </tr>
                </table>
                <br />
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <br />
                    </ContentTemplate>
                </asp:UpdatePanel>
                <br />
            </asp:View>
            <br />
        </asp:MultiView>
        <br />
    </p>
   
                    </body>


