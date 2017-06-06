using Asp.Controller;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Asp.Model;

namespace Asp.View
{
    public partial class Venda : System.Web.UI.Page
    {
        VendaController controller = new VendaController();
        protected void Page_Load(object sender, EventArgs e)
        {
            gvVendas.DataSource = controller.ListarVendas();
            gvVendas.DataBind();

            gvItens.DataSource = controller.ListarItens();
            gvItens.DataBind();
            if (!IsPostBack)
            {
                dpdVenda.DataValueField = "Id";
                dpdVenda.DataTextField = "Descricao";
                dpdVenda.DataSource = controller.ListarVendas();
                dpdVenda.DataBind();
            }


        }

        protected void gvVendas_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int linha = Convert.ToInt32(e.CommandArgument);
            int idObjeto = Convert.ToInt32(gvVendas.Rows[linha].Cells[2].Text);

            string command = e.CommandName;

            if (command.Equals("Excluir"))
            {
                controller.ExcluirVenda(controller.LocalizarVendaPorID(idObjeto));
                Page_Load(this, e);
            }
            else
            {
                if (command.Equals("Editar"))
                {
                    VENDA venda = controller.LocalizarVendaPorID(idObjeto);
                    txtDescricao.Text = venda.Descricao;
                    txtValor.Text = venda.Valor.ToString();
                    txtIdVenda.Text = venda.Id.ToString();
                }
            }


        }

        protected void gvItens_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int linha = Convert.ToInt32(e.CommandArgument);
            int idObjeto = Convert.ToInt32(gvItens.Rows[linha].Cells[2].Text);

            string command = e.CommandName;


            if (command.Equals("Excluir"))
            {
                controller.ExcluirItem(controller.LocalizarItemPorID(idObjeto));
                Page_Load(this, e);
            }
            else
            {
                if (command.Equals("Editar"))
                {
                    ItemVenda item = new ItemVenda();
                    item = controller.LocalizarItemPorID(idObjeto);
                    txtNomeItem.Text = item.Nome;
                    txtDescricaoItem.Text = item.Descricao;
                    txtQuantidade.Text = item.Quantidade.ToString();
                    txtIdItem.Text = item.Id.ToString();
                }
            }
        }

        protected void btnSalvarItem_Click(object sender, EventArgs e)
        {
            if ((!txtDescricaoItem.Text.Equals("")) && (!txtNomeItem.Text.Equals(""))
                && (!txtQuantidade.Text.Equals("")))
            {
                ItemVenda item = new ItemVenda();
                if (!txtIdItem.Text.Equals(""))
                    item = controller.LocalizarItemPorID(Convert.ToInt32(txtIdItem.Text));

                item.Descricao = txtDescricaoItem.Text;
                item.Nome = txtNomeItem.Text;
                item.Quantidade = Convert.ToDecimal(txtQuantidade.Text);
                item.VENDA = controller.LocalizarVendaPorID(Convert.ToInt32(dpdVenda.SelectedValue));

                if (txtIdItem.Text.Equals(""))
                    controller.AdicionarItem(item);
                else
                    controller.EditarItem(item);

                txtIdItem.Text = "";
                txtDescricaoItem.Text = "";
                txtNomeItem.Text = "";
                txtQuantidade.Text = "";
                Page_Load(this, e);
            }

        }

        protected void btnSalvarVenda_Click(object sender, EventArgs e)
        {
            if ((!txtValor.Text.Equals(""))&& (!txtDescricao.Text.Equals("")))
            {
                VENDA venda = new VENDA();
                if (!txtIdVenda.Text.Equals(""))
                    venda = controller.LocalizarVendaPorID(Convert.ToInt32(txtIdVenda.Text));

                venda.Descricao = txtDescricao.Text;
                venda.Valor = Convert.ToDecimal(txtValor.Text);

                    if (txtIdVenda.Text.Equals(""))
                        controller.AdicionarVenda(venda);
                    else
                        controller.EditarVenda(venda);

                txtIdVenda.Text = "";
                txtDescricao.Text = "";
                txtValor.Text = "";
                Page_Load(this, e);
            } 

        }
    }
}