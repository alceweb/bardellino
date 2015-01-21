<%@ Page Title="Modifica promo" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="PromoEdit.aspx.cs" Inherits="Admin_PromoEdit" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td>
                <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" SelectedIndex="0" DataSourceID="SqlDataSource1">
                    <EmptyDataTemplate>
                        <table id="Table1" runat="server" style="">
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
                        <table id="Table2" runat="server">
                            <tr id="Tr1" runat="server">
                                <td id="Td1" runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                        <tr id="Tr2" runat="server" style="">
                                            <th id="Th1" runat="server"></th>
                                        </tr>
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr id="Tr3" runat="server">
                                <td id="Td2" runat="server" style=""></td>
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
                <asp:ListView ID="ListView2" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource2">
                    <ItemTemplate>
                        <tr>
                            <td style="min-width: 400px">
                                <h3>
                                    <asp:Label CssClass="label" ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' /></h3>
                                <br />
                                <img src='<%# "../Images/Promo/" + Eval("Id") + ".jpg" %>' class="EditPromoImg" />
                                <br />
                                Inizio:
                                <asp:Label CssClass="label" ID="DataInizioLabel" runat="server" Text='<%# Eval("DataInizio", "{0:dddd dd-MMM-yyyy}") %>' />
                                <br />
                                Fine:
                                <asp:Label CssClass="label" ID="DataFineLabel" runat="server" Text='<%# Eval("DataFine", "{0:dddd dd-MMM-yyyy}") %>' />
                                <br />
                                Pubblica
                                <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Eval("Pubblica") %>' Enabled="false" />

                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="PromoLabel" runat="server" Text='<%# Eval("Promo") %>' /><hr />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="EditButton" ForeColor="green" runat="server" CommandName="Edit" Text="Modifica" />
                                <asp:Button ID="DeleteButton" ForeColor="red" OnClientClick='return confirm("Stai cancellando definitifamente una promo!!! Continuare?")' runat="server" CommandName="Delete" Text="Elimina" />
                            </td>
                        </tr>
                    </ItemTemplate>
                    <EditItemTemplate>
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
                        <tr>
                            <td>
                                <span style="">Inizio:
                                <asp:TextBox ID="DataInizioTextBox" Width="100" Class="Calender" runat="server" Text='<%# Bind("DataInizio") %>' />
                                </span>
                                <span>Fine:
                                <asp:TextBox ID="DataFineTextBox" Width="100" Class="Calender" runat="server" Text='<%# Bind("DataFine") %>' />
                                </span>
                                <span>Pubblica
                                <asp:CheckBox ID="PubblicaCheckBox" runat="server" Checked='<%# Bind("Pubblica") %>' />
                                </span>
                                <span>
                                    <br />
                                    Titolo:
                                    <asp:TextBox ID="TitoloTextBox" runat="server" Text='<%# Bind("Titolo") %>' />
                                </span>

                            </td>
                            <tr />
                        </tr>
                        <tr>
                            <td>
                               <img src='<%# "../Images/Promo/" + Eval("Id") + ".jpg" %>' class="EditPromoImg" />
                               <span class="message-success">Dimensione consigliata 500x350</span><br />
                                <asp:FileUpload ID="FileUpload" runat="server" BackColor="#8E7E60" /><br />
                                <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" Text="Scarica" />
                         <asp:Label ID="LblUploadOk" runat="server"></asp:Label>
                           </td>
                            </tr>
                        <tr>
                            <td>
                                <span>
                                    <CKEditor:CKEditorControl ID="CKEditor1" Text='<%# Bind("Promo") %>' BasePath="~/ckeditor" runat="server" UIColor="Gray" Language="it" EnterMode="BR" ResizeMaxHeight="3000" ResizeMaxWidth="3000"></CKEditor:CKEditorControl>
                                <hr />
                                </span>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="UpdateButton" ForeColor="green" runat="server" CommandName="Update" Text="Aggiorna" />
                                <asp:Button ID="CancelButton" ForeColor="red" runat="server" CommandName="Cancel" Text="Annulla" />
                            </td>
                        </tr>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        <table id="Table3" runat="server" style="">
                            <tr>
                                <td></td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    <LayoutTemplate>
                        <table id="Table4" runat="server">
                            <tr id="Tr4" runat="server">
                                <td id="Td3" runat="server">
                                    <table class="tbl3" id="itemPlaceholderContainer" runat="server" border="0" style="">
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr id="Tr5" runat="server">
                                <td id="Td4" runat="server" style=""></td>
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

