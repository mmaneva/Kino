<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MovieSelection.aspx.cs" Inherits="Kino.MovieSelection" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<html>
    <head>
        <title></title>
    </head>
    <body>
        <div class="form-group">
            <label>Листа на филмови:</label>
            <br />
            <asp:ListBox ID="movieList" runat="server" AutoPostBack="True" SelectionMode="Multiple" OnSelectedIndexChanged="movieList_SelectedIndexChanged">
                <asp:ListItem Value="150">Frozen</asp:ListItem>
                <asp:ListItem Value="180">Shrek</asp:ListItem>
                <asp:ListItem Value="250">Wonder women</asp:ListItem>
            </asp:ListBox>
        </div>
        <div class="form-group">
            <label>Листа на одбрани филмови:</label>
            <br />
            <asp:ListBox ID="selectedMoviesList" runat="server" AutoPostBack="True" SelectionMode="Multiple"></asp:ListBox>
        </div>
        <div class="form-group">
            <label>Пуканки:</label>
            <asp:RadioButtonList ID="snacks" runat="server">
                <asp:ListItem Value="50">small</asp:ListItem>
                <asp:ListItem Value="70">medium</asp:ListItem>
                <asp:ListItem Value="100">large</asp:ListItem>
            </asp:RadioButtonList>
        </div>
        <div class="form-group">
            <asp:Button ID="enterInfo" runat="server" Text="Enter info" OnClick="enterInfo_Click" Enabled="False" />
        </div>
        
        
    </body>
</html>
</asp:Content>
