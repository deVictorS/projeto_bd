-- Execute este arquivo depois de querys/criar_tabelas.sql.
-- Os IDs explicitos facilitam manter as relacoes entre as tabelas.

INSERT IGNORE INTO cliente
(id_cliente, nome_cliente, cpf_cliente, telefone, email, data_nasc, data_cadastro, preferencias, fidelidade)
VALUES
(1, 'Ana Souza', '10000000001', '11990000001', 'ana.souza@email.com', '1994-04-10', '2026-01-04 09:15:00', 'Praia e compras', 'sim'),
(2, 'Bruno Lima', '10000000002', '11990000002', 'bruno.lima@email.com', '1988-07-22', '2026-01-05 11:20:00', 'Cambio para negocios', 'nao'),
(3, 'Carla Martins', '10000000003', '21990000003', 'carla.martins@email.com', '1991-02-18', '2026-01-08 14:05:00', 'Pacotes internacionais', 'sim'),
(4, 'Diego Alves', '10000000004', '31990000004', 'diego.alves@email.com', '1985-11-03', '2026-01-12 10:40:00', 'Turismo de aventura', 'nao'),
(5, 'Elaine Rocha', '10000000005', '41990000005', 'elaine.rocha@email.com', '1998-09-15', '2026-01-14 16:30:00', 'Europa', 'sim'),
(6, 'Felipe Costa', '10000000006', '51990000006', 'felipe.costa@email.com', '1990-05-09', '2026-01-20 08:55:00', 'America do Sul', 'sim'),
(7, 'Gabriela Nunes', '10000000007', '61990000007', 'gabriela.nunes@email.com', '1996-12-01', '2026-02-01 13:10:00', 'Viagem em familia', 'nao'),
(8, 'Henrique Dias', '10000000008', '71990000008', 'henrique.dias@email.com', '1982-03-27', '2026-02-03 15:45:00', 'Estados Unidos', 'sim'),
(9, 'Isabela Cardoso', '10000000009', '81990000009', 'isabela.cardoso@email.com', '1999-06-30', '2026-02-07 09:00:00', 'Lua de mel', 'sim'),
(10, 'Joao Pereira', '10000000010', '11990000010', 'joao.pereira@email.com', '1979-10-19', '2026-02-12 17:25:00', 'Viagens corporativas', 'nao'),
(11, 'Karen Ribeiro', '10000000011', '21990000011', 'karen.ribeiro@email.com', '1993-01-25', '2026-02-18 10:05:00', 'Resorts', 'sim'),
(12, 'Lucas Ferreira', '10000000012', '31990000012', 'lucas.ferreira@email.com', '1987-08-14', '2026-03-02 12:50:00', 'Cambio recorrente', 'sim'),
(13, 'Mariana Gomes', '10000000013', '41990000013', 'mariana.gomes@email.com', '1995-04-02', '2026-03-06 14:35:00', 'Intercambio', 'nao'),
(14, 'Nelson Barros', '10000000014', '51990000014', 'nelson.barros@email.com', '1980-12-28', '2026-03-11 11:15:00', 'Cruzeiros', 'nao'),
(15, 'Olivia Santos', '10000000015', '61990000015', 'olivia.santos@email.com', '1997-07-07', '2026-03-19 16:10:00', 'Japao', 'sim'),
(16, 'Paulo Mendes', '10000000016', '71990000016', 'paulo.mendes@email.com', '1989-09-21', '2026-04-01 09:40:00', 'Pacotes economicos', 'nao'),
(17, 'Renata Castro', '10000000017', '81990000017', 'renata.castro@email.com', '1992-05-11', '2026-04-09 13:30:00', 'Canada', 'sim'),
(18, 'Sergio Moreira', '10000000018', '11990000018', 'sergio.moreira@email.com', '1977-02-06', '2026-04-15 15:00:00', 'Europa premium', 'sim'),
(19, 'Tatiana Freitas', '10000000019', '21990000019', 'tatiana.freitas@email.com', '1986-11-17', '2026-05-03 10:20:00', 'Praias', 'nao'),
(20, 'Victor Almeida', '10000000020', '31990000020', 'victor.almeida@email.com', '1994-03-13', '2026-05-10 12:45:00', 'Cambio e turismo', 'sim');

