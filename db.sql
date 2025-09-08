CREATE DATABASE petshop_db;
USE petshop_db;

CREATE TABLE cliente (
  id_cliente INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  cpf VARCHAR(11) NOT NULL UNIQUE, 
  telefone VARCHAR(9) NOT NULL,
  email VARCHAR(45) NOT NULL
);

CREATE TABLE pet (
  id_pet INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  especie ENUM('CACHORRO','GATO','AVE','ROEDOR','OUTRO') NOT NULL,
  porte ENUM('GRANDE', 'MEDIO' , 'PEQUENO') NOT NULL,
  nascimento DATE NOT NULL,
  fk_id_cliente INT NOT NULL,
  FOREIGN KEY (fk_id_cliente) REFERENCES cliente(id_cliente)
    ON DELETE CASCADE
);

CREATE TABLE servicos (
  id_servicos INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(45) NOT NULL UNIQUE,
  preco DECIMAL(10,2) NOT NULL CHECK (preco >= 0),
  duracao_min INT NOT NULL CHECK (duracao_min > 0)
);

CREATE TABLE agendamento (
  id_agendamento INT AUTO_INCREMENT PRIMARY KEY,
  fk_id_pet INT NOT NULL,
  fk_id_servico INT NOT NULL,
  data_hora DATETIME NOT NULL,
  status ENUM('AGENDADO','EM ANDAMENTO','FINALIZADO','CANCELADO') NOT NULL DEFAULT 'AGENDADO',
  observacao TEXT,
  FOREIGN KEY (fk_id_pet) REFERENCES pet(id_pet) ON DELETE CASCADE,
  FOREIGN KEY (fk_id_servico) REFERENCES servicos(id_servicos) ON DELETE RESTRICT,
  INDEX idx_data_hora (data_hora)
);