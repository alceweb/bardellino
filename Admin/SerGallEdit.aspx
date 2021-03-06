﻿<%@ Page Title="Gestione gallerie servizi" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="SerGallEdit.aspx.cs" Inherits="Admin_SerGallEdit" %>

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
                <asp:Panel ID="pnlupload" runat="server" Visible="false">
                    <h3>Aggiungi immagine</h3>
                    <asp:FileUpload BackColor="#e6dbb4" ID="FileUpload1" runat="server" />
                    <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" Text="Upload" /><br />
                    <asp:Label ID="LblUploadOk" runat="server"></asp:Label><hr />
                </asp:Panel>
                <asp:ListView ID="listaListView" runat="server">
                    <ItemTemplate>
                        <div style="float:left">

                                    <span >
                                        <a target="_blank" class="group1" href="../<%# (Container.DataItem as string).Substring(Server.MapPath("~/").Length).Replace("\\", "/") %>">
                                            <img style="margin: 5px; height: 100px; float: left" src='../<%# (Container.DataItem as string).Substring(Server.MapPath("~/").Length).Replace("\\", "/") %>' />
                                        </a><br />
                        </div>

                    </ItemTemplate>
                    <LayoutTemplate>
                        <div runat="server" id="itemPlaceholderContainer">
                                <div runat="server" id="itemPlaceholder">

                                </div>
                            </tr>
                        </div>
                    </LayoutTemplate>
                </asp:ListView>
            </td>
        </tr>
    </table>
    <asp:Label ID="Label1" runat="server" ></asp:Label>
</asp:Content>

