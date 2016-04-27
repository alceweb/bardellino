using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Drawing.Imaging;
using System.Drawing.Drawing2D;
using System.IO;

public partial class Admin_SlideBEdit1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        FileUpload FileUpload1 = ListView1.EditItem.FindControl("FileUpload1") as FileUpload;
        Label Label1 = ListView1.EditItem.FindControl("Label1") as Label;
        if (FileUpload1.HasFile == false || FileUpload1.PostedFile.ContentType.ToLower() != "image/jpeg")
        {
            Label1.Text = "Non hai selezionato nessun file.";
            return;
        }
        Label1.Text = "";
        using (Bitmap uploadedBmp = new Bitmap(FileUpload1.FileContent))
        {
            decimal origHeight = uploadedBmp.Height;
            decimal origWidth = uploadedBmp.Width;
            int dimensione = Convert.ToInt16(origHeight) - Convert.ToInt16(origWidth);
            if (dimensione > 0)
            {
                Label1.ForeColor = Color.Red;
                Label1.Text = "L'immagine è verticale";
            }
            else
            {
                ResizeAndSaveImage();

            }

        }
    }
    protected void ResizeAndSaveImage()
    {
        FileUpload FileUpload1 = ListView1.EditItem.FindControl("FileUpload1") as FileUpload;
        using (Bitmap uploadedBmp = new Bitmap(FileUpload1.FileContent))
        {
            decimal origHeight = uploadedBmp.Height;
            decimal origWidth = uploadedBmp.Width;
            TextBox txtWidth = ListView1.EditItem.FindControl("txtWidth") as TextBox;
            int newWidth = Convert.ToInt16(txtWidth.Text);
                int newHeight = Convert.ToInt32(newWidth / (origWidth / origHeight));

                using (Graphics resizedGr = Graphics.FromImage(uploadedBmp))
                {
                    // Optional. These properties are set for the best possible quality
                    resizedGr.CompositingMode = CompositingMode.SourceCopy;
                    resizedGr.CompositingQuality = CompositingQuality.HighQuality;
                    resizedGr.InterpolationMode = InterpolationMode.HighQualityBicubic;
                    resizedGr.SmoothingMode = SmoothingMode.HighQuality;
                    resizedGr.PixelOffsetMode = PixelOffsetMode.HighQuality;

                    using (Bitmap resizedBmp = new Bitmap(uploadedBmp, newWidth, newHeight))
                    {
                        resizedGr.DrawImage(resizedBmp, 0, 0);

                        using (MemoryStream resizedMs = new MemoryStream())
                        {

                            //Recupero l'ID che identificherà il file primario
                            Label lblId = ListView1.EditItem.FindControl("lblId") as Label;
                            string n = lblId.Text.ToString();
                            Response.Write(n);
                            //Impostola cartella di destinazione
                            String path = Server.MapPath("~/Slideshow/images/Bardellino/");
                            //Recupero l'estensione del file
                            string estensione = System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName).Substring(1);
                            //Imposto il path completo del file
                            string nomefile = n + "." + estensione;

                            System.Drawing.Imaging.EncoderParameters encParms = new System.Drawing.Imaging.EncoderParameters(1);

                            // This allows jpeg compression to be set to 90
                            encParms.Param[0] = new System.Drawing.Imaging.EncoderParameter(System.Drawing.Imaging.Encoder.Quality, (long)90);

                            resizedBmp.Save(resizedMs, GetImgCodecInf("image/jpeg"), encParms);
                            long msLen = resizedMs.Length;
                            byte[] resizedData = new byte[msLen];
                            resizedData = resizedMs.ToArray();

                            using (System.IO.FileStream fStream = new System.IO.FileStream(Server.MapPath("~/Slideshow/images/Bardellino") + @"\" + Path.GetFileName(nomefile), System.IO.FileMode.Create))
                            {
                                fStream.Write(resizedData, 0, resizedData.Length);
                            }

                            // Repeat process to create a thumbnail image, reusing resizedBmp
                            // This approach does not use the 'using' statement or the high quality graphics properties

                            origHeight = resizedBmp.Height;
                            origWidth = resizedBmp.Width;
                            int thumbHeight = 100;
                            int thumbWidth = Convert.ToInt32(thumbHeight / (origHeight / origWidth));

                            Bitmap thumbBmp = new Bitmap(resizedBmp, thumbWidth, thumbHeight);
                            Graphics thumbGr = Graphics.FromImage(thumbBmp);
                            thumbGr.DrawImage(thumbBmp, 0, 0);

                            MemoryStream thumbMs = new MemoryStream();
                            thumbBmp.Save(thumbMs, System.Drawing.Imaging.ImageFormat.Jpeg);
                            long thumbmsLen = thumbMs.Length;
                            byte[] thumbData = new byte[thumbmsLen];
                            thumbData = thumbMs.ToArray();

                            System.IO.FileStream tStream = new System.IO.FileStream(Server.MapPath("~/Slideshow/images/Bardellino") + @"\thmb_" + Path.GetFileName(nomefile), System.IO.FileMode.Create);
                            tStream.Write(thumbData, 0, thumbData.Length);
                            tStream.Close();

                            thumbGr.Dispose();
                            thumbBmp.Dispose();
                            thumbMs.Dispose();
                        }
                    }
                }
        }
    }
    protected ImageCodecInfo GetImgCodecInf(string mimeType)
    {
        ImageCodecInfo[] imgCodecInfo = ImageCodecInfo.GetImageEncoders();

        foreach (ImageCodecInfo infoItem in imgCodecInfo)
        {
            if (infoItem.MimeType.ToString().ToLower() == mimeType.ToLower())
            {
                return infoItem;
            }
        }

        return null;
    }
}