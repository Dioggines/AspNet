using Aula2305.Models;
using Aula2305.Views.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aula2305.Views.Produto
{
    public partial class Lista : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var produtosCadastrados = contexto.Produto;

            gvProdutos.DataSource = produtosCadastrados.ToList();
            gvProdutos.DataBind();
        }
    }
}