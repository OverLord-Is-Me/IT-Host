<%@ Page Title="" Language="C#" MasterPageFile="~/MPOfVisitor.master" AutoEventWireup="true" CodeFile="AllCat.aspx.cs" Inherits="Page_AllCat" %>

<%@ Register src="../WUC/AllCat.ascx" tagname="AllCat" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:AllCat ID="AllCat1" runat="server" />
</asp:Content>

