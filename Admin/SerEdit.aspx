<%@ Page Title="Gestione servizi" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="SerEdit.aspx.cs" Inherits="Admin_SerEdit" %>
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
                                <td></td>
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnString %>" SelectCommand="SELECT * FROM [baserv] ORDER BY [Titolo]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:ListView ID="ListView2" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource2">
                    <ItemTemplate>
                        <tr>
                            <td style="min-width: 400px">
                                <h3>
                                    <asp:Label CssClass="label" ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' /></h3>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="OffertaLabel" runat="server" Text='<%# Eval("Descrizione") %>' /><hr />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="EditButton" ForeColor="green" runat="server" CommandName="Edit" Text="Modifica" />
                                <asp:Button ID="DeleteButton" ForeColor="red" OnClientClick='return confirm("Stai cancellando definitifamente una Offerta!!! Continuare?")' runat="server" CommandName="Delete" Text="Elimina" />
                            </td>
                        </tr>
                        <track />
                        <td>
                        <asp:Repeater ID="lista" runat="server">
                            <HeaderTemplate>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <span class="galla">
                                <a class="group1" href="<%# (Container.DataItem as string).Substring(Server.MapPath("./").Length).Replace("\\", "/") %>">
                                    <img style="border: thin solid #9C9C9C; margin: 8px;" src="<%# (Container.DataItem as string).Substring(Server.MapPath("./").Length).Replace("\\", "/") %>" />
                                </a>

                                </span>

                            </ItemTemplate>
                            <FooterTemplate></FooterTemplate>
                        </asp:Repeater>
                        </td>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <tr>
                            <td>
                                <span style="">
                                <span>
                                    <br />
                                    Titolo:
                                    <asp:TextBox ID="TitoloTextBox" runat="server" Text='<%# Bind("Titolo") %>' />
                                </span>
                            </td>
                        </tr>
                        <tr>
                            <td>
                               <img src='<%# "../Images/Servizi/" + Eval("Id") + ".jpg" %>' class="EditPromoImg" />
                               Dimensione consigliata 500x350<br />
                                <asp:FileUpload ID="FileUpload" runat="server" /><br />
                                <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" Text="Scarica" />
                         <asp:Label ID="LblUploadOk" runat="server"></asp:Label>
                           </td>
                            </tr>
                        <tr>
                            <td>
                                <span>
                                    <CKEditor:CKEditorControl ID="CKEditor1" Text='<%# Bind("Descrizione") %>' BasePath="~/ckeditor" runat="server" UIColor="Gray" Language="it" EnterMode="BR" ResizeMaxHeight="3000" ResizeMaxWidth="3000"></CKEditor:CKEditorControl>
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnString %>" 
                    DeleteCommand="DELETE FROM [baserv] WHERE [Id] = @Id" InsertCommand="INSERT INTO [baserv] ([Titolo] [Descrizione]) VALUES (@Titolo, @Descrizione)" 
                    SelectCommand="SELECT * FROM [baserv] WHERE ([Id] = @Id)" 
                    UpdateCommand="UPDATE [baserv] SET [Titolo] = @Titolo, [Descrizione] = @Descrizione WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Titolo" Type="String" />
                         <asp:Parameter Name="Descrizione" Type="String" />
                   </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ListView1" Name="Id" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Titolo" Type="String" />
                        <asp:Parameter Name="Descrizione" Type="String" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

