-- Inserção dos dados na tabela Construtora
INSERT INTO Construtora (Codigo, Nome, Nome_Fantasia, Qtd_Funcionario)
VALUES (20, 'Construtora Beta S.A.', 'Beta Construtora', 10);

-- Inserção dos dados na tabela Telefone
INSERT INTO Telefone (Telefone_PK, Telefone, Fk_Construtora_Codigo)
VALUES (4, '(21) 4002-8922', 20);
INSERT INTO Telefone (Telefone_PK, Telefone, Fk_Construtora_Codigo)
VALUES (5, '(21) 3030-7070', 20);

-- Inserção dos dados na tabela Obra
INSERT INTO Obra (Codigo, Nome, Logradouro, Numero, Complemento, Fk_Construtora_Codigo)
VALUES (201, 'Edifício Beta Prime', 'Avenida Atlântica', 101, 'Bloco A', 20);
INSERT INTO Obra (Codigo, Nome, Logradouro, Numero, Complemento, Fk_Construtora_Codigo)
VALUES (202, 'Residencial Beta Blue', 'Rua das Palmeiras', 500, 'Casa 2', 20);

-- Inserção dos dados na tabela Trabalhador
INSERT INTO Trabalhador (CPF, Nome, Salario, Fk_Obra_Codigo)
VALUES ('201.201.201-01', 'Ana Silva', 2500.00, 201);
INSERT INTO Trabalhador (CPF, Nome, Salario, Fk_Obra_Codigo)
VALUES ('202.202.202-02', 'Bruno Souza', 3200.00, 201);
INSERT INTO Trabalhador (CPF, Nome, Salario, Fk_Obra_Codigo)
VALUES ('203.203.203-03', 'Carlos Lima', 2800.00, 201);
INSERT INTO Trabalhador (CPF, Nome, Salario, Fk_Obra_Codigo)
VALUES ('204.204.204-04', 'Daniela Santos', 3100.00, 201);
INSERT INTO Trabalhador (CPF, Nome, Salario, Fk_Obra_Codigo)
VALUES ('205.205.205-05', 'Eduardo Paes', 2900.00, 201);
INSERT INTO Trabalhador (CPF, Nome, Salario, Fk_Obra_Codigo)
VALUES ('206.206.206-06', 'Fernanda Torres', 2700.00, 202);
INSERT INTO Trabalhador (CPF, Nome, Salario, Fk_Obra_Codigo)
VALUES ('207.207.207-07', 'Gabriel Nunes', 3400.00, 202);
INSERT INTO Trabalhador (CPF, Nome, Salario, Fk_Obra_Codigo)
VALUES ('208.208.208-08', 'Helena Costa', 3100.00, 202);
INSERT INTO Trabalhador (CPF, Nome, Salario, Fk_Obra_Codigo)
VALUES ('209.209.209-09', 'Igor Mendes', 3000.00, 202);
INSERT INTO Trabalhador (CPF, Nome, Salario, Fk_Obra_Codigo)
VALUES ('210.210.210-10', 'Julia Rocha', 3200.00, 202);

-- Inserção dos dados na tabela Usa
INSERT INTO Usa (Fk_Obra_Codigo, Fk_Equipamento_Codigo, Data_Inicio, Data_Termino)
VALUES (201, 301, TO_DATE('01/01/2023', 'DD/MM/YYYY'), TO_DATE('10/01/2023', 'DD/MM/YYYY'));
INSERT INTO Usa (Fk_Obra_Codigo, Fk_Equipamento_Codigo, Data_Inicio, Data_Termino)
VALUES (201, 304, TO_DATE('15/01/2023', 'DD/MM/YYYY'), TO_DATE('25/01/2023', 'DD/MM/YYYY'));
INSERT INTO Usa (Fk_Obra_Codigo, Fk_Equipamento_Codigo, Data_Inicio, Data_Termino)
VALUES (201, 305, TO_DATE('01/02/2023', 'DD/MM/YYYY'), TO_DATE('10/02/2023', 'DD/MM/YYYY'));
INSERT INTO Usa (Fk_Obra_Codigo, Fk_Equipamento_Codigo, Data_Inicio, Data_Termino)
VALUES (201, 306, TO_DATE('15/02/2023', 'DD/MM/YYYY'), TO_DATE('25/02/2023', 'DD/MM/YYYY'));