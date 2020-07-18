<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SalonLogin.aspx.cs" Inherits="SalonLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style12 {
            width: 268px;
            height: 26px;
        }
        .auto-style13 {
            height: 26px;
            width: 754px;
        }
        .auto-style14 {
            width: 754px;
        }
        .auto-style15 {
            width: 261px;
            height: 193px;
        }
        .auto-style16 {
            width: 268px;
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
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2" colspan="2">Salon Login Here &gt;&gt;&gt;</td>
                    </tr>
                    <tr>
                        <td class="auto-style12">UserName(Email Id):-</td>
                        <td class="auto-style13">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16">Password:-</td>
                        <td class="auto-style14">
                            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16">&nbsp;</td>
                        <td class="auto-style14">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Sign In" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" colspan="2">
                            <asp:Label ID="Label1" runat="server" style="color: #FF0000; font-weight: 700"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style16">&nbsp;</td>
                        <td class="auto-style14">
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SalonRegis.aspx">New Salon Registration</asp:HyperLink>
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                <img alt="" class="auto-style15" src="Images/login1.jpg" /></td>
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

