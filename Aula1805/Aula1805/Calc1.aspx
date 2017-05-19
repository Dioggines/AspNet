<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Calc1.aspx.cs" Inherits="Aula1805.Calc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1>
    <asp:Label ID="lblNome" runat="server" Text="Nome"></asp:Label>
    </h1>
    <div class="row">
         <asp:Label ID="lblVal1" runat="server" Text="Valor 01"></asp:Label>
         <asp:TextBox ID="txtVal1" runat="server"></asp:TextBox>
    </div>

     <div class="row">
         <asp:Label ID="lblVal2" runat="server" Text="Valor 02"></asp:Label>
         <asp:TextBox ID="txtVal2" runat="server"></asp:TextBox>
          <asp:Button ID="btnSoma" runat="server" Text="+" OnClick="btnSoma_Click" />
          <asp:Button ID="btnIgual" runat="server" Text="=" OnClick="btnIgual_Click" />
    </div>

     <div class="row">
         <asp:Label ID="lblRes" runat="server" Text="Resultado"></asp:Label>
         <asp:TextBox ID="txtRes" runat="server"></asp:TextBox>
    </div>
    
</asp:Content>
