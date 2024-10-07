/* 1 - Buscar o nome e ano dos filmes */ 
SELECT Nome, Ano FROM Filmes
/* 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano */ 
SELECT Nome, Ano FROM Filmes
ORDER BY Ano ASC
/* 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o */ 
SELECT Nome, Ano, Duracao FROM Filmes AS F
WHERE F.Nome = 'de volta para o futuro'
/* 4 - Buscar os filmes lan�ados em 1997 */ 
SELECT * FROM Filmes AS F
WHERE F.Ano = 1997
/* 5 - Buscar os filmes lan�ados AP�S o ano 2000 */ 
SELECT * FROM Filmes AS F
WHERE F.Ano > 2000
/* 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente */ 
SELECT * FROM Filmes AS F
WHERE F.Duracao > 100 AND F.Duracao < 150
/* 7 - Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente */ 
SELECT 
	Ano,
	COUNT (Ano) Quantidade
FROM Filmes AS F
GROUP BY F.Ano
ORDER BY Quantidade DESC
/* 8 - Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome */ 
SELECT 
PrimeiroNome,
UltimoNome
FROM Atores AS A
WHERE A.Genero = 'M'
/* 9 - Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome */ 
SELECT 
PrimeiroNome,
UltimoNome
FROM Atores AS A
WHERE A.Genero = 'F'
ORDER BY A.PrimeiroNome ASC
/* 10 - Buscar o nome do filme e o g�nero */ 
SELECT 
F.Nome,
G.Genero
FROM FilmesGenero AS FG
INNER JOIN Filmes AS F ON FG.IdFilme = F.id
INNER JOIN Generos AS G ON FG.IdGenero = G.id
/* 11 - Buscar o nome do filme e o g�nero do tipo "Mist�rio" */ 
SELECT 
F.Nome,
G.Genero
FROM FilmesGenero AS FG
INNER JOIN Filmes AS F ON FG.IdFilme = F.id
INNER JOIN Generos AS G ON FG.IdGenero = G.id
WHERE G.Genero = 'Mist�rio'
/* 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel */ 
SELECT 
F.Nome,
A.PrimeiroNome,
A.UltimoNome,
EF.Papel
FROM ElencoFilme AS EF
INNER JOIN Filmes AS F ON EF.IdFilme = F.id
INNER JOIN Atores AS A ON EF.IdAtor = A.id