<%@ Page Title="" Language="C#" MasterPageFile="~/MPOfVisitor.master" AutoEventWireup="true" CodeFile="ProDetails.aspx.cs" Inherits="Page_Client_ProDetails" %>

<%@ Register src="../WUC/ProDetails.ascx" tagname="ProDetails" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:ProDetails ID="ProDetails1" runat="server" />
</asp:Content>

