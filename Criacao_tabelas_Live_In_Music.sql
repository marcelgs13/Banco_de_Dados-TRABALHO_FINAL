--SQL Criação das Tabelas:
--Tabela 1
CREATE TABLE Loja (
    ID_Loja INTEGER PRIMARY KEY,
    Nome TEXT
);
--Tabela 2
CREATE TABLE Usuario (
    Codigo INTEGER PRIMARY KEY,
    Nome TEXT,
    Data_Nascimento DATE
);
--Tabela 3
CREATE TABLE Contatos_Usuario (
    ID INTEGER PRIMARY KEY,
    Codigo_Usuario INTEGER,
    Telefone TEXT,
    Email TEXT,
    FOREIGN KEY (Codigo_Usuario) REFERENCES Usuario(Codigo)
);
--Tabela 4
CREATE TABLE Usuario_Indica_Usuario (
    Codigo_Usuario INTEGER,
    Codigo_Indicado_Usuario INTEGER,
    FOREIGN KEY (Codigo_Usuario) REFERENCES Usuario(Codigo),
    FOREIGN KEY (Codigo_Indicado_Usuario) REFERENCES Usuario(Codigo)
);
--Tabela 5
CREATE TABLE Premium (
    Codigo_Usuario INTEGER,
    Ouvir_Offline TEXT,
    Pular_Músicas TEXT,
    FOREIGN KEY (Codigo_Usuario) REFERENCES Usuario(Codigo)
);
--Tabela 6
CREATE TABLE Baixar_Musicas_Usuario (
    ID INTEGER PRIMARY KEY,
    Codigo_Usuario INTEGER,
    Nome_Musica TEXT,
    FOREIGN KEY (Codigo_Usuario) REFERENCES Usuario(Codigo)
);
--Tabela 7
CREATE TABLE Gratis (
    Codigo_Usuario INTEGER,
    Musicas_Aleatorias TEXT,
    FOREIGN KEY (Codigo_Usuario) REFERENCES Usuario(Codigo)
);
--Tabela 8
CREATE TABLE Genero (
    Codigo_Usuario INTEGER,
    Estilo TEXT,
    Sobre TEXT,
    FOREIGN KEY (Codigo_Usuario) REFERENCES Usuario(Codigo)
);
--Tabela 9
CREATE TABLE Playlist (
    ID_Play INTEGER PRIMARY KEY,
    Data_Criacao DATE,
    Nome TEXT,
    Autor TEXT
);
--Tabela 10
CREATE TABLE Artistas (
    ID_Art INTEGER PRIMARY KEY,
    Nome TEXT,
    Tempo_Carreira TEXT
);
--Tabela 11
CREATE TABLE Estacao (
    ID INTEGER PRIMARY KEY,
    Nome TEXT,
    Duracao TEXT
);
--Tabela 12
CREATE TABLE Produtora_tem_Artistas (
    ID INTEGER PRIMARY KEY,
    Registro_Produtora INTEGER,
    ID_Art INTEGER,
    FOREIGN KEY (Registro_Produtora) REFERENCES Produtora(Registro_Produtora),
    FOREIGN KEY (ID_Art) REFERENCES Artistas(ID_Art)
);
--Tabela 13
CREATE TABLE Produtora (
    ID INTEGER PRIMARY KEY,
    Registro_Produtora INTEGER,
    ID_Art INTEGER,
    Cidade TEXT,
    Pais TEXT,
    Rua TEXT,
    Estado TEXT,
    FOREIGN KEY (Registro_Produtora) REFERENCES Produtora(Registro_Produtora),
    FOREIGN KEY (ID_Art) REFERENCES Artistas(ID_Art)
);
--Tabela 14
CREATE TABLE Contatos_Produtora (
    ID INTEGER PRIMARY KEY,
    Registro_Produtora INTEGER,
    Telefone TEXT,
    Email TEXT,
    FOREIGN KEY (Registro_Produtora) REFERENCES Produtora(Registro_Produtora)
);
--Tabela 15
CREATE TABLE Midia (
    ID INTEGER PRIMARY KEY,
    Nome TEXT,
    Duracao TEXT,
    Data_Criacao DATE,
    Raridade TEXT,
    Preco REAL
);
--Tabela 16
CREATE TABLE Digital (
    ID_Midia INTEGER,
    Tamanho TEXT,
    FOREIGN KEY (ID_Midia) REFERENCES Midia(ID)
);
--Tabela 17
CREATE TABLE Informacoes_Midia (
    ID INTEGER PRIMARY KEY,
    ID_Midia INTEGER,
    Informacao TEXT,
    FOREIGN KEY (ID_Midia) REFERENCES Midia(ID)
);
--Tabela 18
CREATE TABLE Fisica (
    ID_Midia INTEGER,
    Quantidade_Musicas INTEGER,
    FOREIGN KEY (ID_Midia) REFERENCES Midia(ID)
);
--Tabela 19
CREATE TABLE Produto (
    ID INTEGER PRIMARY KEY,
    Tipo TEXT,
    Nome TEXT,
    Preco REAL
);
--Tabela 20
CREATE TABLE Fornece (
    ID INTEGER PRIMARY KEY,
    ID_Loja INTEGER,
    ID_Musica INTEGER,
    Data_Fornecimento DATE,
    FOREIGN KEY (ID_Loja) REFERENCES Loja(ID_Loja),
    FOREIGN KEY (ID_Musica) REFERENCES Musica(ID)
);
--Tabela 21
CREATE TABLE Musica (
    ID INTEGER PRIMARY KEY,
    Duracao TEXT,
    Nome TEXT,
    Sobre TEXT
);
--Tabela 22
CREATE TABLE Produto_tem_Loja (
    ID INTEGER PRIMARY KEY,
    ID_Loja INTEGER,
    ID_Produto INTEGER,
    FOREIGN KEY (ID_Loja) REFERENCES Loja(ID_Loja),
    FOREIGN KEY (ID_Produto) REFERENCES Produto(ID)
);