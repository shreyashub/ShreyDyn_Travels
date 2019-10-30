<%@ Page Title="" Language="C#" MasterPageFile="~/BasicMaster.Master" AutoEventWireup="true" CodeBehind="Intro.aspx.cs" Inherits="ShreyDynTravels.Intro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="main" style=" background-image:url('~/g1.png')">
        <div id ="log_form">
    <asp:Table ID="Table2" runat="server">
        <asp:TableRow runat="server">
            <asp:TableCell runat="server">
                <asp:Label ID="Label1" runat="server" Text="Username:"></asp:Label> 
 &emsp;
                <asp:TextBox ID="id_box" runat="server"></asp:TextBox>
<br/>
                <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label> 
 &emsp;
                <asp:TextBox ID="pass_box" runat="server"></asp:TextBox>
<br/>
                <asp:Button ID="Button1" runat="server" Text="Login As User" OnClick="Button1_Click"/>
<asp:Button ID="Button2" runat="server" Text="Login As Admin" OnClick="Button2_Click" />
            
</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell runat="server" HorizontalAlign="Center">New User? <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SignUp.aspx">Sign Up</asp:HyperLink>
</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
            <asp:TableCell runat="server" HorizontalAlign="Center">
                Remember Me<asp:CheckBox ID="CheckBox1" runat="server" />
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
            <asp:Label ID="Result" runat="server"></asp:Label>
            </div>
        <div id="image_side"></div>
    </div>
</asp:Content>

