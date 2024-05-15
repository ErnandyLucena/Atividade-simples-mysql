USE meuesquema;

CREATE TABLE Clientes (
    CPF VARCHAR(11) PRIMARY KEY,
    Nome VARCHAR(100),
    Data_de_Nascimento DATE,
    Endereco VARCHAR(100),
    CEP VARCHAR(8),
    Bairro VARCHAR(50),
    Cidade VARCHAR(50),
    UF CHAR(2)
);


ALTER TABLE Clientes ADD COLUMN Data_ultima_compra DATE;

INSERT INTO Clientes (CPF, Nome, Data_de_Nascimento, Endereco, CEP, Bairro, Cidade, UF)
VALUES
('04496332780', 'João da Silva', '1969-11-25', 'Rua Antônio Numes', '88045963', 'Palmeiras', 'Londrina', 'PR'),
('05485031490', 'Ana Regina Fagundes', '1986-09-21', 'Rua Palmeias Novas', '88078923', 'Leblon', 'Rio de Janeiro', 'RJ'),
('03350314905', 'Fernando Soares', '1990-03-05', 'Rua Palmeias Novas', '88048917', 'Copacabana', 'Rio de Janeiro', 'PE');

SELECT * FROM Clientes WHERE Cidade = 'Rio de Janeiro';

DELETE FROM Clientes WHERE Cidade = 'Londrina';