<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="tblForm" >
        <tr>
            <td>
    <h2>Promo prima pagina</h2><hr />    <script src="Scripts/jquery-2.1.1.min.js"></script>
            </td>
        </tr>
        <tr>
            <td>
                <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                    <EditItemTemplate>
                        <span style="">Id:
                        <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                        <br />
                        Titolo:
                        <asp:TextBox ID="TitoloTextBox" runat="server" Text='<%# Bind("Titolo") %>' />
                        <br />
                        DataInizio:
                        <asp:TextBox ID="DataInizioTextBox" Width="120px" runat="server" Text='<%# Bind("DataInizio", "{0:dd MMM yyyy}") %>' />
                        DataFine:
                        <asp:TextBox ID="DataFineTextBox" Width="120px" runat="server" Text='<%# Bind("DataFine", "{0:dd MMM yyyy}") %>' />
                        <br />
                        <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Bind("Pubblica") %>' Text="Pubblica" />
                        <br />
  	               <CKEditor:CKEditorControl ID="CKEditor1" Text='<%# Bind("Promo") %>' BasePath="~/ckeditor" runat="server" UIColor="Gray" Language="it" EnterMode="BR"></CKEditor:CKEditorControl>
                        <br />
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Aggiorna" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Annulla" />
                        <br />
                        <br />
                        </span>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        <span>Non è stato restituito alcun dato.</span>
                    </EmptyDataTemplate>
                    <ItemTemplate>
                        <span style="">Id:
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                        <br />
                        Titolo:
                        <asp:Label ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' />
                        <br />
                        DataInizio:
                        <asp:Label ID="DataInizioLabel" runat="server" Text='<%# Eval("DataInizio", "{0:dd MMM yyyy}") %>' />
                        <br />
                        DataFine:
                        <asp:Label ID="DataFineLabel" runat="server" Text='<%# Eval("DataFine", "{0:dd MMM yyyy}") %>' />
                        <br />
                        <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Eval("Pubblica") %>' Enabled="false" Text="Pubblica" />
                        <br />
                        Promo:
                        <asp:Label ID="PromoLabel" runat="server" Text='<%# Eval("Promo") %>' />
                        <br />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Modifica" />
                        <br />
                        <br />
                        </span>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <div id="itemPlaceholderContainer" runat="server" style="">
                            <span runat="server" id="itemPlaceholder" />
                        </div>
                        <div style="">
                        </div>
                    </LayoutTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnString %>" DeleteCommand="DELETE FROM [bapromo] WHERE [Id] = @Id" InsertCommand="INSERT INTO [bapromo] ([DataInizio], [DataFine], [Promo], [Pubblica], [Titolo]) VALUES (@DataInizio, @DataFine, @Promo, @Pubblica, @Titolo)" SelectCommand="SELECT * FROM [bapromo]" UpdateCommand="UPDATE [bapromo] SET [DataInizio] = @DataInizio, [DataFine] = @DataFine, [Promo] = @Promo, [Pubblica] = @Pubblica, [Titolo] = @Titolo WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter DbType="Date" Name="DataInizio" />
                        <asp:Parameter DbType="Date" Name="DataFine" />
                        <asp:Parameter Name="Promo" Type="String" />
                        <asp:Parameter Name="Pubblica" Type="Boolean" />
                        <asp:Parameter Name="Titolo" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter DbType="Date" Name="DataInizio" />
                        <asp:Parameter DbType="Date" Name="DataFine" />
                        <asp:Parameter Name="Promo" Type="String" />
                        <asp:Parameter Name="Pubblica" Type="Boolean" />
                        <asp:Parameter Name="Titolo" Type="String" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

