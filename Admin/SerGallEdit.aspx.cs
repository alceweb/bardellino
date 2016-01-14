using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_SerGallEdit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string cartella = "~/Images/";
        string num = ListView1.SelectedValue.ToString();
        string[] immagini = System.IO.Directory.GetFiles(Server.MapPath(cartella), "Servizi/" + num + "-*jpg*");
        listaListView.DataSource = immagini;
        listaListView.DataBind();
        pnlupload.Visible = true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //Recupero l'ID che identificherà il file primario
        string n = ListView1.SelectedValue.ToString();
        //Impostola cartella di destinazione
        String path = Server.MapPath("~/Images/Servizi/");
        if (FileUpload1.HasFile)
        {
            //Recupero l'estensione del file
            string estensione = System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName).Substring(1);
            //Imposto il nome file in base alla data giorno mese anno - ora minuti secondi
            string nf = DateTime.Now.ToString("ddMMyyyy-HHmmss");
            //Imposto il path completo del file
            string nomefile = path + n + "-" + nf + "." + estensione;
            FileUpload1.SaveAs(nomefile);
            // Avvisa dell'avvenuto upload.
            LblUploadOk.ForeColor = System.Drawing.Color.Green;
            LblUploadOk.Text = "Immagine caricata corretamente.";
        }
        else
        {
            // Avvisa del mancato upload.
            LblUploadOk.ForeColor = System.Drawing.Color.Red;
            LblUploadOk.Text = "Non hai scelto nessuna immagine.";
        }
    }

}