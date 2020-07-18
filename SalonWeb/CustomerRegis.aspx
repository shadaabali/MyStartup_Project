<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CustomerRegis.aspx.cs" Inherits="CustomerRegis" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 832px;
        }
        .auto-style3 {
            text-align: left;
        }
        .auto-style4 {            text-align: center;
        }
        .auto-style5 {
            height: 23px;
        }
        .auto-style6 {
            width: 832px;
            height: 23px;
        }
        .auto-style11 {
        width: 516px;
    }
        .auto-style13 {
            width: 158px;
        }
        .auto-style16 {
    }
    .auto-style17 {
        width: 590px;
        height: 374px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16" colspan="2">
                <img alt="" class="auto-style17" src="Images/regis.jpg" /></td>
            <td style="width:400px;">
                <table class="auto-style1" style="border: medium solid #0066FF">
                    <tr>
                        <td class="auto-style3" colspan="2"><strong>&lt;&lt;&lt;&lt;&lt; Customer Registration &gt;&gt;&gt;&gt;</strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style13">Customer UserName:-</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">Password:-</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">Retype Password:-</td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">Cutomer Name:-</td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server" MaxLength="10"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">Gender:-</td>
                        <td>
                            <asp:RadioButton ID="RadioButton1" runat="server" GroupName="a" Text="Male" />
                            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="a" Text="FeMale" />
                            <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">Mobile No:-</td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">Email Id:-</td>
                        <td>
                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">City:-</td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem>--Select City--</asp:ListItem>
                                <asp:ListItem>Sultanpur</asp:ListItem>
                                <asp:ListItem>Kanpur</asp:ListItem>
                                <asp:ListItem>Lucknow</asp:ListItem>
                                <asp:ListItem>Amethi</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">Pin Code :-</td>
                        <td>
                            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">Upload Image:-</td>
                        <td>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">Security Question:-</td>
                        <td style="margin-left: 40px">
                            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="Question" DataValueField="Question">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SalonDbConnectionString %>" SelectCommand="SELECT [Question] FROM [Question]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">Answer:-</td>
                        <td>
                            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">&nbsp;</td>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4" colspan="2">
                            <asp:Label ID="Label1" runat="server" style="text-align: center"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

