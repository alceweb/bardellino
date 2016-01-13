using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class Contatti : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void InviaButton_Click(object sender, EventArgs e)
    {
        ////Preparo i campi della mail
        String from = "webservice@cascinabardellino.it";
        String to = "cesare@cr-consult.eu";
        //Istanzio la classe che rappresenta il messaggio 
        MailMessage mMailMessage = new MailMessage();
        //Aggiungo il Mittente 
        mMailMessage.From = new MailAddress(from);
        //Aggiungo il destinatario 
        mMailMessage.To.Add(new MailAddress(to));
        mMailMessage.To.Add(new MailAddress("cascinabardellino@gmail.com"));
        mMailMessage.To.Add(new MailAddress("mariangela.cascinabardellino@gmail.com"));
        //mMailMessage.To.Add(new MailAddress("commerciale@cascinabardellino.it"));
        //L'oggetto 
        mMailMessage.Subject = "Richiesta informazioni da sito web Cascina Bardellino";
        //Il corpo 
        mMailMessage.Body = "Richiesta di informazioni rievuta tramite il sito www.cascinabardellino.it<br/><br/><strong>Messaggio inviato da:</strong> " + NomeTextBox.Text + " " + CognomeTextBox.Text + "<br/><strong>Mail:</strong> " + MailTextBox.Text + "<br/><strong>Tel:</strong> " + TelTextBox.Text + "<br/><br/><strong>Testo del messaggio:</strong> <br/>" + RichiestaTtBox1.Text;
        //Setto la modalità testo, per il contenuto del messaggio. Sarebbe possibile inviare anche dell'HTML mettendo true 
        mMailMessage.IsBodyHtml = true;
        //Setto la priorità 
        mMailMessage.Priority = MailPriority.Normal;
        //configurazione nel web.config 
        SmtpClient mSmtpClient = new SmtpClient();
        //Invio il messaggio 
        mSmtpClient.Send(mMailMessage);
        Response.Redirect("FormResponse.aspx");
    }
}