CREATE TABLE fornecedor_turismo (
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
