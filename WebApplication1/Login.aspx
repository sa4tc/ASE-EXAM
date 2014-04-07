<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<%@ MasterType VirtualPath="~/Site.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table border="0">
        <tr>
            <td>
                <asp:Label ID="lblUserName" runat="server" Text="User Name "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblPassword" runat="server" Text="Password "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:CheckBox ID="chkRemPass" runat="server" />
                <asp:Label ID="lblRemPass" runat="server" Text="Remember Password"></asp:Label>
            </td>
            <td>
                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <%--        <tr>
            <td colspan="2">
                <div>
                    <asp:LoginView runat="server" ID="lgnView">
                        <AnonymousTemplate>
                            <asp:Login runat="server" ID="lgnMain" OnAuthenticate="lgnMain_Authenticate"></asp:Login>
                        </AnonymousTemplate>
                        <LoggedInTemplate>
                            Welcome
                            <asp:LoginStatus runat="server" />
                        </LoggedInTemplate>
                    </asp:LoginView>
                </div>
            </td>
        </tr>--%>
    </table>
</asp:Content>

