--busca simples sem JOIN
-- Seleciona todos os registros da tabela Loja.
SELECT * FROM Loja;

-- Seleciona todos os registros da tabela Usuario.
SELECT * FROM Usuario;

-- Seleciona apenas os campos Nome e Data_Nascimento da tabela Usuario.
SELECT Nome, Data_Nascimento FROM Usuario;

-- Conta o número total de registros na tabela Usuario.
SELECT COUNT(*) FROM Usuario;

-- Seleciona todos os registros da tabela Musica onde a duração é maior que 3 minutos.
SELECT * FROM Musica WHERE Duracao > '00:03:00';

-- Seleciona os campos Nome e Duracao da tabela Midia.
SELECT Nome, Duracao FROM Midia;

-- Seleciona todos os registros da tabela Contatos_Usuario.
SELECT * FROM Contatos_Usuario;

-- Seleciona os campos Nome e Tempo_Carreira da tabela Artistas, filtrando para aqueles que têm Tempo_Carreira não nulo.
SELECT Nome, Tempo_Carreira FROM Artistas WHERE Tempo_Carreira IS NOT NULL;

-- Seleciona todos os registros da tabela Produto onde o preço é menor que 50.
SELECT * FROM Produto WHERE Preco < 50;

-- Seleciona todos os registros da tabela Playlist.
SELECT * FROM Playlist;