<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication1.WebForm4" %>

<%@ MasterType VirtualPath="~/Site.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td>First Name
            </td>
            <td>
                <asp:TextBox ID="tb1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>Last Name
            </td>
            <td>
                <asp:TextBox ID="tb2" runat="server" />
            </td>
        </tr>
        <tr>
            <td>Email
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>Password
            </td>
            <td>
                <asp:TextBox ID="TextBox2" TextMode="password" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:LinkButton ID="LinkButton2" runat="server">Sign Up</asp:LinkButton>
            </td>
        </tr>
    </table>
</asp:Content>
