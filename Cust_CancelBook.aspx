<%@ Page Title="" Language="C#" MasterPageFile="~/custM.master" AutoEventWireup="true" CodeBehind="Cust_CancelBook.aspx.cs" Inherits="ShreyDynTravels.Cust_CancelBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="BodyHolder" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Select Booking Id"></asp:Label> &nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="BkID" DataValueField="BkID" AutoPostBack="True"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:IT_ProjectConnectionString %>" SelectCommand="SELECT * FROM [Booking] WHERE ([Nameuser] = @Nameuser)">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="sks" Name="Nameuser" SessionField="UserID" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    <div>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="BkID" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                BkID:
                <asp:Label ID="BkIDLabel1" runat="server" Text='<%# Eval("BkID") %>' />
                <br />
                IDBus:
                <asp:TextBox ID="IDBusTextBox" runat="server" Text='<%# Bind("IDBus") %>' />
                <br />
                Nameuser:
                <asp:TextBox ID="NameuserTextBox" runat="server" Text='<%# Bind("Nameuser") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                IDBus:
                <asp:TextBox ID="IDBusTextBox" runat="server" Text='<%# Bind("IDBus") %>' />
                <br />
                Nameuser:
                <asp:TextBox ID="NameuserTextBox" runat="server" Text='<%# Bind("Nameuser") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                BkID:
                <asp:Label ID="BkIDLabel" runat="server" Text='<%# Eval("BkID") %>' />
                <br />
                IDBus:
                <asp:Label ID="IDBusLabel" runat="server" Text='<%# Bind("IDBus") %>' />
                <br />
                Nameuser:
                <asp:Label ID="NameuserLabel" runat="server" Text='<%# Bind("Nameuser") %>' />
                <br />

            </ItemTemplate>
        </asp:FormView>
        <asp:Button ID="Button1" runat="server" Text="Delete" OnClick="Button1_Click" /><asp:Label ID="Result" runat="server"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IT_ProjectConnectionString %>" SelectCommand="SELECT * FROM [Booking] WHERE ([BkID] = @BkID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="BkID" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
