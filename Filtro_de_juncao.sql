--Busca usando Join
-- Seleciona o Nome do Usuário, Telefone e Email da tabela Contatos_Usuario, 
-- fazendo um JOIN com a tabela Usuario com base no Código do usuário.
SELECT u.Nome, c.Telefone, c.Email
FROM Usuario u
JOIN Contatos_Usuario c ON u.Codigo = c.Codigo_Usuario;

-- Seleciona o Nome da Música e o Nome do Artista, unindo as tabelas Musica, Produtora_tem_Artistas e Artistas.
SELECT m.Nome AS Musica, a.Nome AS Artista
FROM Musica m
JOIN Produtora_tem_Artistas p ON m.ID = p.ID_Art
JOIN Artistas a ON p.ID_Art = a.ID_Art;

-- Seleciona o Nome do Produto e o Nome da Loja, juntando as tabelas Produto, Produto_tem_Loja e Loja.
SELECT p.Nome AS Produto, l.Nome AS Loja
FROM Produto p
JOIN Produto_tem_Loja pl ON p.ID = pl.ID_Produto
JOIN Loja l ON pl.ID_Loja = l.ID_Loja;

-- Seleciona o Nome do Usuário e a informação de se pode ouvir offline, 
-- utilizando um LEFT JOIN para incluir todos os usuários, mesmo os que não têm uma entrada na tabela Premium.
SELECT u.Nome, p.Ouvir_Offline
FROM Usuario u
LEFT JOIN Premium p ON u.Codigo = p.Codigo_Usuario;

-- Seleciona o Nome do Usuário e o Nome da Música que ele baixou, 
-- fazendo um JOIN com a tabela Baixar_Musicas_Usuario.
SELECT u.Nome, b.Nome_Musica
FROM Usuario u
JOIN Baixar_Musicas_Usuario b ON u.Codigo = b.Codigo_Usuario;

-- Seleciona a Rua da Produtora e o Telefone da tabela Contatos_Produtora, 
-- realizando um JOIN com base no Registro da Produtora.
SELECT pr.Rua, c.Telefone
FROM Produtora pr
JOIN Contatos_Produtora c ON pr.Registro_Produtora = c.Registro_Produtora;

-- Seleciona o Nome e o Autor da Playlist.
SELECT p.Nome AS Playlist, p.Autor
FROM Playlist p;

-- Seleciona o Nome da Música e o Nome da Mídia, 
-- realizando JOIN entre as tabelas Musica, Digital e Midia.
SELECT m.Nome AS Musica, md.Nome AS Midia
FROM Musica m
JOIN Digital d ON m.ID = d.ID_Midia
JOIN Midia md ON d.ID_Midia = md.ID;

-- Seleciona o Nome da Loja e o Nome da Música, 
-- fazendo JOIN entre as tabelas Loja, Fornece e Musica.
SELECT l.Nome AS Loja, m.Nome AS Musica
FROM Loja l
JOIN Fornece f ON l.ID_Loja = f.ID_Loja
JOIN Musica m ON f.ID_Musica = m.ID;

-- Seleciona o Nome do Artista e a Cidade da Produtora, 
-- realizando JOIN entre as tabelas Artistas, Produtora_tem_Artistas e Produtora.
SELECT a.Nome AS Artista, pr.Cidade AS Produtora
FROM Artistas a
JOIN Produtora_tem_Artistas pa ON a.ID_Art = pa.ID_Art
JOIN Produtora pr ON pa.Registro_Produtora = pr.Registro_Produtora;