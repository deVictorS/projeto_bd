CREATE TABLE cliente (
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
