<%@ Page Title="" Language="C#" MasterPageFile="~/MPOfManger.master" AutoEventWireup="true" CodeFile="DriverMange.aspx.cs" Inherits="Page_Manager_DriverMange" %>

<%@ Register src="../WUC/DriverMange.ascx" tagname="DriverMange" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:DriverMange ID="DriverMange1" runat="server" />
</asp:Content>

