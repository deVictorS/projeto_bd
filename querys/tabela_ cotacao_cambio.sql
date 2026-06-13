CREATE TABLE cotacao_cambio (
    id_cotacao INT AUTO_INCREMENT PRIMARY KEY
    id_moeda INT NOT NULL,
    data_hora DATETIME DEFAULT CURRENT_TIMESTAMP,
    taxa_compra DECIMAL(10,4) NOT NULL,
    taxa_venda DECIMAL(10,4) NOT NULL

    FOREIGN KEY (id_moeda)
        REFERENCES moeda(id_moeda)
);