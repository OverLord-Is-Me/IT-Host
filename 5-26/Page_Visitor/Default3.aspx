<%@ Page Title="" Language="C#" MasterPageFile="~/MPOfManger.master" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Page_Visitor_Default3" %>

<%@ Register src="../WUC/WebUserControl2.ascx" tagname="WebUserControl2" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:WebUserControl2 ID="WebUserControl21" runat="server" />
</asp:Content>

