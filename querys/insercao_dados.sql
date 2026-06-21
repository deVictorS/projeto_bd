-- Active: 1781365857654@@mysql-rds.cmte0e6cw5w2.us-east-1.rds.amazonaws.com@3306@valoures
-- Execute este arquivo depois de querys/criar_tabelas.sql.
-- Dados de exemplo realistas para analises de BI em cambio e turismo.

INSERT IGNORE INTO cliente
(id_cliente, nome_cliente, cpf_cliente, telefone, email, data_nasc, data_cadastro, preferencias, fidelidade)
VALUES
(1, 'Ana Souza', '10000000001', '11990000001', 'ana.souza@email.com', '1994-04-10', '2026-01-04 09:15:00', 'Praia e compras', 'sim'),
(2, 'Bruno Lima', '10000000002', '11990000002', 'bruno.lima@email.com', '1988-07-22', '2026-01-05 11:20:00', 'Cambio corporativo', 'nao'),
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
(id_funcionario, nome_completo, setor, cpf, telefone, email, data_nasc, data_admissao)
VALUES
(1, 'Carlos Lima', 'Cambio', '20000000001', '1133000001', 'carlos.lima@valoures.com', '1987-08-20', '2023-01-15'),
(2, 'Fernanda Lopes', 'Turismo', '20000000002', '1133000002', 'fernanda.lopes@valoures.com', '1990-03-12', '2023-06-01'),
(3, 'Rafael Oliveira', 'Cambio', '20000000003', '1133000003', 'rafael.oliveira@valoures.com', '1984-11-09', '2022-09-10'),
(4, 'Juliana Teixeira', 'Turismo', '20000000004', '1133000004', 'juliana.teixeira@valoures.com', '1992-01-30', '2024-02-05'),
(5, 'Marcelo Araujo', 'Cambio', '20000000005', '1133000005', 'marcelo.araujo@valoures.com', '1989-05-18', '2024-08-19'),
(6, 'Patricia Ramos', 'Turismo', '20000000006', '1133000006', 'patricia.ramos@valoures.com', '1995-10-24', '2025-03-03');

INSERT IGNORE INTO fornecedor_cambio
(id_fornecedor_cambio, nome_fantasia, setor, telefone, email, cnpj, razao_social, fidelidade, endereco)
VALUES
(1, 'Cambio Global', 'Dolar e Euro', '1133334444', 'contato@cambioglobal.com', '30000000000101', 'Cambio Global LTDA', 'ouro', 'Av Paulista, 1000 - Sao Paulo'),
(2, 'Money Prime', 'Moedas europeias', '2133334444', 'atendimento@moneyprime.com', '30000000000102', 'Money Prime Cambio SA', 'ouro', 'Rua Central, 250 - Rio de Janeiro'),
(3, 'Forex Travel', 'Moedas internacionais', '3133334444', 'suporte@forextravel.com', '30000000000103', 'Forex Travel Cambio LTDA', 'prata', 'Av Afonso Pena, 900 - Belo Horizonte'),
(4, 'Exchange Sul', 'Dolar canadense e franco', '5133334444', 'contato@exchangesul.com', '30000000000104', 'Exchange Sul Servicos LTDA', 'prata', 'Rua Borges, 88 - Porto Alegre'),
(5, 'Latam Money', 'Moedas sul-americanas', '4133334444', 'mesa@latammoney.com', '30000000000105', 'Latam Money Cambio LTDA', 'bronze', 'Rua XV, 120 - Curitiba');

INSERT IGNORE INTO fornecedor_turismo
(id_fornecedor_turismo, nome_fantasia, setor, telefone, email, cnpj, razao_social, fidelidade, endereco)
VALUES
(1, 'Turismo Azul', 'Pacotes familiares', '1144445555', 'contato@turismoazul.com', '40000000000101', 'Turismo Azul LTDA', 'ouro', 'Rua das Flores, 200 - Sao Paulo'),
(2, 'Mundo Viagens', 'Pacotes internacionais', '2144445555', 'vendas@mundoviagens.com', '40000000000102', 'Mundo Viagens SA', 'ouro', 'Av Atlantica, 500 - Rio de Janeiro'),
(3, 'Rota Premium', 'Pacotes premium', '3144445555', 'reservas@rotapremium.com', '40000000000103', 'Rota Premium Turismo LTDA', 'prata', 'Rua da Bahia, 750 - Belo Horizonte'),
(4, 'Sol e Neve Trips', 'Neve e natureza', '4144445555', 'contato@solenevetrips.com', '40000000000104', 'Sol e Neve Trips LTDA', 'prata', 'Rua XV, 120 - Curitiba'),
(5, 'America Travel', 'America do Norte', '5144445555', 'operacoes@americatravel.com', '40000000000105', 'America Travel SA', 'bronze', 'Av Borges, 390 - Porto Alegre');

