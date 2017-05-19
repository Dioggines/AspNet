using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aula1805
{
    public partial class Calc1 : System.Web.UI.Page
    {
        public string NomeUsuario
        {
            get
            {
                return ViewState["NomeUsuario"].ToString();
            }

            set
            {
                ViewState["NomeUsusario"] = value;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                NomeUsuario = ("Dioggines");
            }
        }

        protected void btnSoma_Click(object sender, EventArgs e)
        {
            //Armazenando informação na ViewState
            ViewState["Valor1"] = txtVal1.Text;
            ViewState["Valor2"] = txtVal2.Text;

            double res =
                Convert.ToDouble(ViewState["Valor1"]) +
                Convert.ToDouble(ViewState["Valor2"]);

            lblNome.Text = NomeUsuario;
        }

        protected void btnIgual_Click(object sender, EventArgs e)
        {
            //Armazenando valores na session
            Session["Valor1"] = txtVal1.Text;
            Session["Valor2"] = txtVal2.Text;
            //Redireciona a página
            Response.Redirect("~/Calc2.aspx");
        }
    }
}