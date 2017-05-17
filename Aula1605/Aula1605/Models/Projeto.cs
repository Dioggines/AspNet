using System.ComponentModel.DataAnnotations;

namespace Aula1605.Models
{
    public class Projeto
    {
        [Key]
        public int ProjetoID { get; set; }

        [Required] //não permite nulo
        public string Nome { get; set; }

        [Display(Name = "Descrição")]//define a grafia do display
        public string Descricao { get; set; }

        public bool Ativo { get; set; }
    }
}