INSERT IGNORE INTO moeda
(id_moeda, id_fornecedor_cambio, nome, simbolo, paises, demanda)
VALUES
(1, 1, 'Real Brasileiro', 'BRL', 'Brasil', 'alta'),
(2, 1, 'Dolar Americano', 'USD', 'Estados Unidos, Equador, Panama', 'alta'),
(3, 2, 'Euro', 'EUR', 'Uniao Europeia', 'alta'),
(4, 2, 'Libra Esterlina', 'GBP', 'Reino Unido', 'media'),
(5, 5, 'Peso Argentino', 'ARS', 'Argentina', 'media'),
(6, 4, 'Dolar Canadense', 'CAD', 'Canada', 'media'),
(7, 3, 'Iene Japones', 'JPY', 'Japao', 'baixa'),
(8, 4, 'Franco Suico', 'CHF', 'Suica', 'baixa');

INSERT IGNORE INTO cotacao_cambio
(id_cotacao, id_moeda_desejada, id_moeda_atual, taxa, valor_moeda_desejada, valor_moeda_atual, data_hora)
VALUES
(1, 2, 1, 5.29, 1.00, 5.29, '2026-01-05 10:00:00'),
(2, 2, 1, 5.36, 1.00, 5.36, '2026-02-05 10:00:00'),
(3, 2, 1, 5.41, 1.00, 5.41, '2026-03-05 10:00:00'),
(4, 2, 1, 5.28, 1.00, 5.28, '2026-04-05 10:00:00'),
(5, 3, 1, 5.79, 1.00, 5.79, '2026-01-05 10:00:00'),
(6, 3, 1, 5.86, 1.00, 5.86, '2026-02-05 10:00:00'),
(7, 3, 1, 5.93, 1.00, 5.93, '2026-03-05 10:00:00'),
(8, 3, 1, 5.84, 1.00, 5.84, '2026-04-05 10:00:00'),
(9, 4, 1, 6.79, 1.00, 6.79, '2026-01-05 10:00:00'),
(10, 4, 1, 6.90, 1.00, 6.90, '2026-02-05 10:00:00'),
(11, 4, 1, 7.01, 1.00, 7.01, '2026-03-05 10:00:00'),
(12, 5, 1, 0.01, 1.00, 0.01, '2026-01-05 10:00:00'),
(13, 5, 1, 0.01, 1.00, 0.01, '2026-02-05 10:00:00'),
(14, 5, 1, 0.01, 1.00, 0.01, '2026-03-05 10:00:00'),
(15, 6, 1, 3.90, 1.00, 3.90, '2026-01-05 10:00:00'),
(16, 6, 1, 3.95, 1.00, 3.95, '2026-02-05 10:00:00'),
(17, 6, 1, 4.00, 1.00, 4.00, '2026-03-05 10:00:00'),
(18, 7, 1, 0.04, 1.00, 0.04, '2026-01-05 10:00:00'),
(19, 7, 1, 0.04, 1.00, 0.04, '2026-02-05 10:00:00'),
(20, 8, 1, 6.25, 1.00, 6.25, '2026-04-05 10:00:00');

