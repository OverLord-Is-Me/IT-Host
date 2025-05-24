<%@ Page Title="" Language="C#" MasterPageFile="~/MPOfVisitor.master" AutoEventWireup="true" CodeFile="ProdOfCat.aspx.cs" Inherits="Page_ProdOfCat" %>

<%@ Register src="../WUC/AllProducts.ascx" tagname="AllProducts" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:AllProducts ID="AllProducts1" runat="server" />
</asp:Content>