INSERT IGNORE INTO funcionario
(id_funcionario, nome_completo, cpf, telefone, email, data_nasc, data_admissao)
VALUES
(1, 'Carlos Lima', '20000000001', '1133000001', 'carlos.lima@valoures.com', '1987-08-20', '2023-01-15'),
(2, 'Fernanda Lopes', '20000000002', '1133000002', 'fernanda.lopes@valoures.com', '1990-03-12', '2023-06-01'),
(3, 'Rafael Oliveira', '20000000003', '1133000003', 'rafael.oliveira@valoures.com', '1984-11-09', '2022-09-10'),
(4, 'Juliana Teixeira', '20000000004', '1133000004', 'juliana.teixeira@valoures.com', '1992-01-30', '2024-02-05'),
(5, 'Marcelo Araujo', '20000000005', '1133000005', 'marcelo.araujo@valoures.com', '1989-05-18', '2024-08-19'),
(6, 'Patricia Ramos', '20000000006', '1133000006', 'patricia.ramos@valoures.com', '1995-10-24', '2025-03-03');

INSERT IGNORE INTO fornecedor_cambio
(id_fornecedor_cambio, nome_fantasia, setor, telefone, email, cnpj, razao_social, fidelidade, endereco)
VALUES
(1, 'Cambio Global', 'Cambio', '1133334444', 'contato@cambioglobal.com', '30000000000101', 'Cambio Global LTDA', 'sim', 'Av Paulista, 1000 - Sao Paulo'),
(2, 'Money Prime', 'Cambio', '2133334444', 'atendimento@moneyprime.com', '30000000000102', 'Money Prime Cambio SA', 'sim', 'Rua Central, 250 - Rio de Janeiro'),
(3, 'Forex Travel', 'Cambio', '3133334444', 'suporte@forextravel.com', '30000000000103', 'Forex Travel Cambio LTDA', 'nao', 'Av Afonso Pena, 900 - Belo Horizonte'),
(4, 'Exchange Sul', 'Cambio', '5133334444', 'contato@exchangesul.com', '30000000000104', 'Exchange Sul Servicos LTDA', 'sim', 'Rua Borges, 88 - Porto Alegre');

INSERT IGNORE INTO fornecedor_turismo
(id_fornecedor_turismo, nome_fantasia, setor, telefone, email, cnpj, razao_social, fidelidade, endereco)
VALUES
(1, 'Turismo Azul', 'Turismo', '1144445555', 'contato@turismoazul.com', '40000000000101', 'Turismo Azul LTDA', 'sim', 'Rua das Flores, 200 - Sao Paulo'),
(2, 'Mundo Viagens', 'Turismo', '2144445555', 'vendas@mundoviagens.com', '40000000000102', 'Mundo Viagens SA', 'sim', 'Av Atlantica, 500 - Rio de Janeiro'),
(3, 'Rota Premium', 'Turismo', '3144445555', 'reservas@rotapremium.com', '40000000000103', 'Rota Premium Turismo LTDA', 'nao', 'Rua da Bahia, 750 - Belo Horizonte'),
(4, 'Sol e Neve Trips', 'Turismo', '4144445555', 'contato@solenevetrips.com', '40000000000104', 'Sol e Neve Trips LTDA', 'sim', 'Rua XV, 120 - Curitiba');

INSERT IGNORE INTO moeda
(id_moeda, id_fornecedor_cambio, nome, simbolo, paises)
VALUES
(1, 1, 'Real Brasileiro', 'BRL', 'Brasil'),
(2, 1, 'Dolar Americano', 'USD', 'Estados Unidos'),
(3, 2, 'Euro', 'EUR', 'Uniao Europeia'),
(4, 2, 'Libra Esterlina', 'GBP', 'Reino Unido'),
(5, 3, 'Peso Argentino', 'ARS', 'Argentina'),
(6, 4, 'Dolar Canadense', 'CAD', 'Canada'),
(7, 3, 'Iene Japones', 'JPY', 'Japao'),
(8, 4, 'Franco Suico', 'CHF', 'Suica');

