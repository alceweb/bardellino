<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

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
    <asp:Panel ID="pnlPromo" runat="server" Height="20px">
     <div class="wrapper">
         <div id="ei-slider" class="ei-slider">
             <asp:ListView ID="ListView1" SelectedIndex="-1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                 <EmptyDataTemplate>
                     <span></span>
                 </EmptyDataTemplate>
                 <ItemTemplate>
                     <img src='<%# "Images/Promo/" + Eval("Id") + ".jpg"%>' />
                     <div class="ei-title">
                         <a href="#nogo">
                             <h2>'<%# Eval("Titolo") %>'</h2>
                             <h3>'<%# Eval("Promo") %>'</h3>
                         </a>
                     </div>
                 </ItemTemplate>
                 <LayoutTemplate>
                     <ul class="ei-slider-large" id="itemPlaceholderContainer" runat="server" style="">
                         <li runat="server" id="itemPlaceholder" />
                     </ul>
                 </LayoutTemplate>
             </asp:ListView>
             <asp:ListView ID="ListView2" SelectedIndex="-1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                 <EmptyDataTemplate>
                     <span></span>
                 </EmptyDataTemplate>
                 <ItemTemplate>
                     <a href="#nogo"></a>
                     <img src='<%# "Images/Promo/" + Eval("Id") + ".jpg"%>' />
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
        </script>
                 </ItemTemplate>
                 <LayoutTemplate>
                     <ul class="ei-slider-thumbs" id="itemPlaceholderContainer" runat="server" style="">
                         <li runat="server" id="itemPlaceholder" />
                     </ul>
                 </LayoutTemplate>
             </asp:ListView>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnString %>"
                 SelectCommand="SELECT * FROM [bapromo] WHERE ([DataInizio] <= { fn NOW() } AND [DataFine] >= { fn NOW() })"></asp:SqlDataSource>

         </div>
         </div>
    </asp:Panel>
    <br /><br /><br /><hr />
<%--     <div class="wrapper">
         <div id="ei-slider" class="ei-slider">
            <ul class="ei-slider-large">
                <li>
                    <img src="Slideshow/images/large/6.jpg" />
                    <div class="ei-title">
                        <a href="#nogo">
                            <h2>Il Sacro Fonte</h2>
                            <h3>Il catenaccio</h3>
                        </a>
                    </div>
                </li>
                <li>
                    <img src="Slideshow/images/large/1.jpg" />
                    <div class="ei-title">
                        <h2>il parco</h2>
                        <h3>viale alberato</h3>
                    </div>
                </li>
                <li>
                    <img src="Slideshow/images/large/2.jpg" />
                    <div class="ei-title">
                        <h2>Il Sacro Fonte</h2>
                        <h3>La vasca della Fonte</h3>
                    </div>
                </li>
                <li>
                    <img src="Slideshow/images/large/3.jpg" />
                    <div class="ei-title">
                        <h2>L'esterno</h2>
                        <h3>Il porticato</h3>
                    </div>
                </li>
                <li>
                    <img src="Slideshow/images/large/4.jpg" />
                    <div class="ei-title">
                        <h2>Il Sacro Fonte</h2>
                        <h3>La vasca della Fonte</h3>
                    </div>
                </li>
                <li>
                    <img src="Slideshow/images/large/5.jpg" />
                    <div class="ei-title">
                        <h2>Il Sacro Fonte</h2>
                        <h3>La scure ferale</h3>
                    </div>
                </li>
                <li>
                    <img src="Slideshow/images/large/7.jpg" />
                    <div class="ei-title">
                        <h2>Il piazzale</h2>
                        <h3 >Obelisco, particolare</h3>
                    </div>
                </li>
            </ul>
            <!-- ei-slider-large -->
            <ul class="ei-slider-thumbs">

                <li><a href="#">Slide 6</a><img src="Slideshow/images/thumbs/6.jpg" alt="thumb06" /></li>
                <li><a href="#">Slide 1</a><img src="Slideshow/images/thumbs/1.jpg" alt="thumb01" /></li>
                <li><a href="#">Slide 2</a><img src="Slideshow/images/thumbs/2.jpg" alt="thumb02" /></li>
                <li><a href="#">Slide 3</a><img src="Slideshow/images/thumbs/3.jpg" alt="thumb03" /></li>
                <li><a href="#">Slide 4</a><img src="Slideshow/images/thumbs/4.jpg" alt="thumb04" /></li>
                <li><a href="#">Slide 5</a><img src="Slideshow/images/thumbs/5.jpg" alt="thumb05" /></li>
                <li><a href="#">Slide 7</a><img src="Slideshow/images/thumbs/7.jpg" alt="thumb07" /></li>
            </ul>
            <!-- ei-slider-thumbs -->
        </div>
        <!-- ei-slider -->--%>
    </div>
    <!-- wrapper -->
</asp:Content>

