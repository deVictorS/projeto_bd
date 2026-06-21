CREATE TABLE moeda (
    id_moeda INT AUTO_INCREMENT PRIMARY KEY,
    id_fornecedor_cambio INT NOT NULL,
    nome VARCHAR(50) NOT NULL,
    simbolo VARCHAR(10) NOT NULL,
    paises VARCHAR(150) NOT NULL,
    demanda VARCHAR(50) NOT NULL,

    FOREIGN KEY (id_fornecedor_cambio)
        REFERENCES fornecedor_cambio(id_fornecedor_cambio)
);