INSERT IGNORE INTO cotacao_cambio
(id_cotacao, id_moeda, data_hora, taxa_compra, taxa_venda)
VALUES
(1, 2, '2026-01-05 10:00:00', 5.1200, 5.2900),
(2, 2, '2026-02-05 10:00:00', 5.1800, 5.3600),
(3, 2, '2026-03-05 10:00:00', 5.2200, 5.4100),
(4, 2, '2026-04-05 10:00:00', 5.1000, 5.2800),
(5, 2, '2026-05-05 10:00:00', 5.0500, 5.2300),
(6, 3, '2026-01-05 10:00:00', 5.5800, 5.7900),
(7, 3, '2026-02-05 10:00:00', 5.6400, 5.8600),
(8, 3, '2026-03-05 10:00:00', 5.7000, 5.9300),
(9, 3, '2026-04-05 10:00:00', 5.6200, 5.8400),
(10, 3, '2026-05-05 10:00:00', 5.7600, 6.0000),
(11, 4, '2026-01-05 10:00:00', 6.5100, 6.7900),
(12, 4, '2026-02-05 10:00:00', 6.6200, 6.9000),
(13, 4, '2026-03-05 10:00:00', 6.7300, 7.0100),
(14, 4, '2026-04-05 10:00:00', 6.6800, 6.9600),
(15, 4, '2026-05-05 10:00:00', 6.8200, 7.1000),
(16, 5, '2026-01-05 10:00:00', 0.0048, 0.0062),
(17, 5, '2026-02-05 10:00:00', 0.0046, 0.0060),
(18, 5, '2026-03-05 10:00:00', 0.0044, 0.0058),
(19, 5, '2026-04-05 10:00:00', 0.0042, 0.0056),
(20, 5, '2026-05-05 10:00:00', 0.0040, 0.0054),
(21, 6, '2026-01-05 10:00:00', 3.7200, 3.9000),
(22, 6, '2026-02-05 10:00:00', 3.7600, 3.9500),
(23, 6, '2026-03-05 10:00:00', 3.8000, 4.0000),
(24, 6, '2026-04-05 10:00:00', 3.7400, 3.9300),
(25, 6, '2026-05-05 10:00:00', 3.8200, 4.0200),
(26, 7, '2026-01-05 10:00:00', 0.0330, 0.0390),
(27, 7, '2026-02-05 10:00:00', 0.0340, 0.0400),
(28, 7, '2026-03-05 10:00:00', 0.0350, 0.0410),
(29, 8, '2026-04-05 10:00:00', 5.9600, 6.2500),
(30, 8, '2026-05-05 10:00:00', 6.0400, 6.3400);

INSERT IGNORE INTO pacote_turismo
(id_pacote, id_fornecedor_turismo, origem, destino, preco, datas, descricao)
VALUES
(1, 1, 'Sao Paulo', 'Orlando', 8500.00, '2026-07-10 a 2026-07-20', 'Pacote com hotel, traslado e ingressos'),
(2, 1, 'Sao Paulo', 'Buenos Aires', 3200.00, '2026-06-12 a 2026-06-17', 'Pacote cultural com city tour'),
(3, 2, 'Rio de Janeiro', 'Paris', 11800.00, '2026-08-05 a 2026-08-15', 'Pacote romantico com hospedagem central'),
(4, 2, 'Rio de Janeiro', 'Lisboa', 9200.00, '2026-09-01 a 2026-09-10', 'Pacote gastronomico em Portugal'),
(5, 3, 'Belo Horizonte', 'Londres', 13200.00, '2026-10-03 a 2026-10-14', 'Pacote premium com passeios guiados'),
(6, 3, 'Belo Horizonte', 'Bariloche', 6900.00, '2026-07-02 a 2026-07-09', 'Pacote de inverno com seguro viagem'),
(7, 4, 'Curitiba', 'Toronto', 10500.00, '2026-08-20 a 2026-08-30', 'Pacote familia com hotel e traslado'),
(8, 4, 'Curitiba', 'Tokyo', 15800.00, '2026-11-01 a 2026-11-12', 'Pacote cultural no Japao'),
(9, 1, 'Sao Paulo', 'Cancun', 7800.00, '2026-06-25 a 2026-07-02', 'Resort all inclusive'),
(10, 2, 'Rio de Janeiro', 'Roma', 11200.00, '2026-09-18 a 2026-09-27', 'Roteiro historico na Italia'),
(11, 3, 'Belo Horizonte', 'Zurique', 14500.00, '2026-12-05 a 2026-12-14', 'Pacote de inverno na Suica'),
(12, 4, 'Curitiba', 'Vancouver', 10900.00, '2026-10-15 a 2026-10-25', 'Natureza e cidade no Canada');

