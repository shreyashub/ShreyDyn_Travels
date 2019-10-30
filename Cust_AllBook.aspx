<%@ Page Title="" Language="C#" MasterPageFile="~/custM.master" AutoEventWireup="true" CodeBehind="Cust_AllBook.aspx.cs" Inherits="ShreyDynTravels.Cust_AllBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="BodyHolder" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="BkID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="BkID" HeaderText="Booking ID" InsertVisible="False" ReadOnly="True" SortExpression="BkID" />
            <asp:BoundField DataField="StartLoc" HeaderText="StartLoc" SortExpression="StartLoc" />
            <asp:BoundField DataField="EndLoc" HeaderText="EndLoc" SortExpression="EndLoc" />
            <asp:BoundField DataField="Owner" HeaderText="Owner" SortExpression="Owner" />
            <asp:BoundField DataField="EndTime" HeaderText="EndTime" SortExpression="EndTime" />
            <asp:BoundField DataField="StartTime" HeaderText="StartTime" SortExpression="StartTime" />
            <asp:BoundField DataField="Cost" HeaderText="Cost" SortExpression="Cost" />
            <asp:BoundField DataField="DoJ" HeaderText="DoJ" SortExpression="DoJ" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IT_ProjectConnectionString %>" SelectCommand="SELECT * FROM [Booking] inner join [Bus] on Bus.BusID=Booking.IDBus WHERE ([Nameuser] = @Nameuser)">
        <SelectParameters>
            <asp:SessionParameter Name="Nameuser" SessionField="UserID" Type="String" DefaultValue="sks"/>
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
</asp:Content>
