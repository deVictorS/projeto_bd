CREATE TABLE pacote_turismo (
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
