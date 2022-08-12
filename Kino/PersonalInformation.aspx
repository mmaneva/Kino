<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PersonalInformation.aspx.cs" Inherits="Kino.PersonalInformation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <html>
        <title></title>
        <body>
            <br />
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Име и презиме:"></asp:Label>
                <asp:TextBox ID="fullName" runat="server" ></asp:TextBox>
                <asp:RegularExpressionValidator 
                    ID="RegularExpressionValidator1" 
                    runat="server" 
                    ErrorMessage="Внесете име и презиме" 
                    ControlToValidate="fullName" 
                    ValidationExpression="[a-zA-Z]+\s[a-zA-Z]+">
                </asp:RegularExpressionValidator>
            </div>
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Email:"></asp:Label>
                <asp:TextBox ID="email" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator 
                    ID="RegularExpressionValidator2" 
                    runat="server" 
                    ErrorMessage="Невалидна е-маил адреса"
                    ControlToValidate="email" 
                    ValidationExpression="\w+@\w+\.\w+"
                    ></asp:RegularExpressionValidator>
            </div>
            <div class="form-group">
                <asp:Label ID="Label3" runat="server" Text="Време:"></asp:Label>
                <asp:TextBox ID="time" runat="server"></asp:TextBox>
                <asp:RangeValidator 
                    ID="RangeValidator1" 
                    runat="server" 
                    ErrorMessage="Внесете го времето во формат HHMM"
                    ControlToValidate="time" 
                    MaximumValue="2300" 
                    MinimumValue="1500"></asp:RangeValidator>
            </div>
            <div class="form-group">
                <asp:Button ID="buy" runat="server" Text="Купи" Enabled="False" OnClick="buy_Click" />
            </div>
        </body>
    </html>
</asp:Content>
