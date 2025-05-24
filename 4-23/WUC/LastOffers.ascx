<%@ Control Language="C#" AutoEventWireup="true" CodeFile="LastOffers.ascx.cs" Inherits="WUC_LastOffers" %>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    SelectCommand="SELECT top 5 * FROM [Product] ORDER BY [WritingData] DESC">
</asp:SqlDataSource>
<div class="navbar-collapse collapse move-me">
    <ul class="nav navbar-nav navbar-Left set-links">
        <li>Last Offers:<a href="#"> <span class="arrow">▼</span></a>
            <ul class="sub-menu">
                <asp:DataList ID="DataList1" runat="server" DataKeyField="CatId" 
                    DataSourceID="SqlDataSource1" style="margin-right: 1px">
                    <ItemTemplate>
                        <li><a href='../Page/ProDetails.aspx?ProId=<%# Eval("ProId") %>'><%# Eval("ProName")%>
                            </a></li>
                    </ItemTemplate>
                </asp:DataList>
            </ul>
        </li>
    </ul>
</div>

<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>


     SELECT top 5 [ProName] FROM [Product] ORDER BY [WritingData] DESC



                     <li><a href="#">Last Offers</a>
                     <ul class="sub-menu">           
                     <asp:DataList ID="DataList2" runat="server" DataKeyField="ProId" 
                     DataSourceID="SqlDataSource2" style="margin-right: 1px">
                     <ItemTemplate>
                     <li><a href='Page/ProDetails.aspx?ProId=<%# Eval("ProId") %>'><%# Eval("ProName")%></a></li>
                     </ItemTemplate>
                     </asp:DataList>
                     </ul>
                     </li>