INSERT IGNORE INTO reserva_pacote
(id_reserva, id_cliente, id_pacote, id_funcionario, data_reserva, status, data_viagem)
VALUES
(1, 1, 1, 1, '2026-01-10 09:30:00', 'Confirmada', '2026-07-10'),
(2, 3, 3, 2, '2026-01-18 14:20:00', 'Confirmada', '2026-08-05'),
(3, 5, 4, 3, '2026-01-25 11:10:00', 'Pendente', '2026-09-01'),
(4, 7, 9, 4, '2026-02-02 16:40:00', 'Confirmada', '2026-06-25'),
(5, 9, 10, 5, '2026-02-08 10:00:00', 'Cancelada', '2026-09-18'),
(6, 11, 2, 6, '2026-02-15 13:15:00', 'Confirmada', '2026-06-12'),
(7, 13, 8, 1, '2026-02-22 15:20:00', 'Pendente', '2026-11-01'),
(8, 15, 8, 2, '2026-03-01 09:45:00', 'Confirmada', '2026-11-01'),
(9, 17, 7, 3, '2026-03-05 14:50:00', 'Confirmada', '2026-08-20'),
(10, 19, 9, 4, '2026-03-12 12:35:00', 'Confirmada', '2026-06-25'),
(11, 2, 5, 5, '2026-03-18 17:00:00', 'Pendente', '2026-10-03'),
(12, 4, 6, 6, '2026-03-21 10:25:00', 'Confirmada', '2026-07-02'),
(13, 6, 2, 1, '2026-03-26 11:40:00', 'Confirmada', '2026-06-12'),
(14, 8, 1, 2, '2026-04-01 16:15:00', 'Confirmada', '2026-07-10'),
(15, 10, 3, 3, '2026-04-06 09:10:00', 'Pendente', '2026-08-05'),
(16, 12, 12, 4, '2026-04-11 13:00:00', 'Confirmada', '2026-10-15'),
(17, 14, 11, 5, '2026-04-17 15:30:00', 'Cancelada', '2026-12-05'),
(18, 16, 6, 6, '2026-04-23 10:50:00', 'Confirmada', '2026-07-02'),
(19, 18, 11, 1, '2026-05-02 12:45:00', 'Confirmada', '2026-12-05'),
(20, 20, 7, 2, '2026-05-08 14:10:00', 'Pendente', '2026-08-20'),
(21, 1, 4, 3, '2026-05-15 09:35:00', 'Confirmada', '2026-09-01'),
(22, 5, 10, 4, '2026-05-21 16:55:00', 'Confirmada', '2026-09-18'),
(23, 9, 3, 5, '2026-05-27 11:05:00', 'Confirmada', '2026-08-05'),
(24, 13, 8, 6, '2026-06-02 13:25:00', 'Pendente', '2026-11-01'),
(25, 17, 12, 1, '2026-06-09 10:15:00', 'Confirmada', '2026-10-15');

