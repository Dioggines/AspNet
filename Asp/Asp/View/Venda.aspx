<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Venda.aspx.cs" Inherits="Asp.View.Venda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Vendas</h1>
    <div>
        <asp:TextBox ID="txtIdVenda" runat="server" Visible="false"></asp:TextBox>
    </div>
    <div>
        <asp:Label ID="lblDescricao" runat="server" Text="Descrição: "></asp:Label>
        <asp:TextBox ID="txtDescricao" runat="server"></asp:TextBox>
    </div>
    <div>
        <asp:Label ID="lblValor" runat="server" Text="Valor: "></asp:Label>
        <asp:TextBox ID="txtValor" runat="server"></asp:TextBox>
    </div>
    <div>
        <asp:Button ID="btnSalvarVenda" runat="server" Text="Salvar" OnClick="btnSalvarVenda_Click"  />
    </div>

    <asp:GridView ID="gvVendas" runat="server" OnRowCommand="gvVendas_RowCommand">
    <Columns>
            <asp:ButtonField CommandName="Excluir" Text="Excluir" />
            <asp:ButtonField CommandName="Editar" Text="Editar" />
    </Columns>
    </asp:GridView>

    <h1>Itens Venda</h1>

    <div>
        <asp:DropDownList ID="dpdVenda" runat="server"></asp:DropDownList>
    </div>
    <div>
        <asp:TextBox ID="txtIdItem" runat="server" Visible="false"></asp:TextBox>
    </div>
    <div>
        <asp:Label ID="lblNomeItem" runat="server" Text="Nome: "></asp:Label>
        <asp:TextBox ID="txtNomeItem" runat="server"></asp:TextBox>
    </div>
    <div>
        <asp:Label ID="lblDescricaoItem" runat="server" Text="Descrição: "></asp:Label>
        <asp:TextBox ID="txtDescricaoItem" runat="server"></asp:TextBox>
    </div>
    <div>
        <asp:Label ID="lblQuantidade" runat="server" Text="Quantidade: "></asp:Label>
        <asp:TextBox ID="txtQuantidade" runat="server"></asp:TextBox>
    </div>

    <div>
        <asp:Button ID="btnSalvarItem" runat="server" Text="Salvar" OnClick="btnSalvarItem_Click" />
    </div>
    <asp:GridView ID="gvItens" runat="server" OnRowCommand="gvItens_RowCommand">
    <Columns>
            <asp:ButtonField CommandName="Excluir" Text="Excluir" />
            <asp:ButtonField CommandName="Editar" Text="Editar" />
    </Columns>
    </asp:GridView>

</asp:Content>



