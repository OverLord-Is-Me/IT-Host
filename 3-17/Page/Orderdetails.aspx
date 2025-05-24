<%@ Page Title="" Language="C#" MasterPageFile="~/MPElectronicsCompany.master" AutoEventWireup="true" CodeFile="Orderdetails.aspx.cs" Inherits="Page_Orderdetails" %>
<%@ Register Src="~/WUC/Orderdetails.ascx" TagName="Ordt" TagPrefix="Orderde" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <Orderde:Ordt id="or" runat="server" />
</asp:Content>

