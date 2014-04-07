<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RouteShop.aspx.cs" Inherits="WebApplication1.WebForm8" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Pick any route from 
    <asp:Button runat="server" Text="Route Shop" ID="btnRouteShop" OnClick="btnRouteShop_Click" />
    <asp:DropDownList ID="ddlHistory" runat="server">
        <asp:ListItem>Hyderabad-Hitech City</asp:ListItem>
        <asp:ListItem Selected="True">Select</asp:ListItem>
</asp:DropDownList>
    <asp:Button runat="server" ID="btnGo" Text="Go" />
</asp:Content>