INSERT IGNORE INTO pacote_turismo
(id_pacote, id_fornecedor_turismo, origem, destino, preco, data_ida, data_volta, descricao)
VALUES
(1, 1, 'Sao Paulo', 'Orlando', 8500.00, '2026-07-10', '2026-07-20', 'Hotel, traslado e ingressos'),
(2, 1, 'Sao Paulo', 'Buenos Aires', 3200.00, '2026-06-12', '2026-06-17', 'Pacote cultural com city tour'),
(3, 2, 'Rio de Janeiro', 'Paris', 11800.00, '2026-08-05', '2026-08-15', 'Hospedagem central e passeios'),
(4, 2, 'Rio de Janeiro', 'Lisboa', 9200.00, '2026-09-01', '2026-09-10', 'Roteiro gastronomico'),
(5, 3, 'Belo Horizonte', 'Londres', 13200.00, '2026-10-03', '2026-10-14', 'Pacote premium com passeios guiados'),
(6, 4, 'Curitiba', 'Bariloche', 6900.00, '2026-07-02', '2026-07-09', 'Pacote de inverno com seguro viagem'),
(7, 5, 'Curitiba', 'Toronto', 10500.00, '2026-08-20', '2026-08-30', 'Pacote familia com hotel e traslado'),
(8, 4, 'Curitiba', 'Tokyo', 15800.00, '2026-11-01', '2026-11-12', 'Pacote cultural no Japao'),
(9, 1, 'Sao Paulo', 'Cancun', 7800.00, '2026-06-25', '2026-07-02', 'Resort all inclusive'),
(10, 2, 'Rio de Janeiro', 'Roma', 11200.00, '2026-09-18', '2026-09-27', 'Roteiro historico na Italia'),
(11, 3, 'Belo Horizonte', 'Zurique', 14500.00, '2026-12-05', '2026-12-14', 'Pacote de inverno na Suica'),
(12, 5, 'Sao Paulo', 'Vancouver', 10900.00, '2026-10-15', '2026-10-25', 'Natureza e cidade no Canada');

INSERT IGNORE INTO reserva_pacote
(id_reserva, id_cliente, id_pacote, id_funcionario, valor_total, desconto, adiantamento, data_reserva, status_reserva, data_viagem)
VALUES
(1, 1, 1, 2, 8500.00, 300.00, 2550.00, '2026-01-10 09:30:00', 'Confirmada', '2026-07-10'),
(2, 3, 3, 2, 11800.00, 500.00, 3540.00, '2026-01-18 14:20:00', 'Confirmada', '2026-08-05'),
(3, 5, 4, 4, 9200.00, 250.00, 2760.00, '2026-01-25 11:10:00', 'Pendente', '2026-09-01'),
(4, 7, 9, 4, 7800.00, 0.00, 2340.00, '2026-02-02 16:40:00', 'Confirmada', '2026-06-25'),
(5, 9, 10, 6, 11200.00, 350.00, 3360.00, '2026-02-08 10:00:00', 'Cancelada', '2026-09-18'),
(6, 11, 2, 6, 3200.00, 100.00, 960.00, '2026-02-15 13:15:00', 'Confirmada', '2026-06-12'),
(7, 13, 8, 2, 15800.00, 0.00, 4740.00, '2026-02-22 15:20:00', 'Pendente', '2026-11-01'),
(8, 15, 8, 2, 15800.00, 600.00, 4740.00, '2026-03-01 09:45:00', 'Confirmada', '2026-11-01'),
(9, 17, 7, 4, 10500.00, 300.00, 3150.00, '2026-03-05 14:50:00', 'Confirmada', '2026-08-20'),
(10, 19, 9, 4, 7800.00, 0.00, 2340.00, '2026-03-12 12:35:00', 'Confirmada', '2026-06-25'),
(11, 2, 5, 6, 13200.00, 0.00, 3960.00, '2026-03-18 17:00:00', 'Pendente', '2026-10-03'),
(12, 4, 6, 6, 6900.00, 0.00, 2070.00, '2026-03-21 10:25:00', 'Confirmada', '2026-07-02'),
(13, 6, 2, 2, 3200.00, 150.00, 960.00, '2026-03-26 11:40:00', 'Confirmada', '2026-06-12'),
(14, 8, 1, 2, 8500.00, 250.00, 2550.00, '2026-04-01 16:15:00', 'Confirmada', '2026-07-10'),
(15, 10, 3, 4, 11800.00, 0.00, 3540.00, '2026-04-06 09:10:00', 'Pendente', '2026-08-05'),
(16, 12, 12, 4, 10900.00, 450.00, 3270.00, '2026-04-11 13:00:00', 'Confirmada', '2026-10-15'),
(17, 14, 11, 6, 14500.00, 0.00, 4350.00, '2026-04-17 15:30:00', 'Cancelada', '2026-12-05'),
(18, 16, 6, 6, 6900.00, 0.00, 2070.00, '2026-04-23 10:50:00', 'Confirmada', '2026-07-02'),
(19, 18, 11, 2, 14500.00, 700.00, 4350.00, '2026-05-02 12:45:00', 'Confirmada', '2026-12-05'),
(20, 20, 7, 4, 10500.00, 400.00, 3150.00, '2026-05-08 14:10:00', 'Pendente', '2026-08-20'),
(21, 1, 4, 2, 9200.00, 300.00, 2760.00, '2026-05-15 09:35:00', 'Confirmada', '2026-09-01'),
(22, 5, 10, 4, 11200.00, 400.00, 3360.00, '2026-05-21 16:55:00', 'Confirmada', '2026-09-18'),
(23, 9, 3, 6, 11800.00, 500.00, 3540.00, '2026-05-27 11:05:00', 'Confirmada', '2026-08-05'),
(24, 13, 8, 2, 15800.00, 0.00, 4740.00, '2026-06-02 13:25:00', 'Pendente', '2026-11-01'),
(25, 17, 12, 4, 10900.00, 350.00, 3270.00, '2026-06-09 10:15:00', 'Confirmada', '2026-10-15');

