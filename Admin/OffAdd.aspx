<%@ Page Title="Inserisci nuova offerta" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="OffAdd.aspx.cs" Inherits="Admin_OffAdd" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".Calender").dynDateTime({
                showsTime: false,
                ifFormat: "%d/%m/%Y",
                daFormat: "%l;%M %p, %e %m",
                align: "BR",
                electric: false,
                singleClick: true,
                displayArea: ".siblings('.dtcDisplayArea')",
                button: ".next()"
            });
        });
                        </script>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" InsertItemPosition="FirstItem">
    <EmptyDataTemplate>
        <span>Non è stato restituito alcun dato.</span>
    </EmptyDataTemplate>
    <InsertItemTemplate><br />
        <h2>Inserisci nuova offerta</h2>
        <span style="">Inizio:
        <asp:TextBox ID="DataInizioTextBox" Width="100" Class="Calender" runat="server" Text='<%# Bind("DataInizio") %>' />
        </span>
        <span>
            Fine:
        <asp:TextBox ID="DataFineTextBox"  Width="100" Class="Calender" runat="server" Text='<%# Bind("DataFine") %>' />
        </span>
        Pubblica <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Bind("Pubblica") %>' />
        </span>
        <span>
        <br />Titolo:
        <asp:TextBox ID="TitoloTextBox" runat="server" Text='<%# Bind("Titolo") %>' />
        </span>
        <span>
        <CKEditor:CKEditorControl ID="CKEditor1" Text='<%# Bind("offerta") %>' BasePath="~/ckeditor" runat="server" UIColor="Gray" Language="it" EnterMode="BR" ResizeMaxHeight="3000" ResizeMaxWidth="3000"></CKEditor:CKEditorControl>
        </span>
        <span><hr />
        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Inserisci" />
        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancella" />
        </span><hr /><hr />
    </InsertItemTemplate>
    <ItemTemplate>
        <span style="">
        Inizio:
        <asp:Label ID="DataInizioLabel" CssClass="label" runat="server" Text='<%# Eval("DataInizio", "{0: dddd dd-MMM-yyyy}") %>' />
         - Fine:
        <asp:Label ID="DataFineLabel" CssClass="label" runat="server" Text='<%# Eval("DataFine", "{0: dddd dd-MMM-yyyy}") %>' />
        Pubblica<asp:CheckBox ID="PubblicaCheckBox" CssClass="label" runat="server" Checked='<%# Eval("Pubblica") %>' Enabled="false" />
        <br />
        Titolo:
        <asp:Label ID="TitoloLabel" CssClass="label" runat="server" Text='<%# Eval("Titolo") %>' />
        <br />
        <asp:Label ID="offertaLabel" CssClass="label" runat="server" Text='<%# Eval("offerta") %>' />
        </span><hr />
    </ItemTemplate>
    <LayoutTemplate>
        <div class="tbl3" id="itemPlaceholderContainer" runat="server" style="width:500px; float:left; margin-left:20px; padding:10px">
            <span runat="server" id="itemPlaceholder" />
        </div>
        <div style="">
        </div>
    </LayoutTemplate>
</asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnString %>" 
    DeleteCommand="DELETE FROM [baoff] WHERE [Id] = @Id" 
    InsertCommand="INSERT INTO [baoff] ([DataInizio], [DataFine], [offerta], [Pubblica], [Titolo]) VALUES (@DataInizio, @DataFine, @offerta, @Pubblica, @Titolo)" 
    SelectCommand="SELECT * FROM [baoff] ORDER BY [Id] DESC" 
    UpdateCommand="UPDATE [baoff] SET [DataInizio] = @DataInizio, [DataFine] = @DataFine, [offerta] = @offerta, [Pubblica] = @Pubblica, [Titolo] = @Titolo WHERE [Id] = @Id">
    <DeleteParameters>
        <asp:Parameter Name="Id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter DbType="Date" Name="DataInizio" />
        <asp:Parameter DbType="Date" Name="DataFine" />
        <asp:Parameter Name="offerta" Type="String" />
        <asp:Parameter Name="Pubblica" Type="Boolean" />
        <asp:Parameter Name="Titolo" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter DbType="Date" Name="DataInizio" />
        <asp:Parameter DbType="Date" Name="DataFine" />
        <asp:Parameter Name="offerta" Type="String" />
        <asp:Parameter Name="Pubblica" Type="Boolean" />
        <asp:Parameter Name="Titolo" Type="String" />
        <asp:Parameter Name="Id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

