CREATE TABLE transacao (
    id_transacao INT AUTO_INCREMENT PRIMARY KEY,
    id_cotacao INT NOT NULL,
    id_cliente INT NOT NULL,
    id_funcionario INT NOT NULL,
    moeda_compra DECIMAL(10,4) NOT NULL,
    moeda_venda DECIMAL(10,4) NOT NULL,
    tipo VARCHAR(50),
    observacao VARCHAR(255),
    FOREIGN KEY (id_cotacao)
        REFERENCES cotacao_cambio(id_cotacao),
    FOREIGN KEY (id_cliente)
        REFERENCES cliente(id_cliente),
    FOREIGN KEY (moeda_compra)
        REFERENCES moeda(id_moeda),
    FOREIGN KEY (moeda_venda)
        REFERENCES moeda(id_moeda)
    FOREIGN KEY (id_funcionario)
        REFERENCES funcionario(id_funcionario)
);