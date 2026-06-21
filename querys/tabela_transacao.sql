CREATE TABLE transacao (
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
