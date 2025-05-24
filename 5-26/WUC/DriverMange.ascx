<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DriverMange.ascx.cs" Inherits="WUC_DriverMange" %>
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
    .style11
    {
        width: 73%;
        height: 100%;
    }
    .style9
    {
        text-align: left;
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
                                Text="Search For Driver"></asp:Label>
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
                                <asp:ListItem Value="ID">ID  </asp:ListItem>
                                <asp:ListItem Value="Name">Name</asp:ListItem>
                                <asp:ListItem Value="NationalId">National ID</asp:ListItem>
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
                            <asp:Button ID="btnsrch" runat="server" onclick="Button1_Click1" 
                                Text="Search" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td colspan="2">
                            <asp:Button ID="btnAdd" runat="server" Height="35px" onclick="Button5_Click" 
                                style="background-color: #C0C0C0" Text="Add" Width="70px" />
                            <asp:Button ID="btnupd" runat="server" ForeColor="#999999" Height="35px" 
                                onclick="Button6_Click" style="color: #000000; background-color: #C0C0C0" 
                                Text="Update" Width="70px" />
                            <asp:Button ID="btndlt" runat="server" Height="35px" onclick="Button2_Click1" 
                                style="background-color: #C0C0C0" Text="Delete" Width="70px" 
                                ForeColor="Black" />
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
                <table align="center" class="style11" cellpadding="5" cellspacing="5">
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Names="Algerian" 
                                Font-Size="XX-Large" Height="50px" Text="Add Driver" Width="300px"></asp:Label>
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
                            <asp:TextBox ID="txtid" runat="server" Enabled="False" Width="180px" 
                                Height="22px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtid" ErrorMessage="*" ForeColor="Red" 
                                ValidationGroup="a"></asp:RequiredFieldValidator>
                        </td>
                        <td rowspan="7">
                            <asp:Image ID="Image4" runat="server" Height="233px" Width="227px" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label9" runat="server" Font-Names="Algerian" Font-Size="X-Large" 
                                Text="Name"></asp:Label>
                        </td>
                        <td class="style9">
                            <asp:TextBox ID="TextBox2" runat="server" Height="22px" Width="180px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red" 
                                ValidationGroup="a"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label16" runat="server" Font-Names="Algerian" 
                                Font-Size="X-Large" Text="Password"></asp:Label>
                        </td>
                        <td class="style9">
                            <asp:TextBox ID="TextBox4" runat="server" Height="22px" Width="180px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="Red" 
                                ValidationGroup="a"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label17" runat="server" Font-Names="Algerian" 
                                Font-Size="X-Large" Text="National ID"></asp:Label>
                        </td>
                        <td class="style9">
                            <asp:TextBox ID="TextBox5" runat="server" Height="22px" Width="180px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red" 
                                ValidationGroup="a"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label18" runat="server" Font-Names="Algerian" 
                                Font-Size="X-Large" Text="Address"></asp:Label>
                        </td>
                        <td class="style9">
                            <asp:TextBox ID="TextBox6" runat="server" Height="22px" Width="180px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="TextBox6" ErrorMessage="*" ForeColor="Red" 
                                ValidationGroup="a"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label10" runat="server" Font-Names="Algerian" 
                                Font-Size="X-Large" Text="Email"></asp:Label>
                        </td>
                        <td class="style9">
                            <asp:TextBox ID="TextBox7" runat="server" Height="22px" Width="180px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                ControlToValidate="TextBox7" ErrorMessage="*" ForeColor="Red" 
                                ValidationGroup="a"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label19" runat="server" Font-Names="Algerian" 
                                Font-Size="X-Large" Text="Phone Number"></asp:Label>
                        </td>
                        <td class="style9">
                            <asp:TextBox ID="TextBox8" runat="server" Height="22px" Width="180px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                ControlToValidate="TextBox8" ErrorMessage="*" ForeColor="Red" 
                                ValidationGroup="a"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label20" runat="server" Font-Names="Algerian" 
                                Font-Size="X-Large" Text="Car Serial"></asp:Label>
                        </td>
                        <td style="text-align: left">
                            <asp:DropDownList ID="DropDownList1" runat="server" 
                                DataSourceID="SqlDataSource1" DataTextField="CarSerial" 
                                DataValueField="CarSerial" Height="22px" Width="180px">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT [CarSerial] FROM [Cars]"></asp:SqlDataSource>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                ControlToValidate="DropDownList1" ErrorMessage="*" ForeColor="Red" 
                                ValidationGroup="a"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:Label ID="lbladd" runat="server" Visible="False"></asp:Label>
                        </td>
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
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="btnsve" runat="server" Height="35px" onclick="Button3_Click" 
                                Text="Save" ValidationGroup="a" Width="70px" />
                            <asp:Button ID="btnback" runat="server" Height="35px" onclick="Button4_Click" 
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
   
                    





