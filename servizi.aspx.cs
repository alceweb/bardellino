using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class servizi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT * FROM [baserv] order by ordinamento";
    }
    protected void ListView1_ItemDataBound(object sender, ListViewItemEventArgs e)
    {
        //string n = ListView1.SelectedDataKey.ToString();
        Label lblId = e.Item.FindControl("lblId") as Label;
        lblId.Visible = false;
        var n = lblId.Text.ToString();
        string cartella = "~/Images/Servizi/";
        string[] immagini = System.IO.Directory.GetFiles(Server.MapPath(cartella), n + "*.jpg*");
        Repeater lista = e.Item.FindControl("lista") as Repeater;
        lista.DataSource = immagini;
        lista.DataBind();

    }
    protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }

}