<%@ Page Title="" Language="C#" MasterPageFile="~/adminM.master" AutoEventWireup="true" CodeBehind="Ad_BusRemove.aspx.cs" Inherits="ShreyDynTravels.Ad_BusRemove" %>
<asp:Content ID="Content1" ContentPlaceHolderID="BodyHolder" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Select Bus Id"></asp:Label> &nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="BusID" DataValueField="BusID" AutoPostBack="True"></asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:IT_ProjectConnectionString %>" SelectCommand="SELECT [BusID] FROM [Bus]"></asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="BusID">
        <EditItemTemplate>
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
            Capacity:
            <asp:TextBox ID="CapacityTextBox" runat="server" Text='<%# Bind("Capacity") %>' />
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
            DoJ:
            <asp:TextBox ID="DoJTextBox" runat="server" Text='<%# Bind("DoJ") %>' />
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
            Capacity:
            <asp:TextBox ID="CapacityTextBox" runat="server" Text='<%# Bind("Capacity") %>' />
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
            DoJ:
            <asp:TextBox ID="DoJTextBox" runat="server" Text='<%# Bind("DoJ") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
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
            Capacity:
            <asp:Label ID="CapacityLabel" runat="server" Text='<%# Bind("Capacity") %>' />
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
            DoJ:
            <asp:Label ID="DoJLabel" runat="server" Text='<%# Bind("DoJ") %>' />
            <br />

        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IT_ProjectConnectionString %>" SelectCommand="SELECT [BusID], [StartLoc], [EndLoc], [Owner], [Capacity], [StartTime], [EndTime], [Cost], [DoJ] FROM [Bus] WHERE ([BusID] = @BusID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="1" Name="BusID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Button ID="Button1" runat="server" Text="Delete" OnClick="Button1_Click" /><asp:Label ID="Result" runat="server"></asp:Label>
</asp:Content>
