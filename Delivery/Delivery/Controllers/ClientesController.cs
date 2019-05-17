using Delivery.DataProvider;
using Delivery.Models;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Delivery.Controllers
{
    [Route("api/Cliente")]
    [ApiController]

    public class ClientesController :Controller
    {
        private IClienteDataProvider clienteDataProvider;

        public ClientesController(IClienteDataProvider clienteDataProvider)
        {
            this.clienteDataProvider = clienteDataProvider;
        }

        // GET api/values
        [HttpGet]
        public async Task<IEnumerable<Cliente>> Get()
        {
            return await this.clienteDataProvider.GetClientes();
        }

        // GET api/values/5
        [HttpGet("{IdCliente}")]
        public async Task<Cliente> GetClientes(int IdCliente)
        {
            return await this.clienteDataProvider.GetCliente(IdCliente);
        }

        // POST api/values
        [HttpPost]
        public async Task Post([FromBody] Cliente cliente)
        {
            await this.clienteDataProvider.AddCliente(cliente);
        }

        // PUT api/values/5
        [HttpPut("{IdCliente}")]
        public async Task Put(int IdCliente, [FromBody]Cliente cliente)
        {
            await this.clienteDataProvider.UpdateCliente(IdCliente, cliente);
        }

        // DELETE api/values/5
        [HttpDelete("{IdCliente}")]
        public async Task Delete(int IdCliente)
        {
            await this.clienteDataProvider.DeleteCliente(IdCliente);
        }
    }
}
