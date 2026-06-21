CREATE TABLE cotacao_cambio (
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
