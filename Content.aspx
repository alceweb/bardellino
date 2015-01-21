<%@ Page Title="Content" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Content.aspx.cs" Inherits="Content" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <table>
        <tr>
            <td>
    <asp:Panel ID="pnlForm" Visible="false" runat="server">
    <table class="tblFormP" >
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
            <td colspan="2">
                <asp:Button ID="InviaButton" OnClick="InviaButton_Click" ForeColor="Green" runat="server" Text="Invia" />
                <asp:Button ID="ChiudiButton" OnClick="ChiudiButton_Click" runat="server" Text="Chiudi" />
            </td>
        </tr>
    </table>
    </asp:Panel>

            </td>
            <td>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <EmptyDataTemplate>
            <span>Non è stato restituito alcun dato.</span>
        </EmptyDataTemplate>
        <ItemTemplate>
                <div style="margin:auto; text-align:center">
            <img src='<%# "Images/Promo/" + Eval("Id") + ".jpg" %>'/><br />

                </div>
            <h2><asp:Label ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' /></h2>
            <h3><asp:Label ID="PromoLabel" runat="server" Text='<%# Eval("Promo") %>' /></h3><hr />
            <asp:LinkButton ID="LinkButton1" OnClick="LinkButton1_Click" runat="server">Contattaci per informazioni</asp:LinkButton>
            </span>
        </ItemTemplate>
        <SelectedItemTemplate>
                <div style="margin:auto; text-align:center">
            <img src='<%# "Images/Promo/" + Eval("Id") + ".jpg" %>'/><br />

                </div>
            <h2><asp:Label ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' /></h2>
            <h3><asp:Label ID="PromoLabel" runat="server" Text='<%# Eval("Promo") %>' /></h3><hr />
            <p>qui la form con la richiesta informazioni</p>
            </span>
        </SelectedItemTemplate>
        <LayoutTemplate>
            <div class="Promo" id="itemPlaceholderContainer" runat="server" style="">
                <span  runat="server" id="itemPlaceholder" />
            </div>
        </LayoutTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnString %>" SelectCommand="SELECT * FROM [bapromo] WHERE ([Id] = @Id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Id" QueryStringField="Id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

            </td>
        </tr>
    </table>
</asp:Content>

