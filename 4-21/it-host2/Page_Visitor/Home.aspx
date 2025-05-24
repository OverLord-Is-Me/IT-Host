<%@ Page Title="" Language="C#" MasterPageFile="../MPOfVisitor.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Page_Home" %>
<%@ Register Src="../WUC/WebUserControl.ascx" TagName="adm" TagPrefix="Uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <Uc1:adm ID="Reg" runat="server" />

</asp:Content>

