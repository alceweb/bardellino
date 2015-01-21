using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_SlideEdit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //Recupero l'ID che identificherà il file primario

        Label IdTextBox = ListView1.EditItem.FindControl("lblId") as Label;
        string n = IdTextBox.Text;
        //Impostola cartella di destinazione
        String path = Server.MapPath("~/Slideshow/images/Bardellino/");
        FileUpload FileUpload1 = ListView1.EditItem.FindControl("FileUpload1") as FileUpload;
        Label LblUploadOk = ListView1.EditItem.FindControl("LblUploadOk") as Label;
        if (FileUpload1.HasFile)
        {
            //Recupero l'estensione del file
            string estensione = System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName).Substring(1);
            //Imposto il path completo del file
            string nomefile = path + n + "." + estensione;
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
    protected void Button2_Click(object sender, EventArgs e)
    {
        //Recupero l'ID che identificherà il file primario

        Label IdTextBox = ListView2.EditItem.FindControl("lblId") as Label;
        string n = IdTextBox.Text;
        //Impostola cartella di destinazione
        String path = Server.MapPath("~/Slideshow/images/Padella/");
        FileUpload FileUpload1 = ListView2.EditItem.FindControl("FileUpload1") as FileUpload;
        Label LblUploadOk = ListView2.EditItem.FindControl("LblUploadOk") as Label;
        if (FileUpload1.HasFile)
        {
            //Recupero l'estensione del file
            string estensione = System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName).Substring(1);
            //Imposto il path completo del file
            string nomefile = path + n + "." + estensione;
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