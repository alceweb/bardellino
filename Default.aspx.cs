using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string cartella = "/Slideshow/Images/Bardellino/";
        string[] immagini = System.IO.Directory.GetFiles(Server.MapPath(cartella));
        lista.DataSource = immagini;
        lista.DataBind();
        lista1.DataSource = immagini;
        lista1.DataBind();
    }
}