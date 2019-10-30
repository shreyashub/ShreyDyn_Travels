<%@ Page Title="" Language="C#" MasterPageFile="~/custM.master" AutoEventWireup="true" CodeBehind="Cust_Find.aspx.cs" Inherits="ShreyDynTravels.Cust_Find" %>
<asp:Content ID="Content1" ContentPlaceHolderID="BodyHolder" runat="server">
    <div>
        <div>
            <asp:SqlDataSource ID="ListFiller" runat="server" ConnectionString="<%$ ConnectionStrings:IT_ProjectConnectionString %>" SelectCommand="SELECT * FROM [Bus]"></asp:SqlDataSource>
            <asp:Label ID="Label1" runat="server" Text="From:"></asp:Label>
            <asp:DropDownList ID="FromList" runat="server" AppendDataBoundItems="true" DataSourceID="ListFiller" DataTextField="StartLoc" DataValueField="StartLoc"></asp:DropDownList>
            <asp:Label ID="Label2" runat="server" Text="To:"></asp:Label>
            <asp:DropDownList ID="ToList" runat="server" AppendDataBoundItems="true" DataSourceID="ListFiller" DataTextField="EndLoc" DataValueField="EndLoc"></asp:DropDownList>
            <asp:Label ID="Label3" runat="server" Text="Date:"></asp:Label>
            <asp:Calendar ID="Calendar1" runat="server" Height="133px" Width="245px" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" NextPrevFormat="FullMonth" align>
            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
            <TodayDayStyle BackColor="#CCCCCC" />
        </asp:Calendar>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Company:"></asp:Label>
            <asp:DropDownList ID="CompanyList" runat="server" AppendDataBoundItems="true" DataSourceID="ListFiller" DataTextField="Owner" DataValueField="Owner"></asp:DropDownList>
            <asp:Label ID="Label5" runat="server" Text="Depart Time:"></asp:Label>
            <asp:DropDownList ID="DTDownList" runat="server" AppendDataBoundItems="true" DataSourceID="ListFiller" DataTextField="StartTime" DataValueField="StartTime"></asp:DropDownList>
            <asp:Label ID="Label6" runat="server" Text="Arrival Time:"></asp:Label>
            <asp:DropDownList ID="ATDownList" runat="server" AppendDataBoundItems="true" DataSourceID="ListFiller" DataTextField="EndTime" DataValueField="EndTime"></asp:DropDownList>
            <asp:Button ID="Button1" runat="server" Text="Search" />
        </div>
        <div>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" AllowSorting="True">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="BusID" HeaderText="BusID" SortExpression="BusID" />
                    <asp:BoundField DataField="StartLoc" HeaderText="StartLoc" SortExpression="StartLoc" />
                    <asp:BoundField DataField="EndLoc" HeaderText="EndLoc" SortExpression="EndLoc" />
                    <asp:BoundField DataField="Owner" HeaderText="Owner" SortExpression="Owner" />
                    <asp:BoundField DataField="Capacity" HeaderText="Capacity" SortExpression="Capacity" />
                    <asp:BoundField DataField="EndTime" HeaderText="EndTime" SortExpression="EndTime" />
                    <asp:BoundField DataField="StartTime" HeaderText="StartTime" SortExpression="StartTime" />
                    <asp:BoundField DataField="Cost" HeaderText="Cost" SortExpression="Cost" />
                    <asp:BoundField DataField="DoJ" HeaderText="DoJ" SortExpression="DoJ" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>
            <asp:Button ID="Button2" runat="server" Text="BOOK" OnClick="Button2_Click" />
            <asp:Label ID="Result" runat="server"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IT_ProjectConnectionString %>" SelectCommand="SELECT [BusID],[StartLoc], [EndLoc], [Owner], [Capacity], [EndTime], [StartTime], [Cost], [DoJ] FROM [Bus] WHERE (([Capacity] &gt; @Capacity) AND ([DoJ] = @DoJ) AND ([EndLoc] = @EndLoc) AND ([EndTime] between @EndTime1 and @EndTime2)  AND ([StartLoc] = @StartLoc) AND ([StartTime] BETWEEN @StartTime1 and @StartTime2))" FilterExpression="[Owner] LIKE '%{0}%'">
                <SelectParameters>
                    <asp:Parameter DefaultValue="0" Name="Capacity" Type="Int32" />
                    <asp:ControlParameter ControlID="Calendar1" DbType="Date" Name="DoJ" PropertyName="SelectedDate" />
                    <asp:ControlParameter ControlID="ToList" Name="EndLoc" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="ATDownList" DbType="Time" Name="EndTime1" PropertyName="SelectedValue" DefaultValue="0:0:0" />
                    <asp:ControlParameter ControlID="ATDownList" DbType="Time" Name="EndTime2" PropertyName="SelectedValue" DefaultValue="23:59:0" />
             
                    <asp:ControlParameter ControlID="FromList" Name="StartLoc" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DTDownList" DbType="Time" Name="StartTime1" PropertyName="SelectedValue" DefaultValue="0:0:0"/>
                    <asp:ControlParameter ControlID="DTDownList" DbType="Time" Name="StartTime2" PropertyName="SelectedValue" DefaultValue="23:59:0"/>
                </SelectParameters>
                <FilterParameters>
                    <asp:ControlParameter ControlID="CompanyList" Name="Owner" PropertyName="SelectedValue" Type="String"  />
                </FilterParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