INSERT IGNORE INTO transacao
(id_transacao, id_cotacao, id_cliente, id_funcionario, id_moeda_desejada, id_moeda_atual, quantidade_desejada, quantidade_atual, desconto, valor_total, tipo, observacao, data_hora)
VALUES
(1, 1, 1, 1, 2, 1, 1200.00, 6348.00, 100.00, 6248.00, 'Compra', 'Dolares para Orlando', '2026-01-10 10:00:00'),
(2, 5, 3, 3, 3, 1, 1500.00, 8685.00, 150.00, 8535.00, 'Compra', 'Euros para Paris', '2026-01-18 15:00:00'),
(3, 12, 6, 1, 5, 1, 180000.00, 1116.00, 0.00, 1116.00, 'Compra', 'Pesos para Buenos Aires', '2026-01-22 11:30:00'),
(4, 9, 5, 3, 4, 1, 900.00, 6111.00, 80.00, 6031.00, 'Compra', 'Libras para Londres', '2026-01-25 12:00:00'),
(5, 15, 17, 5, 6, 1, 2200.00, 8580.00, 120.00, 8460.00, 'Compra', 'Dolares canadenses para Toronto', '2026-02-03 14:15:00'),
(6, 18, 15, 1, 7, 1, 300000.00, 11700.00, 300.00, 11400.00, 'Compra', 'Ienes para Tokyo', '2026-02-08 09:55:00'),
(7, 2, 8, 5, 2, 1, 2500.00, 13400.00, 200.00, 13200.00, 'Compra', 'Dolares para viagem em familia', '2026-02-11 16:30:00'),
(8, 6, 18, 3, 3, 1, 2400.00, 14064.00, 250.00, 13814.00, 'Compra', 'Euros para roteiro premium', '2026-02-15 10:45:00'),
(9, 13, 19, 1, 5, 1, 90000.00, 540.00, 0.00, 540.00, 'Compra', 'Pesos para viagem curta', '2026-02-20 13:25:00'),
(10, 16, 20, 5, 6, 1, 1800.00, 7110.00, 100.00, 7010.00, 'Compra', 'Cambio para Canada', '2026-02-25 15:40:00'),
(11, 3, 2, 5, 2, 1, 800.00, 4328.00, 0.00, 4328.00, 'Compra', 'Dolares corporativos', '2026-03-03 10:20:00'),
(12, 7, 10, 3, 3, 1, 1100.00, 6523.00, 0.00, 6523.00, 'Compra', 'Euros corporativos', '2026-03-07 11:15:00'),
(13, 10, 4, 1, 4, 1, 650.00, 4485.00, 0.00, 4485.00, 'Compra', 'Libras para turismo', '2026-03-12 14:05:00'),
(14, 14, 7, 5, 5, 1, 150000.00, 870.00, 0.00, 870.00, 'Compra', 'Pesos para familia', '2026-03-16 09:50:00'),
(15, 17, 12, 1, 6, 1, 3200.00, 12800.00, 250.00, 12550.00, 'Compra', 'Dolares canadenses recorrentes', '2026-03-21 12:35:00'),
(16, 19, 13, 5, 7, 1, 180000.00, 7200.00, 0.00, 7200.00, 'Compra', 'Ienes para intercambio', '2026-03-28 16:10:00'),
(17, 4, 1, 3, 2, 1, 600.00, 3168.00, 50.00, 3118.00, 'Compra', 'Complemento de dolares', '2026-04-02 10:25:00'),
(18, 8, 5, 3, 3, 1, 1300.00, 7592.00, 100.00, 7492.00, 'Compra', 'Euros para Lisboa', '2026-04-07 13:55:00'),
(19, 11, 18, 1, 4, 1, 700.00, 4907.00, 120.00, 4787.00, 'Compra', 'Libras extras', '2026-04-12 11:05:00'),
(20, 14, 6, 5, 5, 1, 210000.00, 1218.00, 0.00, 1218.00, 'Compra', 'Pesos para Buenos Aires', '2026-04-18 15:45:00'),
(21, 17, 17, 5, 6, 1, 1500.00, 6000.00, 80.00, 5920.00, 'Compra', 'Dolares canadenses extras', '2026-04-22 09:35:00'),
(22, 19, 15, 1, 7, 1, 120000.00, 4800.00, 0.00, 4800.00, 'Compra', 'Ienes extras', '2026-04-29 17:00:00'),
(23, 20, 18, 3, 8, 1, 1000.00, 6250.00, 150.00, 6100.00, 'Compra', 'Francos para Zurique', '2026-05-04 10:30:00'),
(24, 4, 9, 5, 2, 1, 2000.00, 10560.00, 120.00, 10440.00, 'Compra', 'Dolares para conexao', '2026-05-08 11:40:00'),
(25, 8, 11, 3, 3, 1, 950.00, 5548.00, 80.00, 5468.00, 'Compra', 'Euros para viagem', '2026-05-12 14:20:00'),
(26, 11, 2, 1, 4, 1, 400.00, 2804.00, 0.00, 2804.00, 'Compra', 'Libras corporativas', '2026-05-16 12:10:00'),
(27, 14, 4, 5, 5, 1, 60000.00, 348.00, 0.00, 348.00, 'Compra', 'Pesos para Bariloche', '2026-05-20 16:50:00'),
(28, 17, 20, 5, 6, 1, 2100.00, 8400.00, 120.00, 8280.00, 'Compra', 'Cambio para Vancouver', '2026-05-25 09:45:00'),
(29, 20, 14, 3, 8, 1, 700.00, 4375.00, 0.00, 4375.00, 'Compra', 'Francos para inverno', '2026-05-29 13:35:00'),
(30, 3, 16, 1, 2, 1, 500.00, 2705.00, 0.00, 2705.00, 'Compra', 'Dolares para reserva', '2026-06-03 10:55:00');

