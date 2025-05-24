<%@ Page Title="" Language="C#" MasterPageFile="~/MPElectronicsCompany.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Page_Login" %>
<%@ Register Src="~/WUC/Login.ascx" TagName="Login1" TagPrefix="UCLogi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <UCLogi:Login1 id="Log" runat="server" />
</asp:Content>

