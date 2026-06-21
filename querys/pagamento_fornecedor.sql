CREATE TABLE pagamento_fornecedor (
    id_pagamento_f INT AUTO_INCREMENT PRIMARY KEY,
    tipo_fornecedor VARCHAR(20) NOT NULL,
    id_fornecedor_cambio INT,
    id_fornecedor_turismo INT,
    id_moeda INT,
    id_pacote INT,
    id_funcionario INT NOT NULL,
    produto VARCHAR(100) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    data_pagamento DATETIME NOT NULL,
    metodo VARCHAR(50) NOT NULL,
    status_pagamento VARCHAR(50) NOT NULL,

    FOREIGN KEY (id_fornecedor_cambio)
        REFERENCES fornecedor_cambio(id_fornecedor_cambio),
    FOREIGN KEY (id_fornecedor_turismo)
        REFERENCES fornecedor_turismo(id_fornecedor_turismo),
    FOREIGN KEY (id_moeda)
        REFERENCES moeda(id_moeda),
    FOREIGN KEY (id_pacote)
        REFERENCES pacote_turismo(id_pacote),
    FOREIGN KEY (id_funcionario)
        REFERENCES funcionario(id_funcionario),
    CHECK (
        (tipo_fornecedor = 'Cambio'
            AND id_fornecedor_cambio IS NOT NULL
            AND id_fornecedor_turismo IS NULL
            AND id_moeda IS NOT NULL
            AND id_pacote IS NULL)
        OR
        (tipo_fornecedor = 'Turismo'
            AND id_fornecedor_turismo IS NOT NULL
            AND id_fornecedor_cambio IS NULL
            AND id_pacote IS NOT NULL
            AND id_moeda IS NULL)
    )
);
