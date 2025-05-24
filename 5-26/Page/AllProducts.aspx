<%@ Page Title="" Language="C#" MasterPageFile="~/MPOfVisitor.master" AutoEventWireup="true" CodeFile="AllProducts.aspx.cs" Inherits="Page_AllProducts" %>

<%@ Register src="../WUC/AllProducts.ascx" tagname="AllProducts" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:AllProducts ID="AllProducts1" runat="server" />
</asp:Content>

