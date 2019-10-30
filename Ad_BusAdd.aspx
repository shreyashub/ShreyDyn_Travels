<%@ Page Title="" Language="C#" MasterPageFile="~/adminM.master" AutoEventWireup="true" CodeBehind="Ad_BusAdd.aspx.cs" Inherits="ShreyDynTravels.Ad_BusAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="BodyHolder" runat="server">
    <div>

        <asp:Table ID="Table2" runat="server">
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">Start Location</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="SL" runat="server">
                    </asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">End Location</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="EL" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">Company</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="Comp" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">Capacity</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="Cap" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">Cost</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="cost" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">Start Time</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="ST" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">End Time</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="ET" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">Start Date</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
            <OtherMonthDayStyle ForeColor="#CC9966" />
            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
            <SelectorStyle BackColor="#FFCC66" />
            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
        </asp:Calendar>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click"/>
        <asp:Label ID="Result"  runat="server"/>
    </div>
</asp:Content>
