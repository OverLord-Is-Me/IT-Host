<%@ Page Title="" Language="C#" MasterPageFile="~/MPOfVisitor.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Page_Login" %>

<%@ Register src="../WUC/Login.ascx" tagname="Login" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Login ID="Login2" runat="server" />
</asp:Content>

