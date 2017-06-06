<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Locadora.aspx.cs" Inherits="Projeto.Views.Locadora" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Locadora</h1>
    <div>
        <asp:TextBox ID="txtIdLocadora" runat="server" Visible="false"></asp:TextBox>
    </div>

    <div>
        <asp:Label ID="lblNome" runat="server" Text="Nome"></asp:Label>
        <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
    </div>
    <div>
        <asp:Label ID="lblDescricao" runat="server" Text="Descrição"></asp:Label>
        <asp:TextBox ID="txtDescricao" runat="server"></asp:TextBox>
    </div>

    <div>
        <asp:Button ID="btnSalvar1" runat="server" Text="Salvar" OnClick="btnSalvar1_Click"/>
    </div>

    <asp:GridView ID="gvLocadora" runat="server" OnRowCommand="gvLocadora_RowCommand">
    <Columns>
            <asp:ButtonField CommandName="Excluir" Text="Excluir" />
            <asp:ButtonField CommandName="Editar" Text="Editar" />
     </Columns>
    </asp:GridView>

    <h1>Veículo</h1>
    <div>
        <asp:TextBox ID="txtIdVeiculo" runat="server" Visible="false"></asp:TextBox>
    </div>

    <div>
        <asp:DropDownList ID="dpdLocadora" runat="server"></asp:DropDownList>
    </div>

    <div>
        <asp:Label ID="lblModelo" runat="server" Text="Modelo"></asp:Label>
        <asp:TextBox ID="txtModelo" runat="server"></asp:TextBox>
    </div>
    <div>
        <asp:Label ID="lblMarca" runat="server" Text="Marca"></asp:Label>
        <asp:TextBox ID="txtMarca" runat="server"></asp:TextBox>
    </div>
    <div>
        <asp:Label ID="lblCor" runat="server" Text="Cor"></asp:Label>
        <asp:TextBox ID="txtCor" runat="server"></asp:TextBox>
    </div>
    <div>
        <asp:Button ID="btnSalvar2" runat="server" Text="Salvar" OnClick="btnSalvar2_Click" />
    </div>
    <asp:GridView ID="gvVeiculo" runat="server" OnRowCommand="gvVeiculo_RowCommand">
    <Columns>
            <asp:ButtonField CommandName="Excluir" Text="Excluir" />
            <asp:ButtonField CommandName="Editar" Text="Editar" />
    </Columns>
    </asp:GridView>
</asp:Content>
