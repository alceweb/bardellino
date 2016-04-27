<%@ Page Title="Gestione slide - Cascina Bardellino -" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="SlideBEdit.aspx.cs" Inherits="Admin_SlideEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                <h4>L'immagine deve essere orizzontale - Larghezza consigliata 1024px
                </h4><br /><br />
    <div style="float:left; margin-right:30px">
                <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                    <EditItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Fatto" />
                            </td>
                            <td>
                                <asp:Label ID="lblId" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                                <asp:FileUpload ID="FileUpload1" BackColor="#8e7e60" runat="server" /><br />
                                <asp:Label ID="LblUploadOk" runat="server"></asp:Label>
                                <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" Text="Upload" />
                                <asp:Image ID="img1" ImageUrl='<%# "../Slideshow/images/Bardellino/" + Eval("Id") + ".jpg" %>' runat="server" />
                            </td>
                        </tr>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Button ID="EditButton" runat="server" Text="Gestisci" PostBackUrl='<%# "~/Admin/SlideBEdit1.aspx?id=" + Eval("Id") %>' />
                            </td>
                            <td>
                                <img src='<%# "../Slideshow/images/Bardellino/" + Eval("Id") + ".jpg" %>' />
                            </td>
                        </tr>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table class="tbl2" id="itemPlaceholderContainer" runat="server" border="0" style="">
                                        <tr runat="server" style="">
                                            <th runat="server"></th>
                                            <th runat="server">Slide show Cascina Bardellino</th>
                                            <th runat="server"></th>
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
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Modifica" />
                            </td>
                            <td>
                                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                            </td>
                            <td>
                                <asp:Label ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' />
                            </td>
                            <td>
                                <asp:Label ID="TestoLabel" runat="server" Text='<%# Eval("Testo") %>' />
                            </td>
                        </tr>
                    </SelectedItemTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                    ConnectionString="<%$ ConnectionStrings:ConnString %>"
                    SelectCommand="SELECT * FROM [Slide] WHERE ([Id] &lt;= @Id) Order by [Id] "
                    UpdateCommand="UPDATE [Slide] SET [Titolo] = @Titolo, [Testo] = @Testo WHERE [Id] = @Id">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="7" Name="Id" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Titolo" Type="String" />
                        <asp:Parameter Name="Testo" Type="String" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>

    </div>
    <div>
                <asp:ListView ID="ListView2" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource2">
                    <EditItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Fatto" />
                            </td>
                            <td>
                                <asp:Label ID="lblId" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                                <asp:FileUpload ID="FileUpload1" BackColor="#8e7e60" runat="server" /><br />
                                <asp:Label ID="LblUploadOk" runat="server"></asp:Label>
                                <asp:Button ID="Button2" OnClick="Button2_Click" runat="server" Text="Upload" />
                                <asp:Image ID="img1" ImageUrl='<%# "../Slideshow/images/Padella/" + Eval("Id") + ".jpg" %>' runat="server" />
                            </td>
                        </tr>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Modifica" />
                            </td>
                            <td>
                                <img src='<%# "../Slideshow/images/Padella/" + Eval("Id") + ".jpg" %>' />
                            </td>
                        </tr>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table id="Table1" runat="server">
                            <tr id="Tr1" runat="server">
                                <td id="Td1" runat="server">
                                    <table class="tbl2" id="itemPlaceholderContainer" runat="server" border="0" style="">
                                        <tr id="Tr2" runat="server" style="">
                                            <th id="Th1" runat="server"></th>
                                            <th id="Th2" runat="server">Slide show La Padella e la Brace</th>
                                            <th id="Th3" runat="server"></th>
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
                        <tr style="">
                            <td>
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Modifica" />
                            </td>
                            <td>
                                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                            </td>
                            <td>
                                <asp:Label ID="TitoloLabel" runat="server" Text='<%# Eval("Titolo") %>' />
                            </td>
                            <td>
                                <asp:Label ID="TestoLabel" runat="server" Text='<%# Eval("Testo") %>' />
                            </td>
                        </tr>
                    </SelectedItemTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server"
                    ConnectionString="<%$ ConnectionStrings:ConnString %>"
                    SelectCommand="SELECT * FROM [Slide] WHERE [Id] > 7 Order by [Id] "
                    UpdateCommand="UPDATE [Slide] SET [Titolo] = @Titolo, [Testo] > @Testo WHERE [Id] = @Id">
                    <UpdateParameters>
                        <asp:Parameter Name="Titolo" Type="String" />
                        <asp:Parameter Name="Testo" Type="String" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>

    </div>
</asp:Content>

