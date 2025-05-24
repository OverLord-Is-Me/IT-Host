<%@ Page Title="" Language="C#" MasterPageFile="~/MPElectronicsCompany.master" AutoEventWireup="true" CodeFile="Checkout.aspx.cs" Inherits="Page_Checkout" %>
<%@ Register SRC="~/WUC/Chectout.ascx" TagName="Checkout" TagPrefix="User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<User:Checkout id="Cart" runat="server" />
</asp:Content>

