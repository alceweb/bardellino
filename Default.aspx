<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<asp:Content runat="server" ID="HeadContent" ContentPlaceHolderID="HeadContent">
    <link href="Slideshow/css/demo.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="Slideshow/css/style.css" />
        <link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300|Playfair+Display:400italic' rel='stylesheet' type='text/css' />
		<noscript>
			<link rel="stylesheet" type="text/css" href="Slideshow/css/noscript.css" />
		</noscript>
</asp:Content>
<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
     <div class="wrapper">
         <div id="ei-slider" class="ei-slider">
            <ul class="ei-slider-large">
                <li>
                    <img src="Slideshow/images/large/1.jpg" />
                    <div class="ei-title">
                        <h2>Foto uno</h2>
                        <h3>Descrizione foto uno</h3>
                    </div>
                </li>
                <li>
                    <img src="Slideshow/images/large/2.jpg" />
                    <div class="ei-title">
                        <h2>Foto due</h2>
                        <h3>Descrizione foto due</h3>
                    </div>
                </li>
                <li>
                    <img src="Slideshow/images/large/3.jpg" />
                    <div class="ei-title">
                        <h2>Foto 3</h2>
                        <h3>Descrizione foto3</h3>
                    </div>
                </li>
                <li>
                    <img src="Slideshow/images/large/4.jpg" />
                    <div class="ei-title">
                        <h2>Foto quattro</h2>
                        <h3>Descrizione foto quattro</h3>
                    </div>
                </li>
                <li>
                    <img src="Slideshow/images/large/5.jpg" />
                    <div class="ei-title">
                        <h2>Foto cinque</h2>
                        <h3>Descrizione foto cinque</h3>
                    </div>
                </li>
                <li>
                    <img src="Slideshow/images/large/6.jpg" />
                    <div class="ei-title">
                            <h2>Foto sei</h2>
                            <h3>Descrizione foto sei</h3>
                    </div>
                </li>
                <li>
                    <img src="Slideshow/images/large/7.jpg" />
                    <div class="ei-title">
                        <h2>Foto sette</h2>
                        <h3 >Descrizione foto sette</h3>
                    </div>
                </li>
            </ul>
            <!-- ei-slider-large -->
            <ul class="ei-slider-thumbs">
<%--                <li class="ei-slider-element">Current</li>--%>
                <li><a href="#">Slide 1</a><img src="Slideshow/images/thumbs/1.jpg" /></li>
                <li><a href="#">Slide 2</a><img src="Slideshow/images/thumbs/2.jpg" /></li>
                <li><a href="#">Slide 3</a><img src="Slideshow/images/thumbs/3.jpg" /></li>
                <li><a href="#">Slide 4</a><img src="Slideshow/images/thumbs/4.jpg" /></li>
                <li><a href="#">Slide 5</a><img src="Slideshow/images/thumbs/5.jpg" /></li>
                <li><a href="#">Slide 6</a><img src="Slideshow/images/thumbs/6.jpg" /></li>
                <li><a href="#">Slide 7</a><img src="Slideshow/images/thumbs/7.jpg" /></li>
            </ul>
            <!-- ei-slider-thumbs -->
        </div>
        <!-- ei-slider -->
    </div>
    <!-- wrapper -->
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
    <div>
        <asp:ListView ID="ListView1" runat="server" SelectedIndex="-1" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <EmptyDataTemplate>
                <span>Non è stato restituito alcun dato.</span>
            </EmptyDataTemplate>
            <ItemTemplate>
                <a href='<%# "Content.aspx?Id=" + Eval("Id") %>'>'<%# Eval("Titolo") %>'</a>
                </span>
            </ItemTemplate>
            <LayoutTemplate>
                <div class="PromoDef" id="itemPlaceholderContainer" runat="server" style="">
                    <span runat="server" id="itemPlaceholder" />
                </div>
            </LayoutTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnString %>" SelectCommand="SELECT * FROM [bapromo] WHERE ([Id] = @Id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ListView1" Name="Id" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnString %>"
            SelectCommand="SELECT * FROM [bapromo] WHERE ([DataInizio] <= { fn NOW() } AND [DataFine] >= { fn NOW() })"></asp:SqlDataSource>
<%--    <asp:Panel ID="pnlPromo" runat="server" Height="20px">
    </asp:Panel>--%>
</asp:Content>