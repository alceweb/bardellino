<%@ Page Title="Servizi" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="servizi.aspx.cs" Inherits="servizi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <script src="Scripts/jquery-2.1.1.min.js"></script>
    <script src="Scripts/jquery.colorbox.js"></script>
    <link href="Content/colorbox.css" rel="stylesheet" />
    <link href="Content/demo.css" rel="stylesheet" />
    <link href="Content/style.css" rel="stylesheet" />    
    		<noscript>
			<style>
				.st-accordion ul li{
					height:auto;
				}
				.st-accordion ul li > a span{
					visibility:hidden;
				}
			</style>
		</noscript>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
     <script type="text/javascript">
         $(document).ready(function () {
             //Examples of how to assign the Colorbox event to elements
             $(".group1").colorbox({ maxHeight: '100%', rel: 'group1', transition: 'fade' });
             $(".group2").colorbox({ maxHeight: '100%', rel: 'group2', transition: 'fade' });
             $(".group3").colorbox({ maxHeight: '100%', rel: 'group3', transition: 'fade' });
             $(".group4").colorbox({ maxHeight: '100%', rel: 'group4', transition: 'fade' });
             $(".group5").colorbox({ maxHeight: '100%', rel: 'group5', transition: 'fade' });
         });
		</script>
            <div class="container">
            <div class="wrapper">
                <div id="st-accordion" class="st-accordion">
                    <ul>
                       <asp:ListView ID="ListView1" OnItemDataBound="ListView1_ItemDataBound" OnSelectedIndexChanged="ListView1_SelectedIndexChanged" SelectedIndex="-1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                            <ItemTemplate>
                                <li>
                                    <asp:LinkButton ID="LinkButton1" runat="server"><%#Eval("Titolo") %></asp:LinkButton>
                                    <div class="st-content">
                                        <p>
                                            <asp:Label ID="DescrizioneLabel" runat="server" Text='<%# Eval("Descrizione") %>' /><br />
                                            <asp:Label ID="lblId" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                                            <asp:Repeater ID="lista" runat="server">
                                                <ItemTemplate>
                                                    <span class="gall">
                                                        <a class="group1" href="<%# (Container.DataItem as string).Substring(Server.MapPath("./").Length).Replace("\\", "/") %>">
                                                            <img src="<%# (Container.DataItem as string).Substring(Server.MapPath("./").Length).Replace("\\", "/") %>" />
                                                        </a>
                                                    </span>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </p>
                                        <div style ="text-align:center">
                                            <asp:Button ID="Button1" CssClass="textForm" runat="server" ForeColor="green" Text="Chiedi informazioni" PostBackUrl="~/Contatti.aspx" />
                                        </div>
                                    </div>
                                </li>
                            </ItemTemplate>

                        </asp:ListView>
                    </ul>
                </div>
            </div>
        </div>
    <script src="Scripts/jquery.easing.1.3.js"></script>
    <script src="Scripts/jquery.accordion.js"></script>
        <script type="text/javascript">
            $(function() {
				$('#st-accordion').accordion({
					oneOpenedItem	: true
				});
				
            });
        </script>
    <div>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
         ConnectionString="<%$ ConnectionStrings:ConnString %>">
     </asp:SqlDataSource>
    </div>
    <div>
    </div>


</asp:Content>