INSERT IGNORE INTO transacao
(id_transacao, id_cotacao, id_cliente, id_funcionario, id_moeda_compra, id_moeda_venda, moeda_compra, moeda_venda, tipo, observacao)
VALUES
(1, 1, 1, 1, 2, 1, 1200.0000, 6348.00, 'Compra', 'Dolares para Orlando'),
(2, 6, 3, 2, 3, 1, 1500.0000, 8685.00, 'Compra', 'Euros para Paris'),
(3, 16, 6, 1, 5, 1, 180000.0000, 1116.00, 'Compra', 'Pesos para Buenos Aires'),
(4, 11, 5, 3, 4, 1, 900.0000, 6111.00, 'Compra', 'Libras para Londres'),
(5, 21, 17, 3, 6, 1, 2200.0000, 8580.00, 'Compra', 'Dolares canadenses para Toronto'),
(6, 26, 15, 2, 7, 1, 300000.0000, 11700.00, 'Compra', 'Ienes para Tokyo'),
(7, 2, 8, 2, 2, 1, 2500.0000, 13400.00, 'Compra', 'Dolares para viagem em familia'),
(8, 7, 18, 1, 3, 1, 2400.0000, 14064.00, 'Compra', 'Euros para roteiro premium'),
(9, 17, 19, 4, 5, 1, 90000.0000, 540.00, 'Compra', 'Pesos para viagem curta'),
(10, 22, 20, 5, 6, 1, 1800.0000, 7110.00, 'Compra', 'Cambio para Canada'),
(11, 3, 2, 5, 2, 1, 800.0000, 4328.00, 'Compra', 'Dolares corporativos'),
(12, 8, 10, 3, 3, 1, 1100.0000, 6523.00, 'Compra', 'Euros corporativos'),
(13, 12, 4, 6, 4, 1, 650.0000, 4485.00, 'Compra', 'Libras para turismo'),
(14, 18, 7, 4, 5, 1, 150000.0000, 870.00, 'Compra', 'Pesos para familia'),
(15, 23, 12, 1, 6, 1, 3200.0000, 12800.00, 'Compra', 'Dolares canadenses recorrentes'),
(16, 27, 13, 6, 7, 1, 180000.0000, 7200.00, 'Compra', 'Ienes para intercambio'),
(17, 4, 1, 2, 2, 1, 600.0000, 3168.00, 'Compra', 'Complemento de dolares'),
(18, 9, 5, 3, 3, 1, 1300.0000, 7592.00, 'Compra', 'Euros para Lisboa'),
(19, 14, 18, 1, 4, 1, 700.0000, 4872.00, 'Compra', 'Libras extras'),
(20, 19, 6, 4, 5, 1, 210000.0000, 1176.00, 'Compra', 'Pesos para Buenos Aires'),
(21, 24, 17, 2, 6, 1, 1500.0000, 5895.00, 'Compra', 'Dolares canadenses extras'),
(22, 28, 15, 5, 7, 1, 120000.0000, 4920.00, 'Compra', 'Ienes extras'),
(23, 29, 18, 1, 8, 1, 1000.0000, 6250.00, 'Compra', 'Francos para Zurique'),
(24, 5, 9, 5, 2, 1, 2000.0000, 10460.00, 'Compra', 'Dolares para conexao'),
(25, 10, 11, 6, 3, 1, 950.0000, 5700.00, 'Compra', 'Euros para viagem'),
(26, 15, 2, 3, 4, 1, 400.0000, 2840.00, 'Compra', 'Libras corporativas'),
(27, 20, 4, 4, 5, 1, 60000.0000, 324.00, 'Compra', 'Pesos para Bariloche'),
(28, 25, 20, 2, 6, 1, 2100.0000, 8442.00, 'Compra', 'Cambio para Vancouver'),
(29, 30, 14, 1, 8, 1, 700.0000, 4438.00, 'Compra', 'Francos para inverno'),
(30, 3, 16, 6, 2, 1, 500.0000, 2705.00, 'Compra', 'Dolares para reserva');

INSERT IGNORE INTO pagamento_cambio
(id_pagamento_c, id_transacao, id_cliente, id_funcionario, valor, data_pagamento, metodo)
VALUES
(1, 1, 1, 1, 6348.00, '2026-01-10 10:05:00', 'Pix'),
(2, 2, 3, 2, 8685.00, '2026-01-18 15:00:00', 'Cartao'),
(3, 3, 6, 1, 1116.00, '2026-01-22 11:30:00', 'Dinheiro'),
(4, 4, 5, 3, 6111.00, '2026-01-25 12:00:00', 'Cartao'),
(5, 5, 17, 3, 8580.00, '2026-02-03 14:15:00', 'Pix'),
(6, 6, 15, 2, 11700.00, '2026-02-08 09:55:00', 'Transferencia'),
(7, 7, 8, 2, 13400.00, '2026-02-11 16:30:00', 'Cartao'),
(8, 8, 18, 1, 14064.00, '2026-02-15 10:45:00', 'Pix'),
(9, 9, 19, 4, 540.00, '2026-02-20 13:25:00', 'Dinheiro'),
(10, 10, 20, 5, 7110.00, '2026-02-25 15:40:00', 'Pix'),
(11, 11, 2, 5, 4328.00, '2026-03-03 10:20:00', 'Cartao'),
(12, 12, 10, 3, 6523.00, '2026-03-07 11:15:00', 'Transferencia'),
(13, 13, 4, 6, 4485.00, '2026-03-12 14:05:00', 'Pix'),
(14, 14, 7, 4, 870.00, '2026-03-16 09:50:00', 'Dinheiro'),
(15, 15, 12, 1, 12800.00, '2026-03-21 12:35:00', 'Cartao'),
(16, 16, 13, 6, 7200.00, '2026-03-28 16:10:00', 'Transferencia'),
(17, 17, 1, 2, 3168.00, '2026-04-02 10:25:00', 'Pix'),
(18, 18, 5, 3, 7592.00, '2026-04-07 13:55:00', 'Cartao'),
(19, 19, 18, 1, 4872.00, '2026-04-12 11:05:00', 'Pix'),
(20, 20, 6, 4, 1176.00, '2026-04-18 15:45:00', 'Dinheiro'),
(21, 21, 17, 2, 5895.00, '2026-04-22 09:35:00', 'Pix'),
(22, 22, 15, 5, 4920.00, '2026-04-29 17:00:00', 'Transferencia'),
(23, 23, 18, 1, 6250.00, '2026-05-04 10:30:00', 'Cartao'),
(24, 24, 9, 5, 10460.00, '2026-05-08 11:40:00', 'Pix'),
(25, 25, 11, 6, 5700.00, '2026-05-12 14:20:00', 'Cartao'),
(26, 26, 2, 3, 2840.00, '2026-05-16 12:10:00', 'Transferencia'),
(27, 27, 4, 4, 324.00, '2026-05-20 16:50:00', 'Dinheiro'),
(28, 28, 20, 2, 8442.00, '2026-05-25 09:45:00', 'Pix'),
(29, 29, 14, 1, 4438.00, '2026-05-29 13:35:00', 'Cartao'),
(30, 30, 16, 6, 2705.00, '2026-06-03 10:55:00', 'Pix');

