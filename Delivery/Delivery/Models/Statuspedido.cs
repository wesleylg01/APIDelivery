using System;
using System.Collections.Generic;

namespace Delivery.Models
{
    public partial class Statuspedido
    {
        public int IdSatusPedido { get; set; }
        public int IdPedido { get; set; }
        public int? StatusPedido1 { get; set; }
        public DateTime DataPedido { get; set; }
        public DateTime DataEntrega { get; set; }

        public virtual Pedido IdPedidoNavigation { get; set; }
    }
}
