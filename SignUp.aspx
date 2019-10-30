<%@ Page Title="" Language="C#" MasterPageFile="~/BasicMaster.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="ShreyDynTravels.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Enter name: <br />
    <asp:TextBox ID="name" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="reqname" ControlToValidate="name" runat="server" ErrorMessage="Enter name!!!" Display="None"></asp:RequiredFieldValidator>
    <br /><br /><br />
    Enter email address: <br />
    <asp:TextBox ID="email" runat="server"></asp:TextBox>
    <asp:RegularExpressionValidator ID="valemail" ControlToValidate="email" ValidationExpression=".*@.*\.com" runat="server" ErrorMessage="Kindly enter valid email address!!!" Display="None"></asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator ID="reqemail" ControlToValidate="email" runat="server" ErrorMessage="Enter email address!!!" Display="None"></asp:RequiredFieldValidator>
    <br /><br /><br />
    Enter username: <br />
    <asp:TextBox ID="uname" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="requname" ControlToValidate="uname" runat="server" ErrorMessage="Enter username!!!" Display="None"></asp:RequiredFieldValidator>
    <br /><br /><br />
   
    Enter password: <br />
    <asp:TextBox ID="pword" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="reqpword" ControlToValidate="pword" runat="server" ErrorMessage="Enter password!!!" Display="None"></asp:RequiredFieldValidator>
    <br /><br /><br />
    Re-enter password: <br />
    <asp:TextBox ID="repword" runat="server" TextMode="Password"></asp:TextBox>
    <asp:CompareValidator ID="valpass" ControlToValidate="repword" ControlToCompare="pword" runat="server" ErrorMessage="Passwords must be same!!!" Display="None"></asp:CompareValidator>
    <br /><br /><br />
    <asp:Button ID="up" runat="server" Text="SUBMIT" onclick="verify_signup"/><br /><br /><br />
    <asp:Label ID="msg" runat="server"></asp:Label>
    <asp:ValidationSummary ID="sum_signup" runat="server" ShowValidationErrors="true" DisplayMode="BulletList"/>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Intro.aspx">Already a User? Sign In</asp:HyperLink>
</asp:Content>
