using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using Dapper;
using Delivery.Models;
using Microsoft.AspNetCore.Mvc;

namespace Delivery.DataProvider
{
    public class ClienteDataProvider : IClienteDataProvider
    {
        private readonly string connectionstring = "Server=DESKTOP-3SRFA3M\\SQLEXPRESS;Database=DELIVERY;Trusted_Connection=True";

        
        public async Task<Cliente> GetCliente(int IdCliente)
        {
            using (var sqlConnection = new SqlConnection(connectionstring))
            {
                await sqlConnection.OpenAsync();
                var dynamicParameters = new DynamicParameters();
                    dynamicParameters.Add("@idCliente",    IdCliente);
                    dynamicParameters.Add("@CPF",          null);
                    dynamicParameters.Add("@RG",           null);
                    dynamicParameters.Add("@Bairro",       null);
                    dynamicParameters.Add("@Telefone",     null);
                    dynamicParameters.Add("@Data_Nasc",    null);
                    dynamicParameters.Add("@CEP",          null);
                    dynamicParameters.Add("@Endereco",     null);
                    dynamicParameters.Add("@Num_Endereco", null);
                    dynamicParameters.Add("@Cidade",       null);
                    dynamicParameters.Add("@UF",           null);
                    dynamicParameters.Add("@Complemento",  null);
                    dynamicParameters.Add("@Nome",         null);
                    dynamicParameters.Add("@Email",        null);
                    dynamicParameters.Add("@bloqueado",    null);
                    dynamicParameters.Add("@operacao",     'S');
                
                 return await sqlConnection.QuerySingleOrDefaultAsync<Cliente>(
                    "SP_CLIENTE",
                    dynamicParameters,
                    commandType: CommandType.StoredProcedure);
            }
        }

        public async Task<IEnumerable<Cliente>> GetClientes()
        {
            using (var sqlConnection = new SqlConnection(connectionstring))
            {
                await sqlConnection.OpenAsync();
                var dynamicParameters = new DynamicParameters();
                    dynamicParameters.Add("@idCliente",    null);
                    dynamicParameters.Add("@CPF",          null);
                    dynamicParameters.Add("@RG",           null);
                    dynamicParameters.Add("@Bairro",       null);
                    dynamicParameters.Add("@Telefone",     null);
                    dynamicParameters.Add("@Data_Nasc",    null);
                    dynamicParameters.Add("@CEP",          null);
                    dynamicParameters.Add("@Endereco",     null);
                    dynamicParameters.Add("@Num_Endereco", null);
                    dynamicParameters.Add("@Cidade",       null);
                    dynamicParameters.Add("@UF",           null);
                    dynamicParameters.Add("@Complemento",  null);
                    dynamicParameters.Add("@Nome",         null);
                    dynamicParameters.Add("@Email",        null);
                    dynamicParameters.Add("@bloqueado",    null);
                    dynamicParameters.Add("@operacao",     'S');
                return await sqlConnection.QueryAsync<Cliente>(
                    "SP_CLIENTE",
                    dynamicParameters,
                    commandType: CommandType.StoredProcedure);
            }
        }

        // ADD Cliente
        public async Task AddCliente(Cliente cliente)
        {
            using (var sqlConnection = new SqlConnection(connectionstring))
            {
                await sqlConnection.OpenAsync();
                var dynamicParameters = new DynamicParameters();
                    dynamicParameters.Add("@idCliente",    null);
                    dynamicParameters.Add("@CPF",          cliente.Cpf);
                    dynamicParameters.Add("@RG",           cliente.Rg);
                    dynamicParameters.Add("@Bairro",       cliente.Bairro);
                    dynamicParameters.Add("@Telefone",     cliente.Telefone);
                    dynamicParameters.Add("@Data_Nasc",    cliente.DataNasc);
                    dynamicParameters.Add("@CEP",          cliente.Cep);
                    dynamicParameters.Add("@Endereco",     cliente.Endereco);
                    dynamicParameters.Add("@Num_Endereco", cliente.NumEndereco);
                    dynamicParameters.Add("@Cidade",       cliente.Cidade);
                    dynamicParameters.Add("@UF",           cliente.Uf);
                    dynamicParameters.Add("@Complemento",  cliente.Complemento);
                    dynamicParameters.Add("@Nome",         cliente.Nome);
                    dynamicParameters.Add("@Email",        cliente.Email);
                    dynamicParameters.Add("@bloqueado",   'N');
                    dynamicParameters.Add("@operacao",    'I');

                await sqlConnection.ExecuteAsync(
                    "SP_CLIENTE",
                    dynamicParameters,
                    commandType: CommandType.StoredProcedure);

            }
        }

        public async Task UpdateCliente(int IdCliente, Cliente cliente)
        {
            using (var sqlConnection = new SqlConnection(connectionstring))
            {
                await sqlConnection.OpenAsync();
                var dynamicParameters = new DynamicParameters();

                    dynamicParameters.Add("@idCliente",    IdCliente);
                    dynamicParameters.Add("@CPF",          cliente.Cpf);
                    dynamicParameters.Add("@RG",           cliente.Rg);
                    dynamicParameters.Add("@Bairro",       cliente.Bairro);
                    dynamicParameters.Add("@Telefone",     cliente.Telefone);
                    dynamicParameters.Add("@Data_Nasc",    cliente.DataNasc);
                    dynamicParameters.Add("@CEP",          cliente.Cep);
                    dynamicParameters.Add("@Endereco",     cliente.Endereco);
                    dynamicParameters.Add("@Num_Endereco", cliente.NumEndereco);
                    dynamicParameters.Add("@Cidade",       cliente.Cidade);
                    dynamicParameters.Add("@UF",           cliente.Uf);
                    dynamicParameters.Add("@Complemento",  cliente.Complemento);
                    dynamicParameters.Add("@Nome",         cliente.Nome);
                    dynamicParameters.Add("@Email",        cliente.Email);
                    dynamicParameters.Add("@bloqueado",    cliente.Bloqueado);
                    dynamicParameters.Add("@operacao",     'U');

                await sqlConnection.ExecuteAsync(
                    "SP_CLIENTE",
                    dynamicParameters,
                    commandType: CommandType.StoredProcedure);

            }
        }
        public async Task DeleteCliente(int IdCliente)
        {
            using (var sqlConnection = new SqlConnection(connectionstring))
            {
                await sqlConnection.OpenAsync();
                var dynamicParameters = new DynamicParameters();
                    dynamicParameters.Add("@idCliente",    IdCliente);
                    dynamicParameters.Add("@CPF",          null);
                    dynamicParameters.Add("@RG",           null);
                    dynamicParameters.Add("@Bairro",       null);
                    dynamicParameters.Add("@Telefone",     null);
                    dynamicParameters.Add("@Data_Nasc",    null);
                    dynamicParameters.Add("@CEP",          null);
                    dynamicParameters.Add("@Endereco",     null);
                    dynamicParameters.Add("@Num_Endereco", null);
                    dynamicParameters.Add("@Cidade",       null);
                    dynamicParameters.Add("@UF",           null);
                    dynamicParameters.Add("@Complemento",  null);
                    dynamicParameters.Add("@Nome",         null);
                    dynamicParameters.Add("@Email",        null);
                    dynamicParameters.Add("@bloqueado",    null);
                    dynamicParameters.Add("@operacao",     'D');

                await sqlConnection.ExecuteAsync(
                    "SP_CLIENTE",
                    dynamicParameters,
                    commandType: CommandType.StoredProcedure);
            }
        }
    }
}
