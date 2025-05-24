<%@ Page Title="" Language="C#" MasterPageFile="~/MPElectronicsCompany.master" AutoEventWireup="true" CodeFile="Shipingcard.aspx.cs" Inherits="Page_Shipingcard" %>
<%@ Register Src="~/WUC/ShipingCard.ascx" TagName="ship" TagPrefix="User"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<User:ship ID="HA" runat="server" />
</asp:Content>

