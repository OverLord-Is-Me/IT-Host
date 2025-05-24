<%@ Page Title="" Language="C#" MasterPageFile="~/MPOfVisitor.master" AutoEventWireup="true" CodeFile="LogForCheckout.aspx.cs" Inherits="Page_Client_LogForCheckout" %>

<%@ Register src="../WUC/LogForCheckout.ascx" tagname="LogForCheckout" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:LogForCheckout ID="LogForCheckout1" runat="server" />
</asp:Content>

