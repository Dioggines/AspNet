using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Projeto.Controller;
using Projeto.Models;

namespace Projeto.Views
{
    public partial class Locadora : System.Web.UI.Page
    {
        LocadoraController controller = new LocadoraController();
        protected void Page_Load(object sender, EventArgs e)
        {
            

            gvLocadora.DataSource = controller.ListarLocadora();
            gvLocadora.DataBind();

            gvVeiculo.DataSource = controller.ListarVeiculos();
            gvVeiculo.DataBind();

            if (!IsPostBack)
            {
                dpdLocadora.DataValueField = "Id";
                dpdLocadora.DataTextField = "Nome";
                dpdLocadora.DataSource = controller.ListarLocadora();
                dpdLocadora.DataBind();
            }         

        }

        protected void gvLocadora_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int linha = Convert.ToInt32(e.CommandArgument);
            int idObjeto = Convert.ToInt32(gvLocadora.Rows[linha].Cells[2].Text);

            string command = e.CommandName;

            if (command.Equals("Excluir"))
            {
                controller.ExcluirLocadora(controller.LocalizarLocadoraPorID(idObjeto));
                Page_Load(this, e);
            }
            else
            {
                if (command.Equals("Editar"))
                {
                    LOCADORA locadora = new LOCADORA();
                    locadora = controller.LocalizarLocadoraPorID(idObjeto);
                    txtNome.Text = locadora.Nome;
                    txtDescricao.Text = locadora.Descricao;
                    txtIdLocadora.Text = locadora.Id.ToString();
                }
            }

        }

        protected void gvVeiculo_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int linha = Convert.ToInt32(e.CommandArgument);
            int idObjeto = Convert.ToInt32(gvVeiculo.Rows[linha].Cells[2].Text);

            string command = e.CommandName;

            if (command.Equals("Excluir"))
            {
                controller.ExcluirVeiculo(controller.LocalizarVeiculoID(idObjeto));
                Page_Load(this, e);
            }
            else
            {
                if (command.Equals("Editar"))
                {
                    VEICULO veiculo = new VEICULO();
                    veiculo = controller.LocalizarVeiculoID(idObjeto);
                    txtModelo.Text = veiculo.Modelo;
                    txtMarca.Text = veiculo.Marca;
                    txtCor.Text = veiculo.Cor;
                    txtIdVeiculo.Text = veiculo.Id.ToString();
                    
                }
            }

        }

      
        protected void btnSalvar1_Click(object sender, EventArgs e)
        {
           if ((!txtNome.Text.Equals("")) && (!txtDescricao.Text.Equals("")))
            {
                LOCADORA locadora = new LOCADORA();
                if (!txtIdLocadora.Text.Equals(""))
                    locadora = controller.LocalizarLocadoraPorID(Convert.ToInt32(txtIdLocadora.Text));
                locadora.Nome = txtNome.Text;
                locadora.Descricao = txtDescricao.Text;

                if (!txtIdLocadora.Text.Equals(""))
                    controller.EditarLocadora(locadora);
                else
                    controller.AdicionarLocadora(locadora);

                txtNome.Text = "";
                txtDescricao.Text = "";
                Page_Load(this, e);
            }
        }
        protected void btnSalvar2_Click(object sender, EventArgs e)
        {
            VEICULO veiculo = new VEICULO();
            if (!txtIdVeiculo.Text.Equals(""))
                veiculo = controller.LocalizarVeiculoID(Convert.ToInt32(txtIdVeiculo.Text));
            veiculo.Modelo = txtModelo.Text;
            veiculo.Marca = txtMarca.Text;
            veiculo.Cor = txtCor.Text;
            veiculo.LOCADORA = controller.LocalizarLocadoraPorID(Convert.ToInt32(dpdLocadora.SelectedValue));
            if (txtIdVeiculo.Text.Equals(""))
                controller.AdicionarVeiculo(veiculo);
            else
                controller.EditarVeiculo(veiculo);
            txtModelo.Text = "";
            txtMarca.Text = "";
            txtCor.Text = "";
            Page_Load(this, e);
        }

    }
}