<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Test1.aspx.cs" Inherits="Test1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <link href="Slideshow/css/demo.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="Slideshow/css/style.css" />
        <link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300|Playfair+Display:400italic' rel='stylesheet' type='text/css' />
		<noscript>
			<link rel="stylesheet" type="text/css" href="Slideshow/css/noscript.css" />
		</noscript>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="wrapper">
        <div id="ei-slider" class="ei-slider">
                <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                            <img runat="server" src='<%# "Slideshow/images/large/" + Eval("Id") + ".jpg" %>' />
                            <div runat="server" class="ei-title">
                                <h2 runat="server">
                                    <asp:Label ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' />
                                </h2>
                                <h3 runat="server">
                                    <asp:Label ID="TestoLabel" runat="server" Text='<%# Eval("Testo") %>' />
                                </h3>
                            </div>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <ul class="ei-slider-large" runat="server" id="itemPlaceholderContainer" >
                            <li runat="server" id="itemPlaceholder" />
                        </ul>

                    </LayoutTemplate>
                </asp:ListView>
                <asp:ListView ID="ListView2" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource2">
                    <ItemTemplate>
                            <a runat="server" href="#"></a><img runat="server" src='<%# "Slideshow/images/large/" + Eval("Id") + ".jpg" %>' />
                    </ItemTemplate>
                    <LayoutTemplate>
                        <ul class="ei-slider-thumbs" runat="server" id="itemPlaceholderContainer">
                            <li class="ei-slider-element" runat="server">Current</li>
                            <li runat="server"  id="itemPlaceholder" />
                        </ul>
                    </LayoutTemplate>
                </asp:ListView>
        </div>
    </div>
         <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.0/jquery.min.js"></script>
        <script type="text/javascript" src="Slideshow/js/jquery.eislideshow.js"></script>
        <script type="text/javascript" src="Slideshow/js/jquery.easing.1.3.js"></script>
        <script type="text/javascript">
            $(function () {
                $('#ei-slider').eislideshow({
                    animation: 'center',
                    autoplay: true,
                    slideshow_interval: 3000,
                    titlesFactor: 0
                });
            });
        </script><br /><br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnString %>" SelectCommand="SELECT * FROM [Slide] ORDER BY [Id]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnString %>" SelectCommand="SELECT * FROM [Slide] ORDER BY [Id]"></asp:SqlDataSource>
</asp:Content>

