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
                <asp:TextBox ID="NomeTextBox" CssClass="textForm" required="required" placeholder="Nome" runat="server"></asp:TextBox><br />

            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="CognomeTextBox" CssClass="textForm" required="required" placeholder="Cognome" runat="server"></asp:TextBox><br />

            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="MailTextBox" CssClass="textForm" required="required" type="email" placeholder="Email" runat="server"></asp:TextBox><br />

            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TelTextBox" CssClass="textForm" required="required" placeholder="Telefono" runat="server"></asp:TextBox><br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox Height="200px" Width="300px" CssClass="textForm" ID="RichiestaTtBox1" required="required" placeholder="Scrivi la tua richiesta" TextMode="MultiLine" runat="server"></asp:TextBox><br />
            </td>
        </tr>
        <tr>
            <td >
                <asp:Button ID="InviaButton" OnClick="InviaButton_Click" ForeColor="Green" runat="server" Text="Invia" />
                <asp:Button ID="ChiudiButton" OnClick="ChiudiButton_Click" runat="server" Text="Chiudi" CausesValidation="False" UseSubmitBehavior="False" />
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
                <div style="margin:auto; text-align:center"><hr />
            <h2><asp:Label ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' /></h2><br />
            <img src='<%# "Images/Promo/" + Eval("Id") + ".jpg" %>'/><br />
            <asp:LinkButton ID="LinkButton2" OnClick="LinkButton2_Click" runat="server">Contattaci per informazioni</asp:LinkButton><hr />
            <p><asp:Label ID="PromoLabel" runat="server" Text='<%# Eval("Promo") %>' /></p><hr />
            <asp:LinkButton ID="LinkButton1" OnClick="LinkButton1_Click" runat="server">Contattaci per informazioni</asp:LinkButton><br /><br />
                </div>
            </span>
        </ItemTemplate>
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

