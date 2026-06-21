CREATE TABLE reserva_pacote (
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
