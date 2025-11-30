CREATE DATABASE vetsystem;
USE vetsystem;

CREATE TABLE CLIENTE (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE PET (
    id_pet INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    especie VARCHAR(50) NOT NULL,
    idade INT,
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES CLIENTE(id_cliente)
);

CREATE TABLE VETERINARIO (
    id_vet INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    crmv VARCHAR(20) NOT NULL
);

CREATE TABLE CONSULTA (
    id_consulta INT AUTO_INCREMENT PRIMARY KEY,
    data DATE NOT NULL,
    tipo_servico VARCHAR(100) NOT NULL,
    id_pet INT,
    id_vet INT,
    FOREIGN KEY (id_pet) REFERENCES PET(id_pet),
    FOREIGN KEY (id_vet) REFERENCES VETERINARIO(id_vet)
);

CREATE TABLE MEDICAMENTO (
    id_medicamento INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_validade DATE NOT NULL,
    quantidade INT NOT NULL
);

CREATE TABLE MEDICAMENTO_CONSULTA (
    id_consulta INT,
    id_medicamento INT,
    quantidade_utilizada INT NOT NULL,
    PRIMARY KEY(id_consulta, id_medicamento),
    FOREIGN KEY (id_consulta) REFERENCES CONSULTA(id_consulta),
    FOREIGN KEY (id_medicamento) REFERENCES MEDICAMENTO(id_medicamento)
);