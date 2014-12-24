<%@ Page Title="Servizi" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="servizi.aspx.cs" Inherits="servizi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <script src="Scripts/jquery-2.1.1.min.js"></script>
    <script src="Scripts/jquery.colorbox.js"></script>
    <link href="Content/colorbox.css" rel="stylesheet" />
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
                <h2>Servizi</h2>
            </td>
            <td></td>
        </tr>
        <tr>
            <td >
                <h3>Matrimoni</h3>
                <p>Descrizione della proposta per matrimonio</p>
                <br/>
            </td>
            <td >
                <a class="group1" href="Images/P1l.jpg" title="Piscina"><img src="Images/P1.jpg" /></a>
                <a class="group1" href="Images/P2l.jpg" title="Piscina"><img src="Images/P2.jpg" /></a>
                <a class="group1" href="Images/P3l.jpg" title="Piscina"><img src="Images/P3.jpg" /></a>
                <span style="visibility:collapse">
                    <a class="group1" href="Images/P4l.jpg" title="Piscina"></a>
                    <a class="group1" href="Images/P5l.jpg" title="Piscina"></a>
                    <a class="group1" href="Images/P6l.jpg" title="Piscina"></a>
                    <a class="group1" href="Images/P7l.jpg" title="Piscina"></a>
                    <a class="group1" href="Images/P8l.jpg" title="Piscina"></a>
                    <a class="group1" href="Images/P9l.jpg" title="Piscina"></a>
                    <a class="group1" href="Images/P10l.jpg" title="Piscina"></a>
                </span>

            </td>
        </tr>
        <tr>
            <td>
                 <h3>Cerimonie</h3>
                <p>Descrizione della proposta per cerimonie</p>
            <br/>
            </td>
            <td>
                <a class="group2" href="Images/Ce1l.jpg" ><img src="Images/Ce1.jpg" /></a>
                <a class="group2" href="Images/Ce2l.jpg" ><img src="Images/Ce2.jpg" /></a>
                <a class="group2" href="Images/Ce3l.jpg" ><img src="Images/Ce3.jpg" /></a>
                <span style="visibility:collapse">
                    <a class="group2" href="Images/Ce4l.jpg" ></a>
                    <a class="group2" href="Images/Ce5l.jpg" ></a>
                    <a class="group2" href="Images/Ce6l.jpg" ></a>
                    <a class="group2" href="Images/Ce7l.jpg" ></a>
                    <a class="group2" href="Images/Ce8l.jpg" ></a>
                    <a class="group2" href="Images/Ce9l.jpg" ></a>
                    <a class="group2" href="Images/Ce10l.jpg" ></a>
                </span>
            </td>
        </tr>
        <tr>
            <td ">
            <h3>Comunioni</h3>
            <p>Descrizione della proposta per cmunioni
            </p>
            <br/>
            </td>
            <td>
                <a class="group4" href="Images/Sale1l.jpg" title="Sale"><img src="Images/Sale1.jpg" /></a>
                <a class="group4" href="Images/Sale2l.jpg" title="Sale"><img src="Images/Sale2.jpg" /></a>
                <a class="group4" href="Images/Sale3l.jpg" title="Sale"><img src="Images/Sale3.jpg" /></a>
                <span style="visibility:collapse">
                    <a class="group4" href="Images/Sale4l.jpg" title="Sale"></a>
                </span>
            </td>
        </tr>
        <tr>
            <td >
        <h3>Ristorante</h3>
        <p><em>Decrizione della proposta ristorante</p>
            <br/>
            </td>
            <td>
                <a class="group3" href="Images/Ris1l.jpg" title="Ristorante La Fonte"><img src="Images/Ris1.jpg" /></a>
                <a class="group3" href="Images/Ris2l.jpg" title="Ristorante La Fonte"><img src="Images/Ris2.jpg" /></a>
                <a class="group3" href="Images/Ris2l.jpg" title="Ristorante La Fonte"><img src="Images/Ris3.jpg" /></a>
            </td>
        </tr>
        <tr>
            <td >
        <h3>Parco</h3>
        <p>Descrizione della proposta parco.</p><br />
<br/><hr />
            </td>
            <td>
                <a class="group4" href="Images/Pa1l.jpg" title="Ristorante La Fonte"><img src="Images/Pa1.jpg" /></a>
                 <a class="group4" href="Images/Pa2l.jpg" title="Ristorante La Fonte"><img src="Images/Pa2.jpg" /></a>
                <a class="group4" href="Images/Pa3l.jpg" title="Ristorante La Fonte"><img src="Images/Pa13jpg" /></a>
           </td>
        </tr>
      </table>
</asp:Content>

