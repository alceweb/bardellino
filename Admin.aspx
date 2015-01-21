<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <script src="Scripts/jquery-2.1.1.min.js"></script>
    <script src="Scripts/jquery.dynDateTime.min.js"></script>
    <script src="Scripts/calendar-en.min.js"></script>
    <link href="Content/calendar-blue.css" rel="stylesheet" />
    <table>
        <tr>
            <td>
                <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                    <EmptyDataTemplate>
                        <table runat="server" style="">
                            <tr>
                                <td>Non è stato restituito alcun dato.</td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    <ItemTemplate>
                        <tr style="">
                            <td>
                                <asp:LinkButton CssClass="linkap" ID="LinkButton1" CommandName="Select" Text='<%# Eval("Titolo") %>' runat="server"></asp:LinkButton>
                            </td>
                        </tr>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                        <tr runat="server" style="">
                                            <th runat="server">Promo inserite<hr /></th>
                                        </tr>
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style=""></td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <tr style="color: #FFFFFF; background-color: #000000">
                            <td>
                                <asp:Label ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' />
                            </td>
                        </tr>
                    </SelectedItemTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnString %>" SelectCommand="SELECT * FROM [bapromo] ORDER BY [DataInizio] DESC"></asp:SqlDataSource>
            </td>
            <td>
                <asp:ListView ID="ListView2" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource2" >
                    <ItemTemplate>
                        <tr>
                            <td>
                                <h3><asp:Label CssClass="label" ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' /></h3>
                                Inizio: <asp:Label CssClass="label" ID="DataInizioLabel" runat="server" Text='<%# Eval("DataInizio", "{0:dddd dd-MMM-yyyy}") %>' />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Fine: <asp:Label CssClass="label" ID="DataFineLabel" runat="server" Text='<%# Eval("DataFine", "{0:dddd dd-MMM-yyyy}") %>' />
                                <br />
                                Pubblica <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Eval("Pubblica") %>' Enabled="false" />
                                <br /><span class="message-error">Descrizione promo</span><hr />
                                <asp:Label ID="PromoLabel" runat="server" Text='<%# Eval("Promo") %>' /><hr />
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Elimina" />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Modifica" />
                                <br />
                            </td>
                        </tr>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <script type="text/javascript">
                            $(document).ready(function () {
                                $(".Calender").dynDateTime({
                                    showsTime: false,
                                    ifFormat: "%d/%m/%Y %H:%M",
                                    daFormat: "%l;%M %p, %e %m",
                                    align: "BR",
                                    electric: false,
                                    singleClick: true,
                                    displayArea: ".siblings('.dtcDisplayArea')",
                                    button: ".next()"
                                });
                            });
                        </script>
                        <tr>
                            <td>
                            Data inizio
                                <td>
                                    <asp:TextBox ID="DataInizioTextBox" Class="Calender" runat="server" Text='<%# Bind("DataInizio", "{0:dddd dd-MMM-yyyy}") %>' />
                                </td>
                        </tr>
                        <tr>
                            <td>Data Fine

                            </td>
                            <td>
                                <asp:TextBox ID="DataFineTextBox" Class="Calender" runat="server" Text='<%# Bind("DataFine", "{0:dddd dd-MMM-yyyy}") %>' />
                            </td>

                        </tr>
                        <tr>
                            <td>
                                Pubblica 
                            </td>
                            <td>
                                <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Bind("Pubblica") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Titolo
                            </td>
                            <td>
                                <asp:TextBox ID="TitoloTextBox" runat="server" Text='<%# Bind("Titolo") %>' />

                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <CKEditor:CKEditorControl ID="CKEditor1" Text='<%# Bind("Promo") %>' BasePath="~/ckeditor" runat="server" UIColor="Gray" Language="it" EnterMode="BR"></CKEditor:CKEditorControl>
                            </td>
                        </tr>
                        <tr>
                             <td>
                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Aggiorna" />
                              </td>
                            <td>
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Annulla" />
                            </td>
                        </tr>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        <table runat="server" style="">
                            <tr>
                                <td></td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table  class="tbl3" id="itemPlaceholderContainer" runat="server" border="0" style="">
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style=""></td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnString %>" DeleteCommand="DELETE FROM [bapromo] WHERE [Id] = @Id" InsertCommand="INSERT INTO [bapromo] ([DataInizio], [DataFine], [Promo], [Pubblica], [Titolo]) VALUES (@DataInizio, @DataFine, @Promo, @Pubblica, @Titolo)" SelectCommand="SELECT * FROM [bapromo] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [bapromo] SET [DataInizio] = @DataInizio, [DataFine] = @DataFine, [Promo] = @Promo, [Pubblica] = @Pubblica, [Titolo] = @Titolo WHERE [Id] = @Id">
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
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ListView1" Name="Id" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
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

