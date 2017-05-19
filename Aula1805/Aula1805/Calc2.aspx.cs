using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aula1805
{
    public partial class Calc2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if(Session["Valor1"] != null && Session["Valor2"] != null)
                {
                    //recuperar valores da session
                    double valor1 = Convert.ToDouble(Session["Valor1"]);
                    double valor2 = Convert.ToDouble(Session["Valor2"]);

                    //efetuar calculos

                    double soma = valor1 + valor2;
                    double sub = valor1 + valor2;
                    double mult = valor1 * valor2;
                    double div = valor1 / valor2;

                    // prencher campos exibir valores 

                    txtA1.Text = valor1.ToString();
                    txtA2.Text = valor2.ToString();
                    txtRA.Text = soma.ToString();

                }

                else
                    //Redireciona a página
                    Response.Redirect("~/Calc1.aspx");
            }
            double val1 = (int)Session["num1"];
            double val2 = (int)Session["num2"];

            lbl1mais.Text = Convert.ToString(val1);
            lbl2mais.Text = Convert.ToString(val2);
            lblresmais.Text = Convert.ToString(val1 + val2); 
            lbl1menos.Text = Convert.ToString(val1);
            lbl2menos.Text = Convert.ToString(val2);
            lblresmenos.Text = Convert.ToString(val1 - val2);
            lbl1vezes.Text = Convert.ToString(val1);
            lbl2vezes.Text = Convert.ToString(val2);
            lblresvezes.Text = Convert.ToString(val1 * val2);
            lbl1div.Text = Convert.ToString(val1);
            lbl2div.Text = Convert.ToString(val2);
            lblresdiv.Text = Convert.ToString(val1 / val2);
        }
    }
}