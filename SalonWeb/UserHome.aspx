<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserHome.aspx.cs" Inherits="UserHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: right;
        }
        .auto-style3 {
            width: 555px;
        }
        .auto-style5 {
        }
        .auto-style6 {
            text-align: left;
        }
        .auto-style7 {
            width: 214px;
        }
        .auto-style8 {
            text-decoration: underline;
            text-align: center;
        }
        .auto-style9 {
            width: 173px;
        }
        .auto-style11 {
            width: 500px;
        }
    .auto-style12 {
        width: 818px;
    }
    .auto-style13 {
        width: 163px;
    }
    .auto-style14 {
        text-align: right;
        width: 163px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td style="text-align: right" class="auto-style13">Welcome to
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style6" colspan="2">
                <table class="auto-style1">
                    <tr>
                        <td>
                            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Book Appointment</asp:LinkButton>
                        </td>
                        <td>
                            <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Appointment History</asp:LinkButton>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
            <td class="auto-style14">
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">LogOut</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="3">
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style8" colspan="2"><strong>Book Your Time</strong></td>
                                <td class="auto-style11">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style9">Customer Name:- </td>
                                <td>
                                    <asp:Label ID="Label2" runat="server" Text="Label" style="font-weight: 700"></asp:Label>
                                </td>
                                <td class="auto-style11">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style9">Cutomer Mobile No:-</td>
                                <td>
                                    <asp:Label ID="Label4" runat="server" style="font-weight: 700" Text="Label"></asp:Label>
                                </td>
                                <td class="auto-style11">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style9">Select Service:-</td>
                                <td>
                                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Hair Cut" />
                                    <asp:CheckBox ID="CheckBox2" runat="server" Text="Saving" />
                                    <asp:CheckBox ID="CheckBox3" runat="server" Text="Facial" />
                                    <asp:CheckBox ID="CheckBox4" runat="server" Text="Hair Color" />
                                    <asp:Label ID="Label5" runat="server" Visible="False"></asp:Label>
                                </td>
                                <td class="auto-style11">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style9">Date of Visit:-</td>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
                                </td>
                                <td class="auto-style11">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style9">Perfered Timming:-</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList1" runat="server">
                                        <asp:ListItem>--Select Timing--</asp:ListItem>
                                        <asp:ListItem>9:00 AM to 11:00 AM</asp:ListItem>
                                        <asp:ListItem>11:00 AM to 1:00 PM</asp:ListItem>
                                        <asp:ListItem>1:00 PM to 3:00 PM</asp:ListItem>
                                        <asp:ListItem>3:00 PM to 5:00 PM</asp:ListItem>
                                        <asp:ListItem>5:00 PM to 7:00 PM</asp:ListItem>
                                        <asp:ListItem>7:00 PM to 9:00 PM</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td class="auto-style11">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style9">Select City:-</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
                                        <asp:ListItem>--Select City--</asp:ListItem>
                                        <asp:ListItem>Lucknow</asp:ListItem>
                                        <asp:ListItem>Kanpur</asp:ListItem>
                                        <asp:ListItem>Amethi</asp:ListItem>
                                        <asp:ListItem>Sultanpur</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td class="auto-style11">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style9">Select Salon:-</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SalonDbConnectionString %>" SelectCommand="SELECT * FROM [SRegis] WHERE (([City] = @City) AND ([Status] = @Status))">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="DropDownList2" Name="City" PropertyName="SelectedValue" Type="String" />
                                            <asp:Parameter DefaultValue="Active" Name="Status" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </td>
                                <td class="auto-style11">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style9">&nbsp;</td>
                                <td>
                                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                                </td>
                                <td class="auto-style11">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style9">&nbsp;</td>
                                <td>
                                    <asp:Label ID="Label6" runat="server" Text="Label" Visible="False"></asp:Label>
                                </td>
                                <td class="auto-style11">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style9">&nbsp;</td>
                                <td>
                                    <asp:Label ID="Label3" runat="server" style="font-weight: 700"></asp:Label>
                                </td>
                                <td class="auto-style11">&nbsp;</td>
                            </tr>
                        </table>
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                <asp:BoundField DataField="CName" HeaderText="CName" SortExpression="CName" />
                                <asp:BoundField DataField="CMobile" HeaderText="CMobile" SortExpression="CMobile" />
                                <asp:BoundField DataField="Service" HeaderText="Service" SortExpression="Service" />
                                <asp:BoundField DataField="Dateofvisit" HeaderText="Dateofvisit" SortExpression="Dateofvisit" />
                                <asp:BoundField DataField="Dateofbooking" HeaderText="Dateofbooking" SortExpression="Dateofbooking" />
                                <asp:BoundField DataField="Timming" HeaderText="Timming" SortExpression="Timming" />
                                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                                <asp:BoundField DataField="Salon" HeaderText="Salon" SortExpression="Salon" />
                                <asp:BoundField DataField="BookingId" HeaderText="BookingId" SortExpression="BookingId" />
                                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SalonDbConnectionString %>" DeleteCommand="DELETE FROM [Booking] WHERE [Id] = @original_Id AND (([CName] = @original_CName) OR ([CName] IS NULL AND @original_CName IS NULL)) AND (([CMobile] = @original_CMobile) OR ([CMobile] IS NULL AND @original_CMobile IS NULL)) AND (([Service] = @original_Service) OR ([Service] IS NULL AND @original_Service IS NULL)) AND (([Dateofvisit] = @original_Dateofvisit) OR ([Dateofvisit] IS NULL AND @original_Dateofvisit IS NULL)) AND (([Dateofbooking] = @original_Dateofbooking) OR ([Dateofbooking] IS NULL AND @original_Dateofbooking IS NULL)) AND (([Timming] = @original_Timming) OR ([Timming] IS NULL AND @original_Timming IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([Salon] = @original_Salon) OR ([Salon] IS NULL AND @original_Salon IS NULL)) AND (([BookingId] = @original_BookingId) OR ([BookingId] IS NULL AND @original_BookingId IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL)) AND (([UserName] = @original_UserName) OR ([UserName] IS NULL AND @original_UserName IS NULL))" InsertCommand="INSERT INTO [Booking] ([CName], [CMobile], [Service], [Dateofvisit], [Dateofbooking], [Timming], [City], [Salon], [BookingId], [Status], [UserName]) VALUES (@CName, @CMobile, @Service, @Dateofvisit, @Dateofbooking, @Timming, @City, @Salon, @BookingId, @Status, @UserName)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Booking] WHERE ([UserName] = @UserName)" UpdateCommand="UPDATE [Booking] SET [CName] = @CName, [CMobile] = @CMobile, [Service] = @Service, [Dateofvisit] = @Dateofvisit, [Dateofbooking] = @Dateofbooking, [Timming] = @Timming, [City] = @City, [Salon] = @Salon, [BookingId] = @BookingId, [Status] = @Status, [UserName] = @UserName WHERE [Id] = @original_Id AND (([CName] = @original_CName) OR ([CName] IS NULL AND @original_CName IS NULL)) AND (([CMobile] = @original_CMobile) OR ([CMobile] IS NULL AND @original_CMobile IS NULL)) AND (([Service] = @original_Service) OR ([Service] IS NULL AND @original_Service IS NULL)) AND (([Dateofvisit] = @original_Dateofvisit) OR ([Dateofvisit] IS NULL AND @original_Dateofvisit IS NULL)) AND (([Dateofbooking] = @original_Dateofbooking) OR ([Dateofbooking] IS NULL AND @original_Dateofbooking IS NULL)) AND (([Timming] = @original_Timming) OR ([Timming] IS NULL AND @original_Timming IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([Salon] = @original_Salon) OR ([Salon] IS NULL AND @original_Salon IS NULL)) AND (([BookingId] = @original_BookingId) OR ([BookingId] IS NULL AND @original_BookingId IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL)) AND (([UserName] = @original_UserName) OR ([UserName] IS NULL AND @original_UserName IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_Id" Type="Int32" />
                                <asp:Parameter Name="original_CName" Type="String" />
                                <asp:Parameter Name="original_CMobile" Type="String" />
                                <asp:Parameter Name="original_Service" Type="String" />
                                <asp:Parameter DbType="Date" Name="original_Dateofvisit" />
                                <asp:Parameter Name="original_Dateofbooking" Type="DateTime" />
                                <asp:Parameter Name="original_Timming" Type="String" />
                                <asp:Parameter Name="original_City" Type="String" />
                                <asp:Parameter Name="original_Salon" Type="String" />
                                <asp:Parameter Name="original_BookingId" Type="String" />
                                <asp:Parameter Name="original_Status" Type="String" />
                                <asp:Parameter Name="original_UserName" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="CName" Type="String" />
                                <asp:Parameter Name="CMobile" Type="String" />
                                <asp:Parameter Name="Service" Type="String" />
                                <asp:Parameter DbType="Date" Name="Dateofvisit" />
                                <asp:Parameter Name="Dateofbooking" Type="DateTime" />
                                <asp:Parameter Name="Timming" Type="String" />
                                <asp:Parameter Name="City" Type="String" />
                                <asp:Parameter Name="Salon" Type="String" />
                                <asp:Parameter Name="BookingId" Type="String" />
                                <asp:Parameter Name="Status" Type="String" />
                                <asp:Parameter Name="UserName" Type="String" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="Label1" Name="UserName" PropertyName="Text" Type="String" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="CName" Type="String" />
                                <asp:Parameter Name="CMobile" Type="String" />
                                <asp:Parameter Name="Service" Type="String" />
                                <asp:Parameter DbType="Date" Name="Dateofvisit" />
                                <asp:Parameter Name="Dateofbooking" Type="DateTime" />
                                <asp:Parameter Name="Timming" Type="String" />
                                <asp:Parameter Name="City" Type="String" />
                                <asp:Parameter Name="Salon" Type="String" />
                                <asp:Parameter Name="BookingId" Type="String" />
                                <asp:Parameter Name="Status" Type="String" />
                                <asp:Parameter Name="UserName" Type="String" />
                                <asp:Parameter Name="original_Id" Type="Int32" />
                                <asp:Parameter Name="original_CName" Type="String" />
                                <asp:Parameter Name="original_CMobile" Type="String" />
                                <asp:Parameter Name="original_Service" Type="String" />
                                <asp:Parameter DbType="Date" Name="original_Dateofvisit" />
                                <asp:Parameter Name="original_Dateofbooking" Type="DateTime" />
                                <asp:Parameter Name="original_Timming" Type="String" />
                                <asp:Parameter Name="original_City" Type="String" />
                                <asp:Parameter Name="original_Salon" Type="String" />
                                <asp:Parameter Name="original_BookingId" Type="String" />
                                <asp:Parameter Name="original_Status" Type="String" />
                                <asp:Parameter Name="original_UserName" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </asp:View>
                    <asp:View ID="View3" runat="server">
                    </asp:View>
                    <br />
                </asp:MultiView>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

