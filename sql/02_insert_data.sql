INSERT INTO CLIENTE (nome, telefone, email) VALUES
('João Silva','3899999-2222','joao@gmail.com'),
('Maria Santos','3898888-1111','maria@hotmail.com');

INSERT INTO PET (nome, especie, idade, id_cliente) VALUES
('Rex','Cachorro',5,1),
('Mimi','Gato',2,2),
('Thor','Cachorro',3,1);

INSERT INTO VETERINARIO (nome, crmv) VALUES
('Dr. Carlos Almeida','CRMV12345'),
('Dra. Ana Martins','CRMV67890');

INSERT INTO CONSULTA (data, tipo_servico, id_pet, id_vet) VALUES
('2025-01-12','Consulta Geral',1,1),
('2025-01-13','Vacinação',2,2),
('2025-01-14','Retorno',1,1);

INSERT INTO MEDICAMENTO (nome, data_validade, quantidade) VALUES
('Antibiótico X','2025-12-31',50),
('Anti-inflamatório Y','2026-03-21',30);

INSERT INTO MEDICAMENTO_CONSULTA (id_consulta,id_medicamento,quantidade_utilizada) VALUES
(1,1,1),(2,2,2);