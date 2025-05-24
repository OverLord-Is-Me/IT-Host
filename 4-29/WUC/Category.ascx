<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Category.ascx.cs" Inherits="WUC_Category" %>
<style type="text/css">

    .style4
    {
        width: 711px;
        height: 280px;
    }
</style>

<body style="text-align: center">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <p>
        &nbsp;</p>
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <br />
            <br />
            <br />
        </asp:View>
        <asp:View ID="View2" runat="server">
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                    <br />
                    <asp:UpdateProgress ID="UpdateProgress2" runat="server">
                        <ProgressTemplate>
                            <asp:Image ID="Image2" runat="server" Height="160px" 
                                ImageUrl="~/IMG/Loading.gif" Width="212px" />
                            <br />
                            <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Text="Loading...!"></asp:Label>
                        </ProgressTemplate>
                    </asp:UpdateProgress>
                </ContentTemplate>
            </asp:UpdatePanel>
            <br />
            <br />
        </asp:View>
        <asp:View ID="View3" runat="server">
            <br />
            <br />
        </asp:View>
    </asp:MultiView>