INSERT IGNORE INTO pagamento_pacote
(id_pagamento_p, id_reserva, id_cliente, id_funcionario, valor, data_pagamento, metodo)
VALUES
(1, 1, 1, 1, 8500.00, '2026-01-10 10:10:00', 'Cartao'),
(2, 2, 3, 2, 11800.00, '2026-01-18 15:10:00', 'Pix'),
(3, 3, 5, 3, 4600.00, '2026-01-25 11:30:00', 'Transferencia'),
(4, 4, 7, 4, 7800.00, '2026-02-02 17:05:00', 'Cartao'),
(5, 5, 9, 5, 2200.00, '2026-02-08 10:30:00', 'Pix'),
(6, 6, 11, 6, 3200.00, '2026-02-15 13:30:00', 'Dinheiro'),
(7, 7, 13, 1, 7900.00, '2026-02-22 15:45:00', 'Transferencia'),
(8, 8, 15, 2, 15800.00, '2026-03-01 10:00:00', 'Cartao'),
(9, 9, 17, 3, 10500.00, '2026-03-05 15:05:00', 'Pix'),
(10, 10, 19, 4, 7800.00, '2026-03-12 12:50:00', 'Cartao'),
(11, 11, 2, 5, 6600.00, '2026-03-18 17:20:00', 'Transferencia'),
(12, 12, 4, 6, 6900.00, '2026-03-21 10:45:00', 'Pix'),
(13, 13, 6, 1, 3200.00, '2026-03-26 12:00:00', 'Dinheiro'),
(14, 14, 8, 2, 8500.00, '2026-04-01 16:40:00', 'Cartao'),
(15, 15, 10, 3, 5900.00, '2026-04-06 09:35:00', 'Transferencia'),
(16, 16, 12, 4, 10900.00, '2026-04-11 13:20:00', 'Pix'),
(17, 17, 14, 5, 3000.00, '2026-04-17 15:55:00', 'Cartao'),
(18, 18, 16, 6, 6900.00, '2026-04-23 11:10:00', 'Pix'),
(19, 19, 18, 1, 14500.00, '2026-05-02 13:10:00', 'Cartao'),
(20, 20, 20, 2, 5450.00, '2026-05-08 14:30:00', 'Transferencia'),
(21, 21, 1, 3, 9200.00, '2026-05-15 10:00:00', 'Pix'),
(22, 22, 5, 4, 11200.00, '2026-05-21 17:20:00', 'Cartao'),
(23, 23, 9, 5, 11800.00, '2026-05-27 11:30:00', 'Pix'),
(24, 24, 13, 6, 7900.00, '2026-06-02 13:50:00', 'Transferencia'),
(25, 25, 17, 1, 10900.00, '2026-06-09 10:40:00', 'Cartao');
