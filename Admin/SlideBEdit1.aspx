<%@ Page Title="Modifica immagine slide" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="SlideBEdit1.aspx.cs" Inherits="Admin_SlideBEdit1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                    <h4>L'immagine deve essere orizzontale - Larghezza consigliata 1024px
                </h4><hr />
    <div >
       <asp:ListView ID="ListView1" runat="server" DefaultMode="Edit" SelectedIndex="0" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                <tr style="">
                    <td>edit
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Fatto" />
                    </td>
                    <td>
             <asp:FileUpload ID="FileUpload1" runat="server" /><br />
                <asp:Label ID="Label1" runat="server" Text="Scegli l'altezza: "></asp:Label>
                        <asp:TextBox ID="txtWidth" runat="server" Text="800"></asp:TextBox><br />
                 <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Scarica foto" /><hr />
                        <asp:Label ID="lblId" runat="server" Text='<%# "Codice immagine" + Eval("Id") %>'></asp:Label><br />
                        <asp:Label ID="LblUploadOk" runat="server"></asp:Label>
                        <asp:Image ID="img1" ImageUrl='<%# "../Slideshow/images/Bardellino/" + Eval("Id") + ".jpg" %>' runat="server" />
                    </td>
                </tr>
            </EditItemTemplate>
            <ItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Modifica" />
                    </td>
                    <td>
                    </td>
                    <td>
                        <img src='<%# "../Slideshow/images/Bardellino/" + Eval("Id") + ".jpg" %>' />
                    </td>
                </tr>
            </ItemTemplate>
           <SelectedItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Modifica" /><hr />
                        <asp:Button ID="btnTorna" runat="server" Text="Torna" PostBackUrl="~/Admin/SlideBEdit.aspx" />
                    </td>
                    <td>
                    </td>
                    <td>
                        <img src='<%# "../Slideshow/images/Bardellino/" + Eval("Id") + ".jpg" %>' />
                    </td>
                </tr>
           </SelectedItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                <tr runat="server" style="">
                                    <th runat="server"></th>
                                    <th runat="server"></th>
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
        </asp:ListView><br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnString %>" DeleteCommand="DELETE FROM [Slide] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Slide] ([Titolo], [Testo]) VALUES (@Titolo, @Testo)" SelectCommand="SELECT * FROM [Slide] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [Slide] SET [Titolo] = @Titolo, [Testo] = @Testo WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Titolo" Type="String" />
                <asp:Parameter Name="Testo" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="Id" QueryStringField="Id" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Titolo" Type="String" />
                <asp:Parameter Name="Testo" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    <h1><asp:Label ID="lblError" runat="server" ></asp:Label></h1>
</asp:Content>

