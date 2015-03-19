<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <link href="Content/nivo-slider.css" rel="stylesheet" />
    <link href="Content/style.css" rel="stylesheet" />
    <script src="Scripts/jquery-2.1.1.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <p style="padding-top:50px">qui</p>
    <asp:FileUpload ID="FileUpload1" AllowMultiple="true"  runat="server" />
    <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" Text="Button" />
    <asp:Label ID="LblUploadOk" runat="server" Text="Label"></asp:Label>
</asp:Content>

