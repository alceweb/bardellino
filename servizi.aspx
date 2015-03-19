<%@ Page Title="Servizi" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="servizi.aspx.cs" Inherits="servizi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <script src="Scripts/jquery-2.1.1.min.js"></script>
    <script src="Scripts/jquery.colorbox.js"></script>
    <link href="Content/colorbox.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
     <script type="text/javascript">
         $(document).ready(function () {
             //Examples of how to assign the Colorbox event to elements
             $(".group1").colorbox({ maxHeight: '100%', rel: 'group1', transition: 'fade' });
             $(".group2").colorbox({ maxHeight: '100%', rel: 'group2', transition: 'fade' });
             $(".group3").colorbox({ maxHeight: '100%', rel: 'group3', transition: 'fade' });
             $(".group4").colorbox({ maxHeight: '100%', rel: 'group4', transition: 'fade' });
             $(".group5").colorbox({ maxHeight: '100%', rel: 'group5', transition: 'fade' });
         });
		</script>
    <div>
     <div class="rep1" style="float:right" >
         <asp:Label ID="LabelRepeator" runat="server"></asp:Label>
        <asp:Repeater ID="lista" runat="server">
            <HeaderTemplate>
            </HeaderTemplate>
            <ItemTemplate>
                <div style="width:100%; margin:auto">
                    <a class='<%# "group" + ListView1.SelectedValue.ToString() %>' href="<%# (Container.DataItem as string).Substring(Server.MapPath("./").Length).Replace("\\", "/") %>">
                        <img src="<%# (Container.DataItem as string).Substring(Server.MapPath("./").Length).Replace("\\", "/") %>" />
                    </a>
                </div>
            </ItemTemplate>
            <FooterTemplate></FooterTemplate>
        </asp:Repeater>
    </div>
   <asp:ListView ID="ListView1" OnSelectedIndexChanged="ListView1_SelectedIndexChanged" SelectedIndex="-1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <tr >
                <td style="background-image: url('Images/Sfondo.png'); max-width:300px">
                    <h2><asp:Label ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' /></h2><br />
                    <asp:Label ID="DescrizioneLabel" runat="server" Text='<%# Eval("Descrizione") %>' />
                </td>
                <td style="text-align:center">
                    <asp:LinkButton ID="linkbGalle" CommandName="Select" CausesValidation="false" runat="server"><img src='<%# "Images/Servizi/" + Eval("Id") + ".jpg"  %>' /></asp:LinkButton>
                    <a class='<%# "group" + Eval("Id")%>' href='<%# "Images/Servizi/" + Eval("Id") + ".jpg"%>'></a><br />
                </td>
            </tr>
        </ItemTemplate>
        <SelectedItemTemplate>
            <tr style="background-color:#726249">
                <td style="background-image: url('Images/Sfondo.png'); max-width:300px">
                    <h2><asp:Label ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' /></h2><br />
                    <asp:Label ID="DescrizioneLabel" runat="server" Text='<%# Eval("Descrizione") %>' />
                </td>

                <td>
                    <div Style="float:right;text-align:right">
                        <div style="font-weight:bold; text-align:center; width:100%">
                            Chiedi informazioni<br />
                        </div>
                    Nome  <asp:TextBox ID="TextBoxNome" runat="server"></asp:TextBox><br />
                    Tel   <asp:TextBox ID="TextBoxTelefono" runat="server"></asp:TextBox><br />
                    Mail  <asp:TextBox ID="TextBoxMail" runat="server"></asp:TextBox><br />
                    Mex   <asp:TextBox ID="TextBoxMessaggio" Width="300px" runat="server" TextMode="MultiLine"></asp:TextBox><hr />
                        <asp:Button ID="InviaButton" OnClick="InviaButton_Click" runat="server" ForeColor="Green" Text="Invia" />
                        <asp:Button ID="CancelButton1" OnClick="CancelButton1_Click" CausesValidation="false" ForeColor="Red" runat="server" Text="Annulla" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Nome" ControlToValidate="TextBoxNome" Display="None"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Tel" ControlToValidate="TextBoxTelefono" Display="None"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxMail" ErrorMessage="Mail" Display="None"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Formato Mail non valido" ControlToValidate="TextBoxMail" Display="None" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Mex" ControlToValidate="TextBoxMessaggio" Display="None"></asp:RequiredFieldValidator>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" HeaderText="Errore inserimento campi:" />                
                     </div>
                 </td>
           </tr>
        </SelectedItemTemplate>
        <LayoutTemplate>
            <div class="servizi" runat="server">
                        <table class="tbl2" id="itemPlaceholderContainer" runat="server" border="0" style="">
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                            <tr runat="server" style="">
                            </tr>
                        </table>
            </div>
        </LayoutTemplate>
     </asp:ListView>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
         ConnectionString="<%$ ConnectionStrings:ConnString %>" 
         SelectCommand="SELECT * FROM [baserv]">
     </asp:SqlDataSource>
    </div>
    <div>
    </div>
</asp:Content>

