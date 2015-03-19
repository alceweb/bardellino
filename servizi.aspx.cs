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
    }
    protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string n = ListView1.SelectedValue.ToString();
        SqlDataSource1.SelectCommand = "SELECT * FROM [baserv]";
        string cartella = "~/Images/Servizi/";
        string[] immagini = System.IO.Directory.GetFiles(Server.MapPath(cartella), ListView1.SelectedValue.ToString() + "*.jpg*");
        lista.DataSource = immagini;
        lista.DataBind();
        
    }
    protected void InviaButton_Click(object sender, EventArgs e)
    {
        int num = ListView1.SelectedIndex;
        Label LabelTitolo = ListView1.Items[num].FindControl("TitoloLabel") as Label;
        TextBox TextBoxNome = ListView1.Items[num].FindControl("TextBoxNome") as TextBox;
        TextBox TextBoxTelefono = ListView1.Items[num].FindControl("TextBoxTelefono") as TextBox;
        TextBox TextBoxMail = ListView1.Items[num].FindControl("TextBoxMail") as TextBox;
        TextBox TextBoxPreghiera = ListView1.Items[num].FindControl("TextBoxPreghiera") as TextBox;
        TextBox TextBoxMessaggio = ListView1.Items[num].FindControl("TextBoxMessaggio") as TextBox;
        ////Preparo i campi della mail
        String from = "webservice@cr-consult.it";
        String to = "cesare@cr-consult.eu";
        //Istanzio la classe che rappresenta il messaggio 
        MailMessage mMailMessage = new MailMessage();
        //Aggiungo il Mittente 
        mMailMessage.From = new MailAddress(from);
        //Aggiungo il destinatario 
        mMailMessage.To.Add(new MailAddress(to));
        mMailMessage.To.Add(new MailAddress("cascinabardellino@gmail.com"));
        mMailMessage.To.Add(new MailAddress("mariangela.cascinabardellino@gmail.com"));
        //L'oggetto 
        mMailMessage.Subject = "Richiesta informazioni da sito web Cascina Bardellino";
        //Il corpo 
        mMailMessage.Body = "Richiesta di informazioni rievuta tramite il sito www.cascinabardellino.it<br/><br/><em>Messaggio inviato da</em><br/><strong>Nome:</strong> " + TextBoxNome.Text + "<br/><strong>Tel:</strong> " + TextBoxTelefono.Text + "<br/><strong>Mail:</strong> " + TextBoxMail.Text + "<br/><strong>Servizio:</strong> " + LabelTitolo.Text + "<hr/><strong>Messaggio:</strong><br/>" + TextBoxMessaggio.Text;
        //Setto la modalità testo, per il contenuto del messaggio. Sarebbe possibile inviare anche dell'HTML mettendo true 
        mMailMessage.IsBodyHtml = true;
        //Setto la priorità 
        mMailMessage.Priority = MailPriority.Normal;
        //configurazione nel web.config 
        SmtpClient mSmtpClient = new SmtpClient();
        //Invio il messaggio 
        mSmtpClient.Send(mMailMessage);
        Response.Redirect("FormResponseSer.aspx");
    }
    protected void CancelButton1_Click(object sender, EventArgs e)
    {
        ListView1.SelectedIndex = -1;
    }
}