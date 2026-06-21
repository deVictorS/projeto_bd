CREATE TABLE pagamento_pacote (
    id_pagamento_p INT AUTO_INCREMENT PRIMARY KEY,
    id_reserva INT NOT NULL,
    id_cliente INT NOT NULL,
    id_funcionario INT NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    data_pagamento DATETIME NOT NULL,
    metodo VARCHAR(50) NOT NULL,
    status_pagamento VARCHAR(50) NOT NULL,

    FOREIGN KEY (id_reserva)
        REFERENCES reserva_pacote(id_reserva),
    FOREIGN KEY (id_cliente)
        REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_funcionario)
        REFERENCES funcionario(id_funcionario)
);
