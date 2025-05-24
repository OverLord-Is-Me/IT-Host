<%@ Page Title="" Language="C#" MasterPageFile="~/MPOfManger.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Page_Manager_Product" %>
<%@ Register src="~/WUC/Product.ascx" tagname="Product" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Product ID="Product1" runat="server" />
</asp:Content>