INSERT IGNORE INTO pagamento_cambio
(id_pagamento_c, id_transacao, id_cliente, id_funcionario, valor, data_pagamento, metodo, status_pagamento)
VALUES
(1, 1, 1, 1, 6248.00, '2026-01-10 10:05:00', 'Pix', 'Pago'),
(2, 2, 3, 3, 8535.00, '2026-01-18 15:10:00', 'Cartao', 'Pago'),
(3, 3, 6, 1, 1116.00, '2026-01-22 11:40:00', 'Dinheiro', 'Pago'),
(4, 4, 5, 3, 6031.00, '2026-01-25 12:10:00', 'Cartao', 'Pago'),
(5, 5, 17, 5, 8460.00, '2026-02-03 14:30:00', 'Pix', 'Pago'),
(6, 6, 15, 1, 11400.00, '2026-02-08 10:05:00', 'Transferencia', 'Pago'),
(7, 7, 8, 5, 13200.00, '2026-02-11 16:45:00', 'Cartao', 'Pago'),
(8, 8, 18, 3, 13814.00, '2026-02-15 11:00:00', 'Pix', 'Pago'),
(9, 9, 19, 1, 540.00, '2026-02-20 13:40:00', 'Dinheiro', 'Pago'),
(10, 10, 20, 5, 7010.00, '2026-02-25 15:55:00', 'Pix', 'Pago'),
(11, 11, 2, 5, 4328.00, '2026-03-03 10:35:00', 'Cartao', 'Pago'),
(12, 12, 10, 3, 6523.00, '2026-03-07 11:30:00', 'Transferencia', 'Pago'),
(13, 13, 4, 1, 4485.00, '2026-03-12 14:20:00', 'Pix', 'Pago'),
(14, 14, 7, 5, 870.00, '2026-03-16 10:05:00', 'Dinheiro', 'Pago'),
(15, 15, 12, 1, 12550.00, '2026-03-21 12:50:00', 'Cartao', 'Pago'),
(16, 16, 13, 5, 7200.00, '2026-03-28 16:25:00', 'Transferencia', 'Pago'),
(17, 17, 1, 3, 3118.00, '2026-04-02 10:40:00', 'Pix', 'Pago'),
(18, 18, 5, 3, 7492.00, '2026-04-07 14:10:00', 'Cartao', 'Pago'),
(19, 19, 18, 1, 4787.00, '2026-04-12 11:20:00', 'Pix', 'Pago'),
(20, 20, 6, 5, 1218.00, '2026-04-18 16:00:00', 'Dinheiro', 'Pago'),
(21, 21, 17, 5, 5920.00, '2026-04-22 09:50:00', 'Pix', 'Pago'),
(22, 22, 15, 1, 4800.00, '2026-04-29 17:15:00', 'Transferencia', 'Pago'),
(23, 23, 18, 3, 6100.00, '2026-05-04 10:45:00', 'Cartao', 'Pago'),
(24, 24, 9, 5, 10440.00, '2026-05-08 11:55:00', 'Pix', 'Pago'),
(25, 25, 11, 3, 5468.00, '2026-05-12 14:35:00', 'Cartao', 'Pago'),
(26, 26, 2, 1, 2804.00, '2026-05-16 12:25:00', 'Transferencia', 'Pago'),
(27, 27, 4, 5, 348.00, '2026-05-20 17:05:00', 'Dinheiro', 'Pago'),
(28, 28, 20, 5, 8280.00, '2026-05-25 10:00:00', 'Pix', 'Pago'),
(29, 29, 14, 3, 4375.00, '2026-05-29 13:50:00', 'Cartao', 'Pago'),
(30, 30, 16, 1, 2705.00, '2026-06-03 11:10:00', 'Pix', 'Pago');

