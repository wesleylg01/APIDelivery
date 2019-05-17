using System;
using System.Collections.Generic;

namespace Delivery.Models
{
    public partial class Usuario
    {
        public Usuario()
        {
            Pedido = new HashSet<Pedido>();
        }

        public int IdUsuario { get; set; }
        public int IdFuncionario { get; set; }
        public string Usuario1 { get; set; }
        public string Senha { get; set; }

        public virtual Funcionario IdFuncionarioNavigation { get; set; }
        public virtual ICollection<Pedido> Pedido { get; set; }
    }
}
