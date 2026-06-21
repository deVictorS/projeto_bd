-- Consultas simples de Business Intelligence
-- Empresa de cambio e turismo
-- Execute depois de querys/criar_tabelas.sql e querys/insercao_dados.sql.


-- ============================================================
-- TURISMO 1) Destinos com maior receita e ticket medio
-- ============================================================

SELECT
    p.destino,
    p.origem,
    COUNT(r.id_reserva) AS total_reservas,
    ROUND(SUM(pp.valor), 2) AS receita_total,
    ROUND(AVG(pp.valor), 2) AS ticket_medio,
    SUM(CASE WHEN r.status_reserva = 'Confirmada' THEN 1 ELSE 0 END) AS reservas_confirmadas,
    SUM(CASE WHEN r.status_reserva = 'Pendente' THEN 1 ELSE 0 END) AS reservas_pendentes,
    SUM(CASE WHEN r.status_reserva = 'Cancelada' THEN 1 ELSE 0 END) AS reservas_canceladas
FROM reserva_pacote r
INNER JOIN pacote_turismo p
    ON p.id_pacote = r.id_pacote
INNER JOIN pagamento_pacote pp
    ON pp.id_reserva = r.id_reserva
GROUP BY
    p.destino,
    p.origem
ORDER BY
    receita_total DESC,
    ticket_medio DESC;


-- ============================================================
-- TURISMO 2) Perfil de cliente que compra com maior antecedencia
-- ============================================================

SELECT
    c.fidelidade AS cliente_fidelidade,
    CASE
        WHEN TIMESTAMPDIFF(YEAR, c.data_nasc, CURDATE()) < 30 THEN 'Ate 29 anos'
        WHEN TIMESTAMPDIFF(YEAR, c.data_nasc, CURDATE()) BETWEEN 30 AND 39 THEN '30 a 39 anos'
        WHEN TIMESTAMPDIFF(YEAR, c.data_nasc, CURDATE()) BETWEEN 40 AND 49 THEN '40 a 49 anos'
        ELSE '50 anos ou mais'
    END AS faixa_etaria,
    COUNT(r.id_reserva) AS total_reservas,
    ROUND(AVG(DATEDIFF(r.data_viagem, DATE(r.data_reserva))), 1) AS antecedencia_media_dias,
    ROUND(AVG(pp.valor), 2) AS ticket_medio,
    ROUND(SUM(pp.valor), 2) AS receita_total
FROM reserva_pacote r
INNER JOIN cliente c
    ON c.id_cliente = r.id_cliente
INNER JOIN pagamento_pacote pp
    ON pp.id_reserva = r.id_reserva
WHERE
    r.data_viagem IS NOT NULL
GROUP BY
    c.fidelidade,
    faixa_etaria
ORDER BY
    antecedencia_media_dias DESC,
    receita_total DESC;


-- ============================================================
-- CAMBIO 1) Moedas com maior receita e margem estimada
-- ============================================================

SELECT
    m.simbolo,
    m.nome AS moeda,
    COUNT(t.id_transacao) AS total_transacoes,
    ROUND(SUM(t.quantidade_desejada), 2) AS volume_moeda_desejada,
    ROUND(SUM(pc.valor), 2) AS receita_total_brl,
    ROUND(AVG(cc.taxa), 4) AS taxa_media,
    ROUND(SUM(t.desconto), 2) AS desconto_total,
    ROUND(SUM(t.valor_total) * 0.03, 2) AS margem_operacional_estimada
FROM transacao t
INNER JOIN pagamento_cambio pc
    ON pc.id_transacao = t.id_transacao
INNER JOIN cotacao_cambio cc
    ON cc.id_cotacao = t.id_cotacao
INNER JOIN moeda m
    ON m.id_moeda = t.id_moeda_desejada
GROUP BY
    m.simbolo,
    m.nome
ORDER BY
    margem_operacional_estimada DESC,
    receita_total_brl DESC;


-- ============================================================
-- CAMBIO 2) Clientes com maior volume em cambio
-- ============================================================

SELECT
    c.nome_cliente,
    c.fidelidade,
    COUNT(t.id_transacao) AS total_transacoes,
    COUNT(DISTINCT m.simbolo) AS moedas_diferentes,
    ROUND(SUM(pc.valor), 2) AS volume_pago_brl,
    ROUND(AVG(pc.valor), 2) AS ticket_medio_cambio,
    MAX(pc.data_pagamento) AS ultima_compra_cambio
FROM pagamento_cambio pc
INNER JOIN transacao t
    ON t.id_transacao = pc.id_transacao
INNER JOIN cliente c
    ON c.id_cliente = pc.id_cliente
INNER JOIN moeda m
    ON m.id_moeda = t.id_moeda_desejada
GROUP BY
    c.id_cliente,
    c.nome_cliente,
    c.fidelidade
ORDER BY
    volume_pago_brl DESC,
    total_transacoes DESC;
