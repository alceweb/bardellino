using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class servizi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string n = ListView1.SelectedValue.ToString();
         SqlDataSource1.SelectCommand = "SELECT * FROM [baserv] where Id =" + n; 
       string cartella = "~/Images/Servizi/";
        string[] immagini = System.IO.Directory.GetFiles(Server.MapPath(cartella), n + "*.jpg*");
        lista.DataSource = immagini;
        lista.DataBind();
        ListView1.SelectedIndex = 0;
    }
    protected void linkbInfo_Click(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT * FROM [baserv]";
        ListView1.SelectedIndex = -1;
        string cartella = "~/Images/Servizi/";
        string[] immagini = System.IO.Directory.GetFiles(Server.MapPath(cartella), ListView1.SelectedIndex.ToString() + "*.jpg*");
        lista.DataSource = immagini;
        lista.DataBind();
    }
}