<%@ Page Title="" Language="C#" MasterPageFile="~/adminM.master" AutoEventWireup="true" CodeBehind="Ad_BusList.aspx.cs" Inherits="ShreyDynTravels.Ad_BusList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="BodyHolder" runat="server">
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="BusID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="BusID" HeaderText="BusID" InsertVisible="False" ReadOnly="True" SortExpression="BusID" />
            <asp:BoundField DataField="StartLoc" HeaderText="StartLoc" SortExpression="StartLoc" />
            <asp:BoundField DataField="EndLoc" HeaderText="EndLoc" SortExpression="EndLoc" />
            <asp:BoundField DataField="Capacity" HeaderText="Capacity" SortExpression="Capacity" />
            <asp:BoundField DataField="Owner" HeaderText="Owner" SortExpression="Owner" />
            <asp:BoundField DataField="StartTime" HeaderText="StartTime" SortExpression="StartTime" />
            <asp:BoundField DataField="EndTime" HeaderText="EndTime" SortExpression="EndTime" />
            <asp:BoundField DataField="DoJ" HeaderText="DoJ" SortExpression="DoJ" />
            <asp:BoundField DataField="Cost" HeaderText="Cost" SortExpression="Cost" />
            <asp:CommandField ShowEditButton="true" />
            <asp:CommandField ShowCancelButton="true" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IT_ProjectConnectionString %>" SelectCommand="SELECT [BusID], [StartLoc], [EndLoc], [Capacity], [Owner], [StartTime], [EndTime], [DoJ], [Cost] FROM [Bus]"
         UpdateCommand="UPDATE Bus SET StartLoc=@StartLoc, EndLoc=@EndLoc, Capacity=@Capacity, Owner=@Owner, StartTime=@StartTime, EndTime=@EndTime, DoJ=@DoJ, Cost=@Cost WHERE BusID=@BusID"></asp:SqlDataSource>
    
</asp:Content>
