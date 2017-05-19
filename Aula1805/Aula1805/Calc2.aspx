<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Calc2.aspx.cs" Inherits="Aula1805.Calc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <h1>Resultados</h1>
    <div>
        <asp:TextBox ID="txtA1" runat="server"></asp:TextBox>
        +
        <asp:TextBox ID="txtA2" runat="server"></asp:TextBox>
        =
        <asp:TextBox ID="txtRA" runat="server"></asp:TextBox>
        <asp:Label ID="lbl1mais" runat="server" Text="01"></asp:Label>
        <asp:Label ID="lblmais" runat="server" Text=" + "></asp:Label>
        <asp:Label ID="lbl2mais" runat="server" Text="01"></asp:Label>
        <asp:Label ID="lbligualmais" runat="server" Text=" = "></asp:Label>
        <asp:Label ID="lblresmais" runat="server" Text=" 01 "></asp:Label>
    </div>
    <div>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        -
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        =
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:Label ID="lbl1menos" runat="server" Text="01"></asp:Label>
        <asp:Label ID="lblmenos" runat="server" Text=" - "></asp:Label>
        <asp:Label ID="lbl2menos" runat="server" Text="01"></asp:Label>
        <asp:Label ID="lbligualmenos" runat="server" Text=" = "></asp:Label>
        <asp:Label ID="lblresmenos" runat="server" Text=" 01 "></asp:Label>
    </div>
    <div>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        x
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        =
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <asp:Label ID="lbl1vezes" runat="server" Text="01"></asp:Label>
        <asp:Label ID="lblvezes" runat="server" Text=" x "></asp:Label>
        <asp:Label ID="lbl2vezes" runat="server" Text="01"></asp:Label>
        <asp:Label ID="lbligualvezes" runat="server" Text=" = "></asp:Label>
        <asp:Label ID="lblresvezes" runat="server" Text=" 01 "></asp:Label>
    </div>
    <div>
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        :
        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        =
        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        <asp:Label ID="lbl1div" runat="server" Text="01"></asp:Label>
        <asp:Label ID="lbldiv" runat="server" Text=" : "></asp:Label>
        <asp:Label ID="lbl2div" runat="server" Text="01"></asp:Label>
        <asp:Label ID="lbligualdiv" runat="server" Text=" = "></asp:Label>
        <asp:Label ID="lblresdiv" runat="server" Text=" 01 "></asp:Label>
    </div>
</asp:Content>
