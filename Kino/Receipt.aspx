<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Receipt.aspx.cs" Inherits="Kino.Receipt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <html>
        <title></title>
        <body>
            <div class="form-group">
                <asp:Label ID="receiptId" runat="server" Text="Label"></asp:Label>
            </div>
            <div class="form-group">
                Избрани филмови:
                <br />
                <asp:ListBox ID="selectedMovieList1" runat="server" AutoPostBack="True" SelectionMode="Multiple"></asp:ListBox>
            </div>
            <div class="form-group">
                Пуканки: <asp:Label ID="withPopcorn" runat="server" Text="Label"></asp:Label>
            </div>
            <div class="form-group">
                Време: <asp:Label ID="time" runat="server" Text="Label"></asp:Label>
            </div>
            <div class="form-group">
                Вкупно: <asp:Label ID="totalValue" runat="server" Text="Label"></asp:Label>
            </div>
            <div class="form-group">
                <asp:Button ID="newReservation" runat="server" Text="Избриши" OnClick="newReservation_Click" />
            </div>
        </body>
    </html>
</asp:Content>
