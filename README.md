# Projeto Banco de Dados

Este repositório contém a modelagem inicial de um banco de dados MySQL para uma operação que combina serviços de câmbio e turismo. O projeto inclui scripts SQL para criação das tabelas principais e arquivos Terraform para provisionar uma instância MySQL no AWS RDS.

## Estrutura do Projeto

```text
.
├── infra/
│   ├── db.tf
│   ├── outputs.tf
│   ├── provider.tf
│   ├── variables.tf
│   └── versions.tf
├── querys/
│   ├── tabela_clientes.sql
│   ├── tabela_funcionario.sql
│   ├── tablea_fornecedor_cambio.sql
│   ├── tabela_fornecedor_turismo.sql
│   ├── tabela_moeda.sql
│   ├── tabela_ cotacao_cambio.sql
│   ├── tabela_pacote_turismo.sql
│   ├── tabela_reserva_pacote.sql
│   ├── tabela_transacao.sql
│   ├── tabela_pagamento_cambio.sql
│   ├── tabela_pagamento_pacote.sql
│   └── insercao_dados.sql
├── .gitignore
└── README.md
```

## Tecnologias

- MySQL 8.0
- AWS RDS
- Terraform 1.5 ou superior
- Provider AWS para Terraform na versão `~> 5.0`

## Modelo de Dados

O banco foi organizado em tabelas para cadastro, fornecedores, câmbio, turismo, reservas, transações e pagamentos.

Principais tabelas:

- `cliente`: armazena dados de clientes, contato, cadastro e fidelidade.
- `funcionario`: armazena dados dos funcionários responsáveis por reservas e transações.
- `fornecedor_cambio`: armazena fornecedores ligados a operações de câmbio.
- `fornecedor_turismo`: armazena fornecedores ligados a pacotes turísticos.
- `moeda`: armazena moedas disponíveis e referencia o fornecedor de câmbio.
- `cotacao_cambio`: armazena taxas de compra e venda por moeda.
- `pacote_turismo`: armazena pacotes de viagem por fornecedor de turismo.
- `reserva_pacote`: relaciona cliente, pacote turístico e funcionário.
- `transacao`: registra operações de câmbio feitas por clientes.
- `pagamento_cambio`: registra pagamentos ligados a transações de câmbio.
- `pagamento_pacote`: registra pagamentos ligados a reservas de pacotes.

## Infraestrutura

A pasta `infra/` define a criação de uma infraestrutura básica na AWS para hospedar o banco:

- VPC própria.
- Duas sub-redes públicas em `us-east-1a` e `us-east-1b`.
- Internet Gateway.
- Tabela de rotas pública.
- Security Group liberando acesso MySQL pela porta `3306`.
- DB Subnet Group.
- Instância AWS RDS com MySQL 8.0.

As variáveis esperadas pelo Terraform são:

```hcl
db_name     = "nome_do_banco"
db_user     = "usuario"
db_password = "senha"
```

O arquivo `terraform.tfvars` deve ser criado localmente dentro da pasta `infra/`. Ele está listado no `.gitignore` porque contém informações sensíveis.

## Como Provisionar o Banco

Entre na pasta de infraestrutura:

```bash
cd infra
```

Inicialize o Terraform:

```bash
terraform init
```

Confira o plano de execução:

```bash
terraform plan
```

Crie os recursos:

```bash
terraform apply
```

Ao final, o Terraform exibe:

- `rds_endpoint`: endereço da instância RDS.
- `rds_port`: porta de conexão do banco.

## Como Executar os Scripts SQL

Depois de criar o banco e conectar no MySQL, execute os scripts respeitando as dependências entre chaves estrangeiras.

Ordem sugerida:

1. `querys/tabela_clientes.sql`
2. `querys/tabela_funcionario.sql`
3. `querys/tablea_fornecedor_cambio.sql`
4. `querys/tabela_fornecedor_turismo.sql`
5. `querys/tabela_moeda.sql`
6. `querys/tabela_ cotacao_cambio.sql`
7. `querys/tabela_pacote_turismo.sql`
8. `querys/tabela_reserva_pacote.sql`
9. `querys/tabela_transacao.sql`
10. `querys/tabela_pagamento_cambio.sql`
11. `querys/tabela_pagamento_pacote.sql`
12. `querys/insercao_dados.sql`

Exemplo usando o cliente MySQL:

```bash
mysql -h ENDPOINT_RDS -P 3306 -u USUARIO -p NOME_DO_BANCO < querys/tabela_clientes.sql
```

Repita o comando para os demais arquivos na ordem indicada.

## Observações

- O arquivo `querys/insercao_dados.sql` ainda está vazio e pode ser usado para cadastrar dados iniciais.
- Alguns arquivos SQL ainda precisam de revisão de sintaxe antes da execução completa, especialmente nas vírgulas entre campos e nas chaves estrangeiras.
- O arquivo `querys/tablea_fornecedor_cambio.sql` parece conter um erro de digitação no nome do arquivo. O nome esperado seria `tabela_fornecedor_cambio.sql`.
- O arquivo `querys/tabela_ cotacao_cambio.sql` possui um espaço no nome, o que pode dificultar a execução via terminal.
- O Security Group atual libera a porta `3306` para `0.0.0.0/0`. Para ambientes reais, restrinja o acesso ao IP ou à rede que precisa conectar ao banco.

## Arquivos Ignorados

O `.gitignore` evita versionar arquivos gerados ou sensíveis do Terraform, como:

- `.terraform/`
- `*.tfstate`
- `*.tfstate.backup`
- `terraform.tfvars`
- `infra/terraform.tfvars`

Esses arquivos devem permanecer apenas no ambiente local ou em armazenamento seguro apropriado.
