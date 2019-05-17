using Delivery.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Delivery.DataProvider
{
    public interface IClienteDataProvider
    {
        Task<IEnumerable<Cliente>> GetClientes();

        Task<Cliente> GetCliente(int IdCliente);

        Task AddCliente(Cliente cliente);

        Task UpdateCliente(int IdCliente, Cliente cliente);

        Task DeleteCliente(int IdCliente);
    }
}
