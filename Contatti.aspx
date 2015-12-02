<%@ Page Title="contatti" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Contatti.aspx.cs" Inherits="Contatti" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="tblForm" >
        <tr>
            <td colspan="2">
                <h2>Richiesta informazioni</h2>

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="NomeLabel" runat="server" Text="Nome"></asp:Label>

            </td>
            <td>
                <asp:TextBox ID="NomeTextBox" required="required" runat="server"></asp:TextBox><br />

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="CognomeLabel" runat="server" Text="Cognome"></asp:Label>

            </td>
            <td>
                <asp:TextBox ID="CognomeTextBox" required="required" runat="server"></asp:TextBox><br />

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="MailLabel" runat="server" Text="Mail"></asp:Label>

            </td>
            <td>
                <asp:TextBox ID="MailTextBox" required="required" type="email" runat="server"></asp:TextBox><br />

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="TelLabel" runat="server" Text="Telefono"></asp:Label>

            </td>
            <td>
                <asp:TextBox ID="TelTextBox" runat="server"></asp:TextBox><br />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:label ID="RichiestaLabel" runat="server" Text="Richiesta"/>

            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:TextBox Height="500px" ID="RichiestaTtBox1" required="required" TextMode="MultiLine" runat="server"></asp:TextBox><br />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="InviaButton" OnClick="InviaButton_Click" ForeColor="Green" runat="server" Text="Invia" />
                <asp:Button ID="Button2" CommandName="Delete" ForeColor="Red" runat="server" Text="Annulla" />
            </td>
        </tr>
    </table>
    <div >
    </div>
</asp:Content>

