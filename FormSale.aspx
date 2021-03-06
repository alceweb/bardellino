﻿<%@ Page Title="Infosale" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="FormSale.aspx.cs" Inherits="FormSale" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="tblForm" >
        <tr>
            <td colspan="2">
                <h2>Richiesta info Sale</h2><hr />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="NomeLabel" runat="server" Text="Nome"></asp:Label>

            </td>
            <td>
                <asp:TextBox ID="NomeTextBox" runat="server"></asp:TextBox><br />

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="CognomeLabel" runat="server" Text="Cognome"></asp:Label>

            </td>
            <td>
                <asp:TextBox ID="CognomeTextBox" runat="server"></asp:TextBox><br />

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="MailLabel" runat="server" Text="Mail"></asp:Label>

            </td>
            <td>
                <asp:TextBox ID="MailTextBox" runat="server"></asp:TextBox><br />

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
                <asp:TextBox Height="500px" ID="RichiestaTtBox1" TextMode="MultiLine" runat="server"></asp:TextBox><br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="InviaButton" OnClick="InviaButton_Click" runat="server" Text="Invia" />
            </td>
            <td>
                <asp:Button ID="Button2" CommandName="Delete" runat="server" Text="Annulla" />
            </td>
        </tr>
    </table>
</asp:Content>

