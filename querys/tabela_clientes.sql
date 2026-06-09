-- Active: 1781000437101@@mysql-rds.cmte0e6cw5w2.us-east-1.rds.amazonaws.com@3306@valoures
CREATE TABLE cliente (
id_cliente INT AUTO_INCREMENT PRIMARY KEY,
nome_cliente VARCHAR(150) NOT NULL,
cpf_cliente INT(12) UNIQUE NOT NULL,
telefone INT(20) NOT NULL,
email VARCHAR(120),
data_nasc DATE,
data_cadastro DATETIME DEFAULT CURRENT_TIMESTAMP,
preferencias TEXT,
fidelidade VARCHAR(50)
);