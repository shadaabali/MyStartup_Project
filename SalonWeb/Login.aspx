<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 319px;
        }
        .auto-style4 {
            width: 188px;
        }
    .auto-style11 {
        width: 480px;
        height: 318px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <table class="auto-style1" style="border: medium solid #00FF00">
                    <tr>
                        <td class="auto-style2" colspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2" colspan="2">Login Here &gt;&gt;&gt;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">UserName:-</td>
                        <td class="auto-style4">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Password:-</td>
                        <td class="auto-style4">
                            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style4">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style4">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Sign In" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" colspan="2">
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            &nbsp;</td>
                        <td class="auto-style4">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/forgetpassword.aspx">Forgot Password</asp:HyperLink>
                        </td>
                        <td class="auto-style4">
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/CustomerRegis.aspx">New Customer Registration</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            &nbsp;</td>
                        <td class="auto-style4">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            &nbsp;</td>
                        <td class="auto-style4">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>
                <img alt="" class="auto-style11" src="Images/Login.gif" /></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

