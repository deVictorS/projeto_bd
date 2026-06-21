CREATE TABLE pagamento_cambio (
    id_pagamento_c INT AUTO_INCREMENT PRIMARY KEY,
    id_transacao INT NOT NULL,
    id_cliente INT NOT NULL,
    id_funcionario INT NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    data_pagamento DATETIME NOT NULL,
    metodo VARCHAR(50) NOT NULL,
    status_pagamento VARCHAR(50) NOT NULL,

    FOREIGN KEY (id_transacao)
        REFERENCES transacao(id_transacao),
    FOREIGN KEY (id_cliente)
        REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_funcionario)
        REFERENCES funcionario(id_funcionario)
);
