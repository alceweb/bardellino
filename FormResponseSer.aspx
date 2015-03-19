<%@ Page Title="Contatti" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="FormResponseSer.aspx.cs" Inherits="FormResponseSer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="tblForm">
            <h2>La tua richiesta è stata inoltrata</h2>
        <img src="Images/ok.png" /><h3>Verrai contattato al più presto dal titolare di "<em>Cascina Bardellino</em>" al numero di telefono che hai comunicato o via mail.</h3><hr />
        <a runat="server" href="servizi.aspx">Torna a "Servizi"</a>
    </div>
</asp:Content>

