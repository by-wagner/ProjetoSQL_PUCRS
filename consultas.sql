-- Consulta 1: Selecionar CPFs e nomes dos trabalhadores que ganham mais do que 2.500,00
SELECT CPF, Nome
FROM Trabalhador
WHERE Salario > 2500.00;

-- Consulta 2: Selecionar nomes e salários dos trabalhadores da empresa ALFA, ordenados em ordem alfabética crescente
SELECT t.Nome, t.Salario
FROM Trabalhador t
INNER JOIN Obra o ON t.Fk_Obra_Codigo = o.Codigo
INNER JOIN Construtora c ON o.Fk_Construtora_Codigo = c.Codigo
WHERE c.Nome = 'Construtora Alfa S.A.'
ORDER BY t.Nome ASC;

-- Consulta 3: Selecionar o total gasto em valores de diárias em uso de equipamentos da obra Condomínio dos Lagos no mês de março de 2022
SELECT SUM(e.Vlr_Uso_Diario * (TO_DATE(u.Data_Termino, 'YYYY-MM-DD') - TO_DATE(u.Data_Inicio, 'YYYY-MM-DD'))) AS Total_Gasto
FROM Usa u
INNER JOIN Equipamento e ON u.Fk_Equipamento_Codigo = e.Codigo
INNER JOIN Obra o ON u.Fk_Obra_Codigo = o.Codigo
WHERE o.Nome = 'Condomínio dos Lagos'
  AND u.Data_Inicio BETWEEN TO_DATE('01/03/2022', 'DD/MM/YYYY') AND TO_DATE('31/03/2022', 'DD/MM/YYYY');

-- Consulta 4: Listar as categorias de equipamentos utilizadas nas obras da construtora ALFA
SELECT DISTINCT c.Descricao AS Categoria
FROM Usa u
INNER JOIN Equipamento e ON u.Fk_Equipamento_Codigo = e.Codigo
INNER JOIN Categoria c ON e.Fk_Categoria_Codigo = c.Codigo
INNER JOIN Obra o ON u.Fk_Obra_Codigo = o.Codigo
INNER JOIN Construtora cons ON o.Fk_Construtora_Codigo = cons.Codigo
WHERE cons.Nome = 'Construtora Alfa S.A.';