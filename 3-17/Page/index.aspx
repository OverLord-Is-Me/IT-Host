<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="index.aspx.vb" Inherits="Page_A" %>
<%@ Register Src="../WUC/WebUserControl.ascx" TagName="adm" TagPrefix="uc1" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<uc1:adm ID="Register1" runat="server" />
</asp:Content>

