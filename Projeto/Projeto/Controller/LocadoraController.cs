using Projeto.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Projeto.Controller
{
    public class LocadoraController
    {
        private BaseContainer contexto = new BaseContainer();

        public void AdicionarLocadora(LOCADORA locadora)
        {
            contexto.LOCADORA.Add(locadora);
            contexto.SaveChanges();
        }

        public List<LOCADORA> ListarLocadora()
        {
            return contexto.LOCADORA.ToList();
        }

        public LOCADORA LocalizarLocadoraPorID(int id)
        {
            return contexto.LOCADORA.Find(id);
        }

        public void EditarLocadora(LOCADORA locadora)
        {
            contexto.Entry(locadora).State =
                System.Data.Entity.EntityState.Modified;

            contexto.SaveChanges();
        }

        public void ExcluirLocadora(LOCADORA locadora)
        {
            contexto.Entry(locadora).State =
                System.Data.Entity.EntityState.Deleted;

            contexto.SaveChanges();
        }


        
        public void AdicionarVeiculo(VEICULO veiculo)
        {
            contexto.VEICULO.Add(veiculo);
            contexto.SaveChanges();
        }

        public List<VEICULO> ListarVeiculos()
        {
            return contexto.VEICULO.ToList();
        }

        public VEICULO LocalizarVeiculoID(int id)
        {
            return contexto.VEICULO.Find(id);
        }

        public void EditarVeiculo(VEICULO veiculo)
        {
            contexto.Entry(veiculo).State =
                System.Data.Entity.EntityState.Modified;

            contexto.SaveChanges();
        }

        public void ExcluirVeiculo(VEICULO veiculo)
        {
            contexto.Entry(veiculo).State =
                System.Data.Entity.EntityState.Deleted;

            contexto.SaveChanges();
        }

    }

}