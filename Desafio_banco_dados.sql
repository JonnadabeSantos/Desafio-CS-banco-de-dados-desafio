-- 1
select Nome, Ano from Filmes

-- 2
select Nome, Ano from Filmes order by Ano

-- 3
select * from Filmes where Nome = 'De volta para o Futuro'

-- 4
select * from Filmes where Ano = 1997

-- 5
select * from Filmes where Ano > 2000

-- 6
select * from Filmes where Duracao > 100 and Duracao < 150 order by Duracao

-- 7
select Ano, COUNT(*) AS quantidade from Filmes
GROUP by Ano
order BY quantidade desc;

-- 8
select * from Atores

-- 9
select * from Atores where Genero = 'F' order by PrimeiroNome

-- 10
SELECT Filmes.nome, Generos.genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.id = FilmesGenero.idFilme
INNER JOIN Generos ON FilmesGenero.idGenero = Generos.id;

-- 11
SELECT Filmes.nome, Generos.genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.id = FilmesGenero.idFilme
INNER JOIN Generos ON FilmesGenero.idGenero = Generos.id
WHERE Generos.genero = 'Mistério';

-- 12
select Filmes.nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel  from Filmes
INNER JOIN ElencoFilme ON ElencoFilme.IdFilme = Filmes.Id
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id;