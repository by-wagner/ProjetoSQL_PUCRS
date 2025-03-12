-- Tabela Construtora
CREATE TABLE Construtora (
    Codigo INT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Nome_Fantasia VARCHAR(255),
    Qtd_Funcionario INT
);

-- Tabela Telefone
CREATE TABLE Telefone (
    Telefone_PK INT PRIMARY KEY,
    Telefone VARCHAR(20) NOT NULL,
    FK_Construtora_Codigo INT NOT NULL,
    CONSTRAINT FK_Telefone_Construtora FOREIGN KEY (FK_Construtora_Codigo) REFERENCES Construtora (Codigo)
);

-- Tabela Categoria
CREATE TABLE Categoria (
    Codigo INT PRIMARY KEY,
    Descricao VARCHAR(255) NOT NULL
);

-- Tabela Equipamento
CREATE TABLE Equipamento (
    Codigo INT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Vlr_Uso_Diario DECIMAL(10, 2) NOT NULL,
    FK_Categoria_Codigo INT NOT NULL,
    CONSTRAINT FK_Equipamento_Categoria FOREIGN KEY (FK_Categoria_Codigo) REFERENCES Categoria (Codigo)
);

-- Tabela Obra
CREATE TABLE Obra (
    Codigo INT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Logradouro VARCHAR(255) NOT NULL,
    Numero INT NOT NULL,
    Complemento VARCHAR(255),
    FK_Construtora_Codigo INT NOT NULL,
    CONSTRAINT FK_Obra_Construtora FOREIGN KEY (FK_Construtora_Codigo) REFERENCES Construtora (Codigo)
);

-- Tabela Trabalhador
CREATE TABLE Trabalhador (
    CPF VARCHAR(14) PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Salario DECIMAL(10, 2) NOT NULL,
    FK_Obra_Codigo INT NOT NULL,
    CONSTRAINT FK_Trabalhador_Obra FOREIGN KEY (FK_Obra_Codigo) REFERENCES Obra (Codigo)
);

-- Tabela Usa (Relacionamento entre Obra e Equipamento)
CREATE TABLE Usa (
    FK_Obra_Codigo INT NOT NULL,
    FK_Equipamento_Codigo INT NOT NULL,
    Data_Inicio DATE NOT NULL,
    Data_Termino DATE NOT NULL,
    PRIMARY KEY (FK_Obra_Codigo, FK_Equipamento_Codigo, Data_Inicio),
    CONSTRAINT FK_Usa_Obra FOREIGN KEY (FK_Obra_Codigo) REFERENCES Obra (Codigo),
    CONSTRAINT FK_Usa_Equipamento FOREIGN KEY (FK_Equipamento_Codigo) REFERENCES Equipamento (Codigo)
);