<%@ Page Title="Sale" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Sale.aspx.cs" Inherits="Sale" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
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
         });
		</script>
    <table class="tbl2" >
        <tr>
            <td >
            <h2>Le nostre sale</h2>
            </td>
            <td>

            </td>
        </tr>
        <tr>
            <td >
            <p>Sala uno capacità 250/300 persone<br />
               Sale riunioni capacità 20/50 persone<br />
               Ingresso e servizi differenziati</p>
                <p><a href="Formsale.aspx" style="text-shadow:none; color:white">Info per prenotazione</a></p>
            </td>
            <td>
                <a class="group4" href="Images/Sale1l.jpg" title="Sale"><img class="foto_pagine" src="Images/Sale1.jpg" /></a>
                <a class="group4" href="Images/Sale2l.jpg" title="Sale"><img class="foto_pagine" src="Images/Sale2.jpg" /></a>
                <a class="group4" href="Images/Sale3l.jpg" title="Sale"><img class="foto_pagine" src="Images/Sale3.jpg" /></a>
                <span style="visibility:collapse">
                    <a class="group4" href="Images/Sale4l.jpg" title="Sale"></a>
                </span>
            </td>
        </tr>
      </table>
</asp:Content>

