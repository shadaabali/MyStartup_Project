<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SalonHome.aspx.cs" Inherits="SalonHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>Welcome To
                <asp:Label ID="Label1" runat="server" style="font-weight: 700" Text="Label"></asp:Label>
                <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td style="text-align: right">
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">LogOut</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <table class="auto-style1">
                    <tr>
                        <td>
                            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">View All Pending Bookings</asp:LinkButton>
                        </td>
                        <td>
                            <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">View All Bookings</asp:LinkButton>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" GridLines="Vertical" Width="100%">
                            <AlternatingRowStyle BackColor="#DCDCDC" />
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
                                <asp:TemplateField HeaderText="Action">
                                    <ItemTemplate>
                                        <table class="auto-style1">
                                            <tr>
                                                <td style="text-align: center">
                                                    <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">Approved</asp:LinkButton>
                                                </td>
                                            </tr>
                                        </table>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#0000A9" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#000065" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SalonDbConnectionString %>" DeleteCommand="DELETE FROM [Booking] WHERE [Id] = @original_Id AND (([CName] = @original_CName) OR ([CName] IS NULL AND @original_CName IS NULL)) AND (([CMobile] = @original_CMobile) OR ([CMobile] IS NULL AND @original_CMobile IS NULL)) AND (([Service] = @original_Service) OR ([Service] IS NULL AND @original_Service IS NULL)) AND (([Dateofvisit] = @original_Dateofvisit) OR ([Dateofvisit] IS NULL AND @original_Dateofvisit IS NULL)) AND (([Dateofbooking] = @original_Dateofbooking) OR ([Dateofbooking] IS NULL AND @original_Dateofbooking IS NULL)) AND (([Timming] = @original_Timming) OR ([Timming] IS NULL AND @original_Timming IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([Salon] = @original_Salon) OR ([Salon] IS NULL AND @original_Salon IS NULL)) AND (([BookingId] = @original_BookingId) OR ([BookingId] IS NULL AND @original_BookingId IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL)) AND (([UserName] = @original_UserName) OR ([UserName] IS NULL AND @original_UserName IS NULL))" InsertCommand="INSERT INTO [Booking] ([CName], [CMobile], [Service], [Dateofvisit], [Dateofbooking], [Timming], [City], [Salon], [BookingId], [Status], [UserName]) VALUES (@CName, @CMobile, @Service, @Dateofvisit, @Dateofbooking, @Timming, @City, @Salon, @BookingId, @Status, @UserName)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Booking] WHERE (([Salon] = @Salon) AND ([Status] = @Status))" UpdateCommand="UPDATE [Booking] SET [CName] = @CName, [CMobile] = @CMobile, [Service] = @Service, [Dateofvisit] = @Dateofvisit, [Dateofbooking] = @Dateofbooking, [Timming] = @Timming, [City] = @City, [Salon] = @Salon, [BookingId] = @BookingId, [Status] = @Status, [UserName] = @UserName WHERE [Id] = @original_Id AND (([CName] = @original_CName) OR ([CName] IS NULL AND @original_CName IS NULL)) AND (([CMobile] = @original_CMobile) OR ([CMobile] IS NULL AND @original_CMobile IS NULL)) AND (([Service] = @original_Service) OR ([Service] IS NULL AND @original_Service IS NULL)) AND (([Dateofvisit] = @original_Dateofvisit) OR ([Dateofvisit] IS NULL AND @original_Dateofvisit IS NULL)) AND (([Dateofbooking] = @original_Dateofbooking) OR ([Dateofbooking] IS NULL AND @original_Dateofbooking IS NULL)) AND (([Timming] = @original_Timming) OR ([Timming] IS NULL AND @original_Timming IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([Salon] = @original_Salon) OR ([Salon] IS NULL AND @original_Salon IS NULL)) AND (([BookingId] = @original_BookingId) OR ([BookingId] IS NULL AND @original_BookingId IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL)) AND (([UserName] = @original_UserName) OR ([UserName] IS NULL AND @original_UserName IS NULL))">
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
                                <asp:ControlParameter ControlID="Label2" Name="Salon" PropertyName="Text" Type="String" />
                                <asp:Parameter DefaultValue="Pending" Name="Status" Type="String" />
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
                    <asp:View ID="View2" runat="server">
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource2" Width="100%">
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
                            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                            <RowStyle BackColor="White" ForeColor="#330099" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                            <SortedAscendingCellStyle BackColor="#FEFCEB" />
                            <SortedAscendingHeaderStyle BackColor="#AF0101" />
                            <SortedDescendingCellStyle BackColor="#F6F0C0" />
                            <SortedDescendingHeaderStyle BackColor="#7E0000" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SalonDbConnectionString %>" SelectCommand="SELECT * FROM [Booking] WHERE ([Salon] = @Salon)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="Label2" Name="Salon" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </asp:View>
                    <br />
                </asp:MultiView>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