INSERT IGNORE INTO pagamento_pacote
(id_pagamento_p, id_reserva, id_cliente, id_funcionario, valor, data_pagamento, metodo, status_pagamento)
VALUES
(1, 1, 1, 2, 8500.00, '2026-01-10 10:10:00', 'Cartao', 'Pago'),
(2, 2, 3, 2, 11800.00, '2026-01-18 15:10:00', 'Pix', 'Pago'),
(3, 3, 5, 4, 2760.00, '2026-01-25 11:30:00', 'Transferencia', 'Adiantamento'),
(4, 4, 7, 4, 7800.00, '2026-02-02 17:05:00', 'Cartao', 'Pago'),
(5, 5, 9, 6, 3360.00, '2026-02-08 10:30:00', 'Pix', 'Reembolsar'),
(6, 6, 11, 6, 3200.00, '2026-02-15 13:30:00', 'Dinheiro', 'Pago'),
(7, 7, 13, 2, 4740.00, '2026-02-22 15:45:00', 'Transferencia', 'Adiantamento'),
(8, 8, 15, 2, 15800.00, '2026-03-01 10:00:00', 'Cartao', 'Pago'),
(9, 9, 17, 4, 10500.00, '2026-03-05 15:05:00', 'Pix', 'Pago'),
(10, 10, 19, 4, 7800.00, '2026-03-12 12:50:00', 'Cartao', 'Pago'),
(11, 11, 2, 6, 3960.00, '2026-03-18 17:20:00', 'Transferencia', 'Adiantamento'),
(12, 12, 4, 6, 6900.00, '2026-03-21 10:45:00', 'Pix', 'Pago'),
(13, 13, 6, 2, 3200.00, '2026-03-26 12:00:00', 'Dinheiro', 'Pago'),
(14, 14, 8, 2, 8500.00, '2026-04-01 16:40:00', 'Cartao', 'Pago'),
(15, 15, 10, 4, 3540.00, '2026-04-06 09:35:00', 'Transferencia', 'Adiantamento'),
(16, 16, 12, 4, 10900.00, '2026-04-11 13:20:00', 'Pix', 'Pago'),
(17, 17, 14, 6, 4350.00, '2026-04-17 15:55:00', 'Cartao', 'Reembolsar'),
(18, 18, 16, 6, 6900.00, '2026-04-23 11:10:00', 'Pix', 'Pago'),
(19, 19, 18, 2, 14500.00, '2026-05-02 13:10:00', 'Cartao', 'Pago'),
(20, 20, 20, 4, 3150.00, '2026-05-08 14:30:00', 'Transferencia', 'Adiantamento'),
(21, 21, 1, 2, 9200.00, '2026-05-15 10:00:00', 'Pix', 'Pago'),
(22, 22, 5, 4, 11200.00, '2026-05-21 17:20:00', 'Cartao', 'Pago'),
(23, 23, 9, 6, 11800.00, '2026-05-27 11:30:00', 'Pix', 'Pago'),
(24, 24, 13, 2, 4740.00, '2026-06-02 13:50:00', 'Transferencia', 'Adiantamento'),
(25, 25, 17, 4, 10900.00, '2026-06-09 10:40:00', 'Cartao', 'Pago');

