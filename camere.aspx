<%@ Page Title="Camere" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="camere.aspx.cs" Inherits="Camere" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <script src="http://localhost:3517/santuarioazureweb/Scripts/jquery.colorbox.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="Server">
    <script type="text/javascript">
        $(document).ready(function () {
            //Examples of how to assign the Colorbox event to elements
            $(".group1").colorbox({ maxHeight: '100%', rel: 'group1', transition: 'fade' });
            $(".group2").colorbox({ maxHeight: '100%', rel: 'group2', transition: 'fade' });
            $(".group3").colorbox({ maxHeight: '100%', rel: 'group3', transition: 'fade' });
            $(".group4").colorbox({ maxHeight: '100%', rel: 'group4', transition: 'fade' });
            $(".group5").colorbox({ maxHeight: '100%', rel: 'group5', transition: 'fade' });
            $(".group6").colorbox({ maxHeight: '100%', rel: 'group6', transition: 'fade' });
            $(".group7").colorbox({ maxHeight: '100%', rel: 'group7', transition: 'fade' });
            $(".group8").colorbox({ maxHeight: '100%', rel: 'group8', transition: 'fade' });
        });
		</script>
    <table>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </table>
    <div><img style="height: 40px" src="Images/WiFi.png" />
    </div>
    <table class="tblServizi">
        <tr>
            <td class="tdServizi" >
                <h2><em>Le camere</em></h2>
            </td>
            <td>

            </td>
        </tr>
        <tr>
            <td class="tdServizi">
               <h3>Singola standard <span><em>- € 57,00</em></span></h3>
               <p>
                climatizzatore a controllo individuale<br />
                   tv color con ricezione satellitare<br />
                   telefono<br />
                   frigo bar
               </p>
                <br />
            </td>
            <td>
                <a class="group1" href="Images/18.jpg" title="Singola standard"><img src="Images/18.jpg" /></a>
                <a class="group1" href="Images/19.jpg" title="Singola standard"><img src="Images/19.jpg" /></a>
                <a class="group1" href="Images/23.jpg" title="Singola standard"><img src="Images/23.jpg" /></a>
                <a class="group1" href="Images/20.jpg" title="Singola standard"></a>
           </td>
        </tr>
        <tr>
            <td class="tdServizi">
                <h3>Singola superior <span><em>- € 62,00</em></span></h3>
                <p>
                    climatizzatore a controllo individuale,<br />
                    t/v color con ricezione satellitare,<br />
                    telefono,<br />
                    frigo bar
                </p>
            </td>
            <td>
                <a class="group2" href="Images/30.jpg" title="Singola superior"><img src="Images/30.jpg" /></a>
                <a class="group2" href="Images/32.jpg" title="Singola superior"><img src="Images/32.jpg" /></a>
                <a class="group2" href="Images/28.jpg" title="Singola superior"><img src="Images/28.jpg" /></a>
                <a class="group2" href="Images/33.jpg" title="Singola superior"></a>
            </td>
            
        </tr>
        <tr>
            <td  class="tdServizi">
                <h3>Doppia uso singolo standard <span><em>- € 70,00</em></span></h3>
                <p>
                    climatizzatore a controllo individuale,<br />
                    t/v color con ricezione satellitare,<br />
                    telefono,<br />
                    frigo bar
                </p>
            </td>
            <td>
                <a class="group3" href="Images/18.jpg" title="Doppia uso singolo standard"><img src="Images/18.jpg" /></a>
                <a class="group3" href="Images/19.jpg" title="Doppia uso singolo standard"><img src="Images/19.jpg" /></a>
                <a class="group3" href="Images/20.jpg" title="Doppia uso singolo standard"><img src="Images/20.jpg" /></a>
                <a class="group3" href="Images/23.jpg" title="Doppia uso singolo standard"></a>
                <a class="group3" href="Images/102.jpg" title="Doppia uso singolo standard"></a>
                <a class="group3" href="Images/103.jpg" title="Doppia uso singolo standard"></a>
            </td>
            
        </tr>
        <tr>
            <td  class="tdServizi">
                <h3>Doppia uso singolo superior <span><em>- € 80,00</em></span></h3>
                <p>
                    climatizzatore a controllo individuale,<br />
                    t/v color con ricezione satellitare,<br />
                    telefono,<br />
                    frigo bar
                </p>
             </td>
             <td>
                <a class="group4" href="Images/26.jpg" title="Doppia uso singolo superior"><img src="Images/26.jpg" /></a>
                <a class="group4" href="Images/27.jpg" title="Doppia uso singolo superior"><img src="Images/27.jpg" /></a>
                <a class="group4" href="Images/28.jpg" title="Doppia uso singolo superior"><img src="Images/28.jpg" /></a>
                <a class="group4" href="Images/29.jpg" title="Doppia uso singolo superior"></a>
                <a class="group4" href="Images/33.jpg" title="Doppia uso singolo superior"></a>
                <a class="group4" href="Images/104.jpg" title="Doppia uso singolo superior"></a>
                <a class="group4" href="Images/105.jpg" title="Doppia uso singolo superior"></a>
                <a class="group4" href="Images/106.jpg" title="Doppia uso singolo superior"></a>
                <a class="group4" href="Images/107.jpg" title="Doppia uso singolo superior"></a>
                <a class="group4" href="Images/108.jpg" title="Doppia uso singolo superior"></a>
                <a class="group4" href="Images/109.jpg" title="Doppia uso singolo superior"></a>
                <a class="group4" href="Images/110.jpg" title="Doppia uso singolo superior"></a>
            </td>

        </tr>
        <tr>
            <td  class="tdServizi">
                <h3>Doppia/matrimoniali standard <span><em>- € 82,00</em></span></h3>
                <p>
                    climatizzatore a controllo individuale,<br />
                    t/v color con ricezione satellitare,<br />
                    telefono,<br />
                    frigo bar
                </p>
            </td>
            <td><a class="group5" href="Images/116.jpg" title="Doppia matrimoniale standard"><img src="Images/116.jpg" /></a>
                <a class="group5" href="Images/20.jpg" title="Doppia matrimoniale standard"><img src="Images/20.jpg" /></a>
                <a class="group5" href="Images/23.jpg" title="Doppia matrimoniale standard"><img src="Images/23.jpg" /></a>
            </td>
            
        </tr>
        <tr>
           <td  class="tdServizi">
                <h3>Doppia/matrimoniali superior <span><em>- € 87,00</em></span></h3>
                <p>
                    climatizzatore a controllo individuale,<br />
                    t/v color con ricezione satellitare,<br />
                    telefono,<br />
                    frigo bar
                </p>
            </td>  
            <td><a class="group6" href="Images/117.jpg" title="Doppia matrimoniale superior"><img src="Images/117.jpg" /></a>
                <a class="group6" href="Images/118.jpg" title="Doppia matrimoniale superior"><img src="Images/118.jpg" /></a>
                <a class="group6" href="Images/119.jpg" title="Doppia matrimoniale superior"><img src="Images/119.jpg" /></a>
                <a class="group6" href="Images/120.jpg" title="Doppia matrimoniale superior"></a>
                <a class="group6" href="Images/121.jpg" title="Doppia matrimoniale superior"></a>
                <a class="group6" href="Images/122.jpg" title="Doppia matrimoniale superior"></a>
            </td>
           
        </tr>
        <tr>
            <td  class="tdServizi">
                <h3>Tripla standard <span><em>- € 90,00</em></span></h3>
                <p>
                    climatizzatore a controllo individuale,<br />
                    t/v color con ricezione satellitare,<br />
                    telefono,<br />
                    frigo bar
                </p>
            </td> 
            <td>
                <a class="group7" href="Images/21.jpg" title="Tripla standard"><img src="Images/21.jpg" /></a>
                <a class="group7" href="Images/22.jpg" title="Tripla standard"><img src="Images/22.jpg" /></a>
                <a class="group7" href="Images/20.jpg" title="Tripla standard"><img src="Images/20.jpg" /></a>
                <a class="group7" href="Images/23.jpg" title="Tripla standard"></a>
                <a class="group7" href="Images/112.jpg" title="Tripla standard"></a>
            </td>
           
        </tr>
        <tr>
            <td  class="tdServizi">
                <h3>Tripla superior <span><em>- € 105,00</em></span></h3>
                <p>
                    climatizzatore a controllo individuale,<br />
                    t/v color con ricezione satellitare,<br />
                    telefono,<br />
                    frigo bar
                </p>
            </td> 
            <td>
                <a class="group8" href="Images/26.jpg" title="Tripla superior"><img src="Images/26.jpg" /></a>
                <a class="group8" href="Images/27.jpg" title="Tripla superior"><img src="Images/27.jpg" /></a>
                <a class="group8" href="Images/33.jpg" title="Tripla superior"><img src="Images/33.jpg" /></a>
                <a class="group8" href="Images/28.jpg" title="Tripla superior"></a>
                <a class="group8" href="Images/29.jpg" title="Tripla superior"></a>
                <a class="group8" href="Images/115.jpg" title="Tripla superior"></a>
            </td>
           
        </tr>
        <tr>
            
            <td  class="tdServizi">
                <p>
                    Prezzi per camera, colazione inclusa 

                </p>
            </td><td></td>
        </tr>
    </table>


</asp:Content>

