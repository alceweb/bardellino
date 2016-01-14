using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.IO;

public partial class Admin_SerGallDelete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string cartella = "~/Images/Servizi/";
        string num = ListView1.SelectedValue.ToString();
            string[] filePaths = Directory.GetFiles(Server.MapPath(cartella), num + "-*jpg*");
            List<ListItem> files = new List<ListItem>();
            foreach (string filePath in filePaths)
            {
                files.Add(new ListItem(Path.GetFileName(filePath), filePath));
            }
            ListView2.DataSource = files;
            ListView2.DataBind();
    }
    protected void DownloadFile(object sender, EventArgs e)
    {
        string filePath = (sender as LinkButton).CommandArgument;
        Response.ContentType = ContentType;
        Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
        Response.WriteFile(filePath);
        Response.End();
    }
    protected void DeleteFile(object sender, EventArgs e)
    {
        string filePath = (sender as LinkButton).CommandArgument;
        File.Delete(filePath);
        Response.Redirect(Request.Url.AbsoluteUri);
    }
}