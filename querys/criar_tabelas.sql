-- Active: 1781365857654@@mysql-rds.cmte0e6cw5w2.us-east-1.rds.amazonaws.com@3306@valoures
-- Script consolidado de criacao das tabelas.
-- Relacionamentos padronizados por IDs.

CREATE TABLE IF NOT EXISTS cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome_cliente VARCHAR(150) NOT NULL,
    cpf_cliente VARCHAR(14) UNIQUE NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    email VARCHAR(120),
    data_nasc DATE,
    data_cadastro DATETIME DEFAULT CURRENT_TIMESTAMP,
    preferencias VARCHAR(255),
    fidelidade VARCHAR(6)
);

CREATE TABLE IF NOT EXISTS funcionario (
    id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
    nome_completo VARCHAR(150) NOT NULL,
    setor VARCHAR(10) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    email VARCHAR(120),
    data_nasc DATE,
    data_admissao DATE
);

CREATE TABLE IF NOT EXISTS fornecedor_cambio (
    id_fornecedor_cambio INT AUTO_INCREMENT PRIMARY KEY,
    nome_fantasia VARCHAR(100) NOT NULL,
    setor VARCHAR(50) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    email VARCHAR(100),
    cnpj VARCHAR(20) NOT NULL,
    razao_social VARCHAR(100) NOT NULL,
    fidelidade VARCHAR(6) NOT NULL,
    endereco VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS fornecedor_turismo (
    id_fornecedor_turismo INT AUTO_INCREMENT PRIMARY KEY,
    nome_fantasia VARCHAR(100) NOT NULL,
    setor VARCHAR(50) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    email VARCHAR(100),
    cnpj VARCHAR(20) NOT NULL,
    razao_social VARCHAR(100) NOT NULL,
    fidelidade VARCHAR(6) NOT NULL,
    endereco VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS moeda (
    id_moeda INT AUTO_INCREMENT PRIMARY KEY,
    id_fornecedor_cambio INT NOT NULL,
    nome VARCHAR(50) NOT NULL,
    simbolo VARCHAR(10) NOT NULL,
    paises VARCHAR(150) NOT NULL,
    demanda VARCHAR(50) NOT NULL,
    FOREIGN KEY (id_fornecedor_cambio)
        REFERENCES fornecedor_cambio(id_fornecedor_cambio)
);

CREATE TABLE IF NOT EXISTS cotacao_cambio (
    id_cotacao INT AUTO_INCREMENT PRIMARY KEY,
    id_moeda_desejada INT NOT NULL,
    id_moeda_atual INT NOT NULL,
    taxa DECIMAL(10,2) NOT NULL,
    valor_moeda_desejada DECIMAL(10,2) NOT NULL,
    valor_moeda_atual DECIMAL(10,2) NOT NULL,
    data_hora DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_moeda_desejada)
        REFERENCES moeda(id_moeda),
    FOREIGN KEY (id_moeda_atual)
        REFERENCES moeda(id_moeda)
);

CREATE TABLE IF NOT EXISTS pacote_turismo (
    id_pacote INT AUTO_INCREMENT PRIMARY KEY,
    id_fornecedor_turismo INT NOT NULL,
    origem VARCHAR(100) NOT NULL,
    destino VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    data_ida DATE NOT NULL,
    data_volta DATE NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    FOREIGN KEY (id_fornecedor_turismo)
        REFERENCES fornecedor_turismo(id_fornecedor_turismo)
);

CREATE TABLE IF NOT EXISTS reserva_pacote (
    id_reserva INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_pacote INT NOT NULL,
    id_funcionario INT NOT NULL,
    valor_total DECIMAL(10,2) NOT NULL,
    desconto DECIMAL(10,2) NOT NULL,
    adiantamento DECIMAL(10,2) NOT NULL,
    data_reserva DATETIME DEFAULT CURRENT_TIMESTAMP,
    status_reserva VARCHAR(50),
    data_viagem DATE,
    FOREIGN KEY (id_cliente)
        REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_pacote)
        REFERENCES pacote_turismo(id_pacote),
    FOREIGN KEY (id_funcionario)
        REFERENCES funcionario(id_funcionario)
);

