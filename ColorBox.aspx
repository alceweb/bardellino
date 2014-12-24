<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ColorBox.aspx.cs" Inherits="ColorBox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="jquery.colorbox.js"></script>
    <link href="Content/colorbox.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
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
    <table class="tblCamere">
        <tr>
            <td  >

                <h2><em>Le camere</em><img style="height: 40px" src="Images/WiFi.png" /></h2>
            </td>
        </tr>
        <tr>
            <td >
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
                <a class="group1" href="Images/SStd.jpg" title="Singola standard">
                <img src="Images/SStd-s.jpg" /></a>
            </td>
        </tr>
        <tr>
            <td >
                <h3>Singola superior <span><em>- € 62,00</em></span></h3>
                <p>
                    climatizzatore a controllo individuale,<br />
                    t/v color con ricezione satellitare,<br />
                    telefono,<br />
                    frigo bar
                </p>
            </td>
            <td><a class="group2" href="Images/SSup.jpg" title="Singola superior">
                <img src="Images/SSup-s.jpg" /></a>
            </td>
            
        </tr>
        <tr>
            <td >
                <h3>Doppia uso singolo standard <span><em>- € 70,00</em></span></h3>
                <p>
                    climatizzatore a controllo individuale,<br />
                    t/v color con ricezione satellitare,<br />
                    telefono,<br />
                    frigo bar
                </p>
            </td>
            <td>
                <a class="group3" href="Images/DStd.jpg" title="Doppia uso singolo standard"><img src="Images/DStd-s.jpg" /></a>
                <a class="group3" href="Images/DStd1.jpg" title="Doppia uso singolo standard"><img src="Images/DStd1-s.jpg" /></a>
            </td>
            
        </tr>
        <tr>
            <td >
                <h3>Doppia uso singolo superior <span><em>- € 80,00</em></span></h3>
                <p>
                    climatizzatore a controllo individuale,<br />
                    t/v color con ricezione satellitare,<br />
                    telefono,<br />
                    frigo bar
                </p>
             </td>
             <td>
                 <a class="group4" href="Images/DSup.jpg" title="Doppia uso singolo superior">
                     <img src="Images/DSup-s.jpg" />
                 </a>
                 <a class="group4" href="Images/Dsup1.jpg" title="Doppia uso singolo superior">
                    <img src="Images/Dsup1-S.jpg" />
                 </a>
                 <a class="group4" href="Images/DSup5.jpg" title="Doppia uso singolo superior"> 
                     <img src="Images/DSup5-s.jpg" />
                 </a>
                <a class="group4" href="Images/DSup2.jpg" title="Doppia uso singolo superior"></a>
                <a class="group4" href="Images/DSup3.jpg" title="Doppia uso singolo superior"></a>
                <a class="group4" href="Images/DSup4.jpg" title="Doppia uso singolo superior"></a>
                <a class="group4" href="Images/DSup6.jpg" title="Doppia uso singolo superior"></a>
            </td>

        </tr>
        <tr>
            <td >
                <h3>Doppia/matrimoniali standard <span><em>- € 82,00</em></span></h3>
                <p>
                    climatizzatore a controllo individuale,<br />
                    t/v color con ricezione satellitare,<br />
                    telefono,<br />
                    frigo bar
                </p>
            </td>
            <td><a class="group5" href="Images/MStd.jpg" title="Doppia matrimoniale standard">
                <img src="Images/MStd-s.jpg" /></a>
            </td>
            
        </tr>
        <tr>
           <td >
                <h3>Doppia/matrimoniali superior <span><em>- € 87,00</em></span></h3>
                <p>
                    climatizzatore a controllo individuale,<br />
                    t/v color con ricezione satellitare,<br />
                    telefono,<br />
                    frigo bar
                </p>
            </td>  
            <td><a class="group6" href="Images/MSup.jpg" title="Doppia matrimoniale superior">
                <img src="Images/MSup-s.jpg" /></a>
                <a class="group6" href="Images/MSup1.jpg" title="Doppia matrimoniale superior"> <img src="Images/MSup1-s.jpg" /></a>
                <a class="group6" href="Images/MSup2.jpg" title="Doppia matrimoniale superior"> <img src="Images/MSup2-s.jpg" /></a>
                <a class="group6" href="Images/MSup3.jpg" title="Doppia matrimoniale superior"></a>
                <a class="group6" href="Images/MSup4.jpg" title="Doppia matrimoniale superior"></a>
                <a class="group6" href="Images/MSup5.jpg" title="Doppia matrimoniale superior"></a>
            </td>
           
        </tr>
        <tr>
            <td >
                <h3>Tripla standard <span><em>- € 90,00</em></span></h3>
                <p>
                    climatizzatore a controllo individuale,<br />
                    t/v color con ricezione satellitare,<br />
                    telefono,<br />
                    frigo bar
                </p>
            </td> 
            <td>
                <a class="group7" href="Images/TStd.jpg" title="Tripla standard">
                    <img src="Images/TStd-s.jpg" /></a>
                <a class="group7" href="Images/TStd1.jpg" title="Tripla standard"><img src="Images/TStd1-s.jpg" /></a>
                <a class="group7" href="Images/TStd2.jpg" title="Tripla standard"><img src="Images/TStd2-s.jpg" /></a>
            </td>
           
        </tr>
        <tr>
            <td>
                <h3>Tripla superior <span><em>- € 105,00</em></span></h3>
                <p>
                    climatizzatore a controllo individuale,<br />
                    t/v color con ricezione satellitare,<br />
                    telefono,<br />
                    frigo bar
                </p>
            </td> 
            <td><a class="group8" href="Images/TSup.jpg" title="Tripla superior">
                <img src="Images/TSup-s.jpg" /></a>
                <a class="group8" href="Images/TSup1.jpg" title="Tripla superior"></a>
            </td>
           
        </tr>
        <tr>
            
            <td >
                <p>
                    Prezzi per camera, colazione inclusa 

                </p>
            </td><td></td>
        </tr>
    </table>
    </form>
</body>
</html>
