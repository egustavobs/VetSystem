SELECT p.nome AS pet, p.especie, c.nome AS dono
FROM PET p JOIN CLIENTE c ON c.id_cliente=p.id_cliente;

SELECT co.id_consulta, co.data, co.tipo_servico, p.nome AS pet, v.nome AS veterinario
FROM CONSULTA co JOIN PET p ON p.id_pet=co.id_pet JOIN VETERINARIO v ON v.id_vet=co.id_vet;

SELECT c.id_consulta, m.nome, mc.quantidade_utilizada
FROM MEDICAMENTO_CONSULTA mc JOIN MEDICAMENTO m ON m.id_medicamento=mc.id_medicamento
JOIN CONSULTA c ON c.id_consulta=mc.id_consulta;

SELECT * FROM CLIENTE ORDER BY nome ASC;

SELECT * FROM CONSULTA ORDER BY data DESC LIMIT 3;