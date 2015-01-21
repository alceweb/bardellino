using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_PromoEdit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //Recupero l'ID che identificherà il file primario
        string n = ListView1.SelectedValue.ToString();
        FileUpload fup = ListView2.EditItem.FindControl("FileUpload") as FileUpload;
        Label LblUploadOk = ListView2.EditItem.FindControl("LblUploadOk") as Label;
        //Impostola cartella di destinazione
        String path = Server.MapPath("~/Images/Promo/");
        if (fup.HasFile)
        {
            //Recupero l'estensione del file
            string estensione = System.IO.Path.GetExtension(fup.PostedFile.FileName).Substring(1);
            //Imposto il path completo del file
            string nomefile = path + n + "." + estensione;
            fup.SaveAs(nomefile);
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