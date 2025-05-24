<%@ Page Title="" Language="C#" MasterPageFile="~/MPOfManger.master" AutoEventWireup="true" CodeFile="AdminProfile.aspx.cs" Inherits="Page_Manager_AdminProfile" %>
<%@ Register src="../WUC/Profile.ascx" tagname="Profile" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:Profile ID="Profile2" runat="server" />
</asp:Content>

