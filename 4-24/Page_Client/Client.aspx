<%@ Page Title="" Language="C#" MasterPageFile="../MPOfManger.master" AutoEventWireup="true" CodeFile="Client.aspx.cs" Inherits="Page_Default" %>
<%@ Register Src="../WUC/Client.ascx" TagName="ca" TagPrefix="ca1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <ca1:ca id="CCA" runat="server"/>
</asp:Content>

