<%@ Page Title="" Language="C#" MasterPageFile="~/MPElectronicsCompany.master" AutoEventWireup="true" CodeFile="ProDetail.aspx.cs" Inherits="Page_Client_ProDetail" %>
<%@ Register src="~/WUC/ProDetail.ascx" TagName="ProDetail"  TagPrefix="Users" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<Users:ProDetail ID="new" runat="server" />
</asp:Content>