CREATE TABLE IF NOT EXISTS transacao (
    id_transacao INT AUTO_INCREMENT PRIMARY KEY,
    id_cotacao INT NOT NULL,
    id_cliente INT NOT NULL,
    id_funcionario INT NOT NULL,
    id_moeda_desejada INT NOT NULL,
    id_moeda_atual INT NOT NULL,
    quantidade_desejada DECIMAL(10,2) NOT NULL,
    quantidade_atual DECIMAL(10,2) NOT NULL,
    desconto DECIMAL(10,2) NOT NULL,
    valor_total DECIMAL(10,2) NOT NULL,
    tipo VARCHAR(50),
    observacao VARCHAR(255),
    data_hora DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_cotacao)
        REFERENCES cotacao_cambio(id_cotacao),
    FOREIGN KEY (id_cliente)
        REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_funcionario)
        REFERENCES funcionario(id_funcionario),
    FOREIGN KEY (id_moeda_desejada)
        REFERENCES moeda(id_moeda),
    FOREIGN KEY (id_moeda_atual)
        REFERENCES moeda(id_moeda)
);

CREATE TABLE IF NOT EXISTS pagamento_cambio (
    id_pagamento_c INT AUTO_INCREMENT PRIMARY KEY,
    id_transacao INT NOT NULL,
    id_cliente INT NOT NULL,
    id_funcionario INT NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    data_pagamento DATETIME NOT NULL,
    metodo VARCHAR(50) NOT NULL,
    status_pagamento VARCHAR(50) NOT NULL,
    FOREIGN KEY (id_transacao)
        REFERENCES transacao(id_transacao),
    FOREIGN KEY (id_cliente)
        REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_funcionario)
        REFERENCES funcionario(id_funcionario)
);

CREATE TABLE IF NOT EXISTS pagamento_pacote (
    id_pagamento_p INT AUTO_INCREMENT PRIMARY KEY,
    id_reserva INT NOT NULL,
    id_cliente INT NOT NULL,
    id_funcionario INT NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    data_pagamento DATETIME NOT NULL,
    metodo VARCHAR(50) NOT NULL,
    status_pagamento VARCHAR(50) NOT NULL,
    FOREIGN KEY (id_reserva)
        REFERENCES reserva_pacote(id_reserva),
    FOREIGN KEY (id_cliente)
        REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_funcionario)
        REFERENCES funcionario(id_funcionario)
);

CREATE TABLE IF NOT EXISTS pagamento_fornecedor (
    id_pagamento_f INT AUTO_INCREMENT PRIMARY KEY,
    tipo_fornecedor VARCHAR(20) NOT NULL,
    id_fornecedor_cambio INT,
    id_fornecedor_turismo INT,
    id_moeda INT,
    id_pacote INT,
    id_funcionario INT NOT NULL,
    produto VARCHAR(100) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    data_pagamento DATETIME NOT NULL,
    metodo VARCHAR(50) NOT NULL,
    status_pagamento VARCHAR(50) NOT NULL,
    FOREIGN KEY (id_fornecedor_cambio)
        REFERENCES fornecedor_cambio(id_fornecedor_cambio),
    FOREIGN KEY (id_fornecedor_turismo)
        REFERENCES fornecedor_turismo(id_fornecedor_turismo),
    FOREIGN KEY (id_moeda)
        REFERENCES moeda(id_moeda),
    FOREIGN KEY (id_pacote)
        REFERENCES pacote_turismo(id_pacote),
    FOREIGN KEY (id_funcionario)
        REFERENCES funcionario(id_funcionario),
    CHECK (
        (tipo_fornecedor = 'Cambio'
            AND id_fornecedor_cambio IS NOT NULL
            AND id_fornecedor_turismo IS NULL
            AND id_moeda IS NOT NULL
            AND id_pacote IS NULL)
        OR
        (tipo_fornecedor = 'Turismo'
            AND id_fornecedor_turismo IS NOT NULL
            AND id_fornecedor_cambio IS NULL
            AND id_pacote IS NOT NULL
            AND id_moeda IS NULL)
    )
);
