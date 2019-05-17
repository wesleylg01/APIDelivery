using System;
using System.Collections.Generic;

namespace Delivery.Models
{
    public partial class Empresa
    {
        public Empresa()
        {
            Funcionario = new HashSet<Funcionario>();
        }

        public int IdEmpresa { get; set; }
        public string NomeFantasia { get; set; }
        public string RazaoSocial { get; set; }
        public string Cnpj { get; set; }
        public string Email { get; set; }
        public string Telefone { get; set; }
        public string Cep { get; set; }
        public string Endereco { get; set; }
        public string Uf { get; set; }
        public int? NumEndereco { get; set; }
        public string Bairro { get; set; }
        public string Cidade { get; set; }
        public string Complemento { get; set; }

        public virtual ICollection<Funcionario> Funcionario { get; set; }
    }
}