INSERT IGNORE INTO pagamento_fornecedor
(id_pagamento_f, tipo_fornecedor, id_fornecedor_cambio, id_fornecedor_turismo, id_moeda, id_pacote, id_funcionario, produto, valor, data_pagamento, metodo, status_pagamento)
VALUES
(1, 'Cambio', 1, NULL, 2, NULL, 1, 'Fornecimento de USD', 5100.00, '2026-01-09 16:00:00', 'Transferencia', 'Pago'),
(2, 'Cambio', 2, NULL, 3, NULL, 3, 'Fornecimento de EUR', 8050.00, '2026-01-17 16:00:00', 'Transferencia', 'Pago'),
(3, 'Cambio', 2, NULL, 4, NULL, 3, 'Fornecimento de GBP', 5600.00, '2026-01-24 16:00:00', 'Transferencia', 'Pago'),
(4, 'Cambio', 5, NULL, 5, NULL, 5, 'Fornecimento de ARS', 900.00, '2026-02-19 16:00:00', 'Transferencia', 'Pago'),
(5, 'Cambio', 4, NULL, 6, NULL, 5, 'Fornecimento de CAD', 6200.00, '2026-02-24 16:00:00', 'Transferencia', 'Pago'),
(6, 'Cambio', 3, NULL, 7, NULL, 1, 'Fornecimento de JPY', 9000.00, '2026-02-07 16:00:00', 'Transferencia', 'Pago'),
(7, 'Cambio', 4, NULL, 8, NULL, 3, 'Fornecimento de CHF', 5200.00, '2026-05-03 16:00:00', 'Transferencia', 'Pago'),
(8, 'Turismo', NULL, 1, NULL, 1, 2, 'Pacote Orlando', 6400.00, '2026-01-09 15:00:00', 'Transferencia', 'Pago'),
(9, 'Turismo', NULL, 2, NULL, 3, 2, 'Pacote Paris', 9100.00, '2026-01-17 15:00:00', 'Transferencia', 'Pago'),
(10, 'Turismo', NULL, 2, NULL, 4, 4, 'Pacote Lisboa', 7000.00, '2026-01-24 15:00:00', 'Transferencia', 'Pago'),
(11, 'Turismo', NULL, 1, NULL, 9, 4, 'Pacote Cancun', 5800.00, '2026-02-01 15:00:00', 'Transferencia', 'Pago'),
(12, 'Turismo', NULL, 4, NULL, 8, 2, 'Pacote Tokyo', 12200.00, '2026-02-28 15:00:00', 'Transferencia', 'Pago'),
(13, 'Turismo', NULL, 5, NULL, 7, 4, 'Pacote Toronto', 7900.00, '2026-03-04 15:00:00', 'Transferencia', 'Pago'),
(14, 'Turismo', NULL, 4, NULL, 6, 6, 'Pacote Bariloche', 5100.00, '2026-03-20 15:00:00', 'Transferencia', 'Pago'),
(15, 'Turismo', NULL, 3, NULL, 11, 2, 'Pacote Zurique', 11100.00, '2026-04-16 15:00:00', 'Transferencia', 'Pendente');
