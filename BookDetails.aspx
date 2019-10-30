<%@ Page Title="" Language="C#" MasterPageFile="~/custM.master" AutoEventWireup="true" CodeBehind="BookDetails.aspx.cs" Inherits="ShreyDynTravels.BookDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="BodyHolder" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="BkID,BusID" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            BkID:
            <asp:Label ID="BkIDLabel1" runat="server" Text='<%# Eval("BkID") %>' />
            <br />
            BusID:
            <asp:Label ID="BusIDLabel1" runat="server" Text='<%# Eval("BusID") %>' />
            <br />
            StartLoc:
            <asp:TextBox ID="StartLocTextBox" runat="server" Text='<%# Bind("StartLoc") %>' />
            <br />
            EndLoc:
            <asp:TextBox ID="EndLocTextBox" runat="server" Text='<%# Bind("EndLoc") %>' />
            <br />
            Owner:
            <asp:TextBox ID="OwnerTextBox" runat="server" Text='<%# Bind("Owner") %>' />
            <br />
            StartTime:
            <asp:TextBox ID="StartTimeTextBox" runat="server" Text='<%# Bind("StartTime") %>' />
            <br />
            EndTime:
            <asp:TextBox ID="EndTimeTextBox" runat="server" Text='<%# Bind("EndTime") %>' />
            <br />
            Cost:
            <asp:TextBox ID="CostTextBox" runat="server" Text='<%# Bind("Cost") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            StartLoc:
            <asp:TextBox ID="StartLocTextBox" runat="server" Text='<%# Bind("StartLoc") %>' />
            <br />
            EndLoc:
            <asp:TextBox ID="EndLocTextBox" runat="server" Text='<%# Bind("EndLoc") %>' />
            <br />
            Owner:
            <asp:TextBox ID="OwnerTextBox" runat="server" Text='<%# Bind("Owner") %>' />
            <br />
            StartTime:
            <asp:TextBox ID="StartTimeTextBox" runat="server" Text='<%# Bind("StartTime") %>' />
            <br />
            EndTime:
            <asp:TextBox ID="EndTimeTextBox" runat="server" Text='<%# Bind("EndTime") %>' />
            <br />
            Cost:
            <asp:TextBox ID="CostTextBox" runat="server" Text='<%# Bind("Cost") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            BkID:
            <asp:Label ID="BkIDLabel" runat="server" Text='<%# Eval("BkID") %>' />
            <br />
            BusID:
            <asp:Label ID="BusIDLabel" runat="server" Text='<%# Eval("BusID") %>' />
            <br />
            StartLoc:
            <asp:Label ID="StartLocLabel" runat="server" Text='<%# Bind("StartLoc") %>' />
            <br />

            EndLoc:
            <asp:Label ID="EndLocLabel" runat="server" Text='<%# Bind("EndLoc") %>' />
            <br />
            Owner:
            <asp:Label ID="OwnerLabel" runat="server" Text='<%# Bind("Owner") %>' />
            <br />
            StartTime:
            <asp:Label ID="StartTimeLabel" runat="server" Text='<%# Bind("StartTime") %>' />
            <br />
            EndTime:
            <asp:Label ID="EndTimeLabel" runat="server" Text='<%# Bind("EndTime") %>' />
            <br />
            Cost:
            <asp:Label ID="CostLabel" runat="server" Text='<%# Bind("Cost") %>' />
            <br />

        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IT_ProjectConnectionString %>" SelectCommand="SELECT BkID,BusID,StartLoc,EndLoc,Owner,StartTime,EndTime,Cost FROM [Booking] inner join [Bus] on Bus.BusID=Booking.IDBus WHERE ([BkID] = @BkID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="BkID" QueryStringField="BkID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
