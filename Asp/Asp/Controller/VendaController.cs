using Asp.Model;
using System.Collections.Generic;
using System.Linq;

namespace Asp.Controller
{
    public class VendaController 
    {
        private BASEContainer contexto = new BASEContainer();

        public void AdicionarVenda(VENDA venda)
        {
            contexto.VENDAS.Add(venda);
            contexto.SaveChanges();
        }

        public List<VENDA> ListarVendas()
        {
            return contexto.VENDAS.ToList();
        }

        public VENDA LocalizarVendaPorID(int id)
        {
            return contexto.VENDAS.Find(id);
        }

        public void EditarVenda(VENDA venda)
        {
            contexto.Entry(venda).State =
                System.Data.Entity.EntityState.Modified;

            contexto.SaveChanges();
        }

        public void ExcluirVenda(VENDA venda)
        {
            contexto.Entry(venda).State =
                System.Data.Entity.EntityState.Deleted;

            contexto.SaveChanges();
        }


//-------------------------------------------------------------------------------------------//


        public void AdicionarItem(ItemVenda item)
        {
            contexto.ItensVenda.Add(item);
            contexto.SaveChanges();
        }

        public List<ItemVenda> ListarItens()
        {
            return contexto.ItensVenda.ToList();
        }

        public ItemVenda LocalizarItemPorID(int id)
        {
            return contexto.ItensVenda.Find(id);
        }

        public void EditarItem(ItemVenda item)
        {
            contexto.Entry(item).State =
                System.Data.Entity.EntityState.Modified;

            contexto.SaveChanges();
        }

        public void ExcluirItem(ItemVenda item)
        {
            contexto.Entry(item).State =
                System.Data.Entity.EntityState.Deleted;

            contexto.SaveChanges();
        }

    }

}