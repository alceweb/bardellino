<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Padella.aspx.cs" Inherits="Padella" %>
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
         <div id="ei-slider" style="z-index:0" class="ei-slider">
             <ul class="ei-slider-large">
                 <asp:Repeater ID="lista" runat="server" EnableTheming="False">
                     <ItemTemplate>
                         <li>
                             <img style="margin: 5px; height: 100px; float: left" src='<%# (Container.DataItem as string).Substring(Server.MapPath("~/").Length).Replace("\\", "/") %>' />
                             <div class="ei-title">
                             <h2></h2>
                             <h3></h3>

                             </div>
                         </li>
                     </ItemTemplate>
                 </asp:Repeater>

             </ul>
             <ul class="ei-slider-thumbs">
                 <li class="ei-slider-element">Current</li>
                 <asp:Repeater ID="lista1" runat="server" EnableTheming="False">
                     <ItemTemplate>
                         <li><a href="#"></a>
                             <img style="margin: 5px; height: 100px; float: left" src='<%# (Container.DataItem as string).Substring(Server.MapPath("~/").Length).Replace("\\", "/") %>' />
                         </li>
                     </ItemTemplate>
                 </asp:Repeater>
             </ul>
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
    <div style="margin-top:480px" >
<h2>La padella e la brace</h2>
    <h3>Descrizione della Padella e la Brace</h3>
<%--        <asp:ListView ID="ListView1" runat="server" SelectedIndex="-1" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <EmptyDataTemplate>
                <span></span>
            </EmptyDataTemplate>
            <ItemTemplate>
                 - <a href='<%# "Content.aspx?Id=" + Eval("Id") %>'>'<%# Eval("Titolo") %>'</a>
                </span>
            </ItemTemplate>
            <LayoutTemplate>
                <div class="PromoDef" id="itemPlaceholderContainer" runat="server" style="">
                    <span runat="server" id="itemPlaceholder" />-
                </div>
    <hr />
            </LayoutTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnString %>"
            SelectCommand="SELECT * FROM [bapromo] WHERE ([DataInizio] <= { fn NOW() } AND [DataFine] >= { fn NOW() })">

        </asp:SqlDataSource>
        <asp:ListView ID="ListView2" runat="server" SelectedIndex="-1" DataKeyNames="Id" DataSourceID="SqlDataSource2">
            <EmptyDataTemplate>
                <span></span>
            </EmptyDataTemplate>
            <ItemTemplate>
                <div class="OffertaDef">
                <div class="OffertaDefTitolo">
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Titolo") %>'></asp:Label>
                </div>
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Offerta") %>'></asp:Label>

                </div>
            </ItemTemplate>
            <ItemSeparatorTemplate>
            </ItemSeparatorTemplate>
            <LayoutTemplate>
                <table>
                    <tr>
                        <td>
                            <div  id="itemPlaceholderContainer" runat="server" style="display:block">
                                <div runat="server" id="itemPlaceholder" />
                            </div>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnString %>"
            SelectCommand="SELECT * FROM [baoff] WHERE ([DataInizio] <= { fn NOW() } AND [DataFine] >= { fn NOW() })">
        </asp:SqlDataSource>--%>
    </div>
</asp:Content>

