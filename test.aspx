<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <script src="Scripts/jquery-2.1.1.min.js"></script>
    <script src="Scripts/jquery.dynDateTime.min.js"></script>
    <script src="Scripts/calendar-en.min.js"></script>
    <link href="Content/calendar-blue.css" rel="stylesheet" />
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
        <AlternatingItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Elimina" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Modifica" />
                </td>
                <td>
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                </td>
                <td>
                    <asp:Label ID="DataInizioLabel" runat="server" Text='<%# Eval("DataInizio") %>' />
                </td>
                <td>
                    <asp:Label ID="DataFineLabel" runat="server" Text='<%# Eval("DataFine") %>' />
                </td>
                <td>
                    <asp:Label ID="PromoLabel" runat="server" Text='<%# Eval("Promo") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Eval("Pubblica") %>' Enabled="false" />
                </td>
            </tr>
        </AlternatingItemTemplate>
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

            <tr style="">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Aggiorna" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Annulla" />
                </td>
                <td>
                    <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                </td>
                <td>
                    <asp:TextBox Class="Calender"  ID="DataInizioTextBox" runat="server" Text='<%# Bind("DataInizio") %>' />
                </td>
                <td>
                    <asp:TextBox ID="DataFineTextBox" runat="server" Text='<%# Bind("DataFine") %>' />
                </td>
                <td>
                    <asp:TextBox ID="PromoTextBox" runat="server" Text='<%# Bind("Promo") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Bind("Pubblica") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>Non è stato restituito alcun dato.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Inserisci" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancella" />
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox Class="Calender" ID="DataInizioTextBox" runat="server" Text='<%# Bind("DataInizio") %>' />
                </td>
                <td>
                    <asp:TextBox ID="DataFineTextBox" runat="server" Text='<%# Bind("DataFine") %>' />
                </td>
                <td>
                    <asp:TextBox ID="PromoTextBox" runat="server" Text='<%# Bind("Promo") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Bind("Pubblica") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Elimina" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Modifica" />
                </td>
                <td>
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                </td>
                <td>
                    <asp:Label ID="DataInizioLabel" runat="server" Text='<%# Eval("DataInizio") %>' />
                </td>
                <td>
                    <asp:Label ID="DataFineLabel" runat="server" Text='<%# Eval("DataFine") %>' />
                </td>
                <td>
                    <asp:Label ID="PromoLabel" runat="server" Text='<%# Eval("Promo") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Eval("Pubblica") %>' Enabled="false" />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                            <tr runat="server" style="">
                                <th runat="server"></th>
                                <th runat="server">Id</th>
                                <th runat="server">DataInizio</th>
                                <th runat="server">DataFine</th>
                                <th runat="server">Promo</th>
                                <th runat="server">Pubblica</th>
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
            <tr style="">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Elimina" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Modifica" />
                </td>
                <td>
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                </td>
                <td>
                    <asp:Label ID="DataInizioLabel" runat="server" Text='<%# Eval("DataInizio") %>' />
                </td>
                <td>
                    <asp:Label ID="DataFineLabel" runat="server" Text='<%# Eval("DataFine") %>' />
                </td>
                <td>
                    <asp:Label ID="PromoLabel" runat="server" Text='<%# Eval("Promo") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Eval("Pubblica") %>' Enabled="false" />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnString %>" DeleteCommand="DELETE FROM [bapromo] WHERE [Id] = @Id" InsertCommand="INSERT INTO [bapromo] ([DataInizio], [DataFine], [Promo], [Pubblica]) VALUES (@DataInizio, @DataFine, @Promo, @Pubblica)" SelectCommand="SELECT * FROM [bapromo]" UpdateCommand="UPDATE [bapromo] SET [DataInizio] = @DataInizio, [DataFine] = @DataFine, [Promo] = @Promo, [Pubblica] = @Pubblica WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter DbType="Date" Name="DataInizio" />
            <asp:Parameter DbType="Date" Name="DataFine" />
            <asp:Parameter Name="Promo" Type="String" />
            <asp:Parameter Name="Pubblica" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter DbType="Date" Name="DataInizio" />
            <asp:Parameter DbType="Date" Name="DataFine" />
            <asp:Parameter Name="Promo" Type="String" />
            <asp:Parameter Name="Pubblica" Type="Boolean" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

