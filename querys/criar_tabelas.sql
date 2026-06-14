-- Active: 1781365857654@@mysql-rds.cmte0e6cw5w2.us-east-1.rds.amazonaws.com@3306@valoures

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
    FOREIGN KEY (id_fornecedor_cambio)
        REFERENCES fornecedor_cambio(id_fornecedor_cambio)
);

CREATE TABLE IF NOT EXISTS cotacao_cambio (
    id_cotacao INT AUTO_INCREMENT PRIMARY KEY,
    id_moeda INT NOT NULL,
    data_hora DATETIME DEFAULT CURRENT_TIMESTAMP,
    taxa_compra DECIMAL(10,4) NOT NULL,
    taxa_venda DECIMAL(10,4) NOT NULL,
    FOREIGN KEY (id_moeda)
        REFERENCES moeda(id_moeda)
);

CREATE TABLE IF NOT EXISTS pacote_turismo (
    id_pacote INT AUTO_INCREMENT PRIMARY KEY,
    id_fornecedor_turismo INT NOT NULL,
    origem VARCHAR(100) NOT NULL,
    destino VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    datas VARCHAR(100) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    FOREIGN KEY (id_fornecedor_turismo)
        REFERENCES fornecedor_turismo(id_fornecedor_turismo)
);

CREATE TABLE IF NOT EXISTS reserva_pacote (
    id_reserva INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_pacote INT NOT NULL,
    id_funcionario INT NOT NULL,
    data_reserva DATETIME DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(50),
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
    id_moeda_compra INT NOT NULL,
    id_moeda_venda INT NOT NULL,
    moeda_compra DECIMAL(10,4) NOT NULL,
    moeda_venda DECIMAL(10,4) NOT NULL,
    tipo VARCHAR(50),
    observacao VARCHAR(255),
    FOREIGN KEY (id_cotacao)
        REFERENCES cotacao_cambio(id_cotacao),
    FOREIGN KEY (id_cliente)
        REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_funcionario)
        REFERENCES funcionario(id_funcionario),
    FOREIGN KEY (id_moeda_compra)
        REFERENCES moeda(id_moeda),
    FOREIGN KEY (id_moeda_venda)
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
    FOREIGN KEY (id_reserva)
        REFERENCES reserva_pacote(id_reserva),
    FOREIGN KEY (id_cliente)
        REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_funcionario)
        REFERENCES funcionario(id_funcionario)
);
