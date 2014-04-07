<%@ Page Title="+" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="WebApplication1.WebForm3" %>

<%@ MasterType VirtualPath="~/Site.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Welcome, </h2>
    <%--<% =User.Identity.Name %>--%>

    <table>
        <tr>
            <td>
                <asp:LinkButton ID="lnkCreateRoute" runat="server" OnClick="lnkCreateRoute_Click">Create Route</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td>
                <asp:LinkButton ID="lnkSpeech" runat="server" OnClick="lnkSpeech_Click">Choose and Walkthrough a route</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td>
                <asp:LinkButton ID="lnkUploadImage" runat="server">Trace a route</asp:LinkButton>
            </td>
        </tr>
    </table>

</asp:Content>
