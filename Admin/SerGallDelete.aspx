<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="SerGallDelete.aspx.cs" Inherits="Admin_SerGallDelete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td>
                <asp:ListView ID="ListView1" OnSelectedIndexChanged="ListView1_SelectedIndexChanged" runat="server" DataKeyNames="Id" SelectedIndex="-1" DataSourceID="SqlDataSource1">
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
                <asp:ListView ID="ListView2" runat="server">
                    <ItemTemplate>
                        <div class="div1">

                                <asp:LinkButton ID="lnkDownload" Text="Download" CommandArgument='<%# Eval("Value") %>' runat="server" OnClick="DownloadFile"></asp:LinkButton>
                                - 
                                    <asp:LinkButton ID="lnkDelete" Text="Cancella" CommandArgument='<%# Eval("Value") %>' OnClientClick='return confirm("Stai cancellando un immagine! Continuare?")' runat="server" OnClick="DeleteFile" /><br />
                                <a target="_blank" href='<%# "/Images/Servizi/" + Eval("Text") %>'><img src='<%# "/Images/Servizi/" + Eval("Text") %>' /></a><br />
                        </div>
                    </ItemTemplate>
                </asp:ListView>
            </td>
        </tr>
    </table>

</asp:Content>

