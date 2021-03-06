﻿using System;
using System.Collections.Generic;

namespace Delivery.Models
{
    public partial class Funcionario
    {
        public Funcionario()
        {
            Usuario = new HashSet<Usuario>();
        }

        public int IdFuncionario { get; set; }
        public string Cpf { get; set; }
        public string Rg { get; set; }
        public string Bairro { get; set; }
        public string Telefone { get; set; }
        public DateTime? DataNasc { get; set; }
        public string Cep { get; set; }
        public string Endereco { get; set; }
        public int? NumEndereco { get; set; }
        public string Cidade { get; set; }
        public string Uf { get; set; }
        public string Complemento { get; set; }
        public string Nome { get; set; }
        public string Email { get; set; }
        public string Ativo { get; set; }
        public int IdEmpresa { get; set; }

        public virtual Empresa IdEmpresaNavigation { get; set; }
        public virtual ICollection<Usuario> Usuario { get; set; }
    }
}
