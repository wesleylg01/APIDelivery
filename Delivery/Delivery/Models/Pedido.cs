using System;
using System.Collections.Generic;

namespace Delivery.Models
{
    public partial class Pedido
    {
        public Pedido()
        {
            Statuspedido = new HashSet<Statuspedido>();
        }

        public int IdPedido { get; set; }
        public int IdUsuario { get; set; }
        public int NumPedido { get; set; }
        public int IdCliente { get; set; }

        public virtual Cliente IdClienteNavigation { get; set; }
        public virtual Usuario IdUsuarioNavigation { get; set; }
        public virtual ICollection<Statuspedido> Statuspedido { get; set; }
    }
}
