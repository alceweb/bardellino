using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //Recupero l'ID per la parte iniziale del nome file
        string n = "1";
        //Imposto la cartella di destinazione
        String path = Server.MapPath("~/NewsImg/" + n + "/");
        if (FileUpload1.HasFile)
        {
            foreach (var file in FileUpload1.PostedFiles)
            {
                file.SaveAs(path + System.IO.Path.GetFileName(file.FileName));
                Response.Write(file.ContentLength + System.IO.Path.GetFileName(file.FileName));
            }
            // Avvisa dell'avvenuto upload.
            LblUploadOk.ForeColor = System.Drawing.Color.Red;
            LblUploadOk.Text = "Immagini caricate corretamente. Premi <em><Strong>F5</Strong></em> per aggiornare e visualizzare le immagini!<br/><br/>";
        }
        else
        {
            // Avvisa del mancato upload.
            LblUploadOk.Text = "Non hai scelto l'immagine per la galleria.";
        }
    }
}