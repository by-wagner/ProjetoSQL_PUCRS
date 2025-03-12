-- Inserção dos dados na tabela Categoria
INSERT INTO Categoria (Codigo, Descricao)
VALUES (1, 'Concretagem');
INSERT INTO Categoria (Codigo, Descricao)
VALUES (2, 'Acesso e Elevação');
INSERT INTO Categoria (Codigo, Descricao)
VALUES (3, 'Geradores e Compressores');
INSERT INTO Categoria (Codigo, Descricao)
VALUES (4, 'Andaimes');
INSERT INTO Categoria (Codigo, Descricao)
VALUES (5, 'Ferramenta Elétrica');

-- Inserção dos dados na tabela Construtora
INSERT INTO Construtora (Codigo, Nome, Nome_Fantasia, Qtd_Funcionario)
VALUES (10, 'Construtora Alfa S.A.', 'Alfa Incorporações', 5);

-- Inserção dos dados na tabela Telefone
INSERT INTO Telefone (Telefone_PK, Telefone, Fk_Construtora_Codigo)
VALUES (1, '(51) 3333-3334', 10);
INSERT INTO Telefone (Telefone_PK, Telefone, Fk_Construtora_Codigo)
VALUES (2, '(51) 3333-3335', 10);
INSERT INTO Telefone (Telefone_PK, Telefone, Fk_Construtora_Codigo)
VALUES (3, '(51) 3333-3336', 10);

-- Inserção dos dados na tabela Obra
INSERT INTO Obra (Codigo, Nome, Logradouro, Numero, Complemento, Fk_Construtora_Codigo)
VALUES (115, 'Condomínio dos Lagos', 'Travessa dos Lagos', 100, 'Norte', 10);
INSERT INTO Obra (Codigo, Nome, Logradouro, Numero, Complemento, Fk_Construtora_Codigo)
VALUES (116, 'Condomínio Araras', 'Avenida Rio Grande', 22, 'Lado A', 10);

-- Inserção dos dados na tabela Trabalhador
INSERT INTO Trabalhador (CPF, Nome, Salario, Fk_Obra_Codigo)
VALUES ('101.101.101-34', 'José Chaves', 2200.00, 115);
INSERT INTO Trabalhador (CPF, Nome, Salario, Fk_Obra_Codigo)
VALUES ('102.102.102-91', 'Pedro Passos', 3502.18, 115);
INSERT INTO Trabalhador (CPF, Nome, Salario, Fk_Obra_Codigo)
VALUES ('103.103.103-18', 'Maria Aparecida', 2800.87, 115);
INSERT INTO Trabalhador (CPF, Nome, Salario, Fk_Obra_Codigo)
VALUES ('104.104.104-52', 'Carlos Dutra', 3100.00, 116);
INSERT INTO Trabalhador (CPF, Nome, Salario, Fk_Obra_Codigo)
VALUES ('105.105.105-85', 'Mário Pires', 4323.29, 116);

-- Inserção dos dados na tabela Equipamento
INSERT INTO Equipamento (Codigo, Nome, Vlr_Uso_Diario, Fk_Categoria_Codigo)
VALUES (301, 'Betoneira', 100.00, 1);
INSERT INTO Equipamento (Codigo, Nome, Vlr_Uso_Diario, Fk_Categoria_Codigo)
VALUES (304, 'Guincho', 250.00, 2);
INSERT INTO Equipamento (Codigo, Nome, Vlr_Uso_Diario, Fk_Categoria_Codigo)
VALUES (306, 'Piso Metálico', 150.00, 4);
INSERT INTO Equipamento (Codigo, Nome, Vlr_Uso_Diario, Fk_Categoria_Codigo)
VALUES (307, 'Furadeira de bancada', 65.00, 5);
INSERT INTO Equipamento (Codigo, Nome, Vlr_Uso_Diario, Fk_Categoria_Codigo)
VALUES (309, 'Plaina', 25.00, 5);

-- Inserção dos dados na tabela Usa
INSERT INTO Usa (Fk_Obra_Codigo, Fk_Equipamento_Codigo, Data_Inicio, Data_Termino)
VALUES (115, 301, TO_DATE('18/03/2022', 'DD/MM/YYYY'), TO_DATE('24/10/2022', 'DD/MM/YYYY'));
INSERT INTO Usa (Fk_Obra_Codigo, Fk_Equipamento_Codigo, Data_Inicio, Data_Termino)
VALUES (115, 304, TO_DATE('20/04/2022', 'DD/MM/YYYY'), TO_DATE('02/08/2022', 'DD/MM/YYYY'));
INSERT INTO Usa (Fk_Obra_Codigo, Fk_Equipamento_Codigo, Data_Inicio, Data_Termino)
VALUES (115, 306, TO_DATE('06/07/2021', 'DD/MM/YYYY'), TO_DATE('18/07/2021'));
INSERT INTO Usa (Fk_Obra_Codigo, Fk_Equipamento_Codigo, Data_Inicio, Data_Termino)
VALUES (115, 307, TO_DATE('04/03/2022', 'DD/MM/YYYY'), TO_DATE('20/03/2022', 'DD/MM/YYYY'));
INSERT INTO Usa (Fk_Obra_Codigo, Fk_Equipamento_Codigo, Data_Inicio, Data_Termino)
VALUES (115, 309, TO_DATE('04/08/2021', 'DD/MM/YYYY'), TO_DATE('10/08/2021', 'DD/MM/YYYY'));
INSERT INTO Usa (Fk_Obra_Codigo, Fk_Equipamento_Codigo, Data_Inicio, Data_Termino)
VALUES (116, 304, TO_DATE('22/10/2022', 'DD/MM/YYYY'), TO_DATE('25/10/2022', 'DD/MM/YYYY'));
INSERT INTO Usa (Fk_Obra_Codigo, Fk_Equipamento_Codigo, Data_Inicio, Data_Termino)
VALUES (116, 305, TO_DATE('07/03/2022', 'DD/MM/YYYY'), TO_DATE('10/03/2022', 'DD/MM/YYYY'));
INSERT INTO Usa (Fk_Obra_Codigo, Fk_Equipamento_Codigo, Data_Inicio, Data_Termino)
VALUES (116, 306, TO_DATE('12/09/2022', 'DD/MM/YYYY'), TO_DATE('21/09/2022', 'DD/MM/YYYY'));
INSERT INTO Usa (Fk_Obra_Codigo, Fk_Equipamento_Codigo, Data_Inicio, Data_Termino)
VALUES (116, 307, TO_DATE('16/08/2022', 'DD/MM/YYYY'), TO_DATE('24/08/2022', 'DD/MM/YYYY'));
INSERT INTO Usa (Fk_Obra_Codigo, Fk_Equipamento_Codigo, Data_Inicio, Data_Termino)
VALUES (116, 308, TO_DATE('23/10/2022', 'DD/MM/YYYY'), TO_DATE('25/10/2022', 'DD/MM/YYYY'));