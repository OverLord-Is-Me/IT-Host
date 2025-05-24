<%@ Page Title="" Language="C#" MasterPageFile="~/MPOfManger.master" AutoEventWireup="true" CodeFile="Support.aspx.cs" Inherits="Page_Manager_Support" %>

<%@ Register src="../WUC/Support.ascx" tagname="Support" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Support ID="Support1" runat="server" />
</asp:Content>

