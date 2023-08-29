-- Criar Banco de Dados
CREATE DATABASE Livraria;

-- Mostrar Banco de Dados
SHOW DATABASES;

-- Acessa Banco de Dados
USE Livraria;

-- Criar Tabela
CREATE TABLE Bibilioteca(
    Id INT (30) auto_increment PRIMARY KEY,
    Livro VARCHAR (255) NOT NULL,
    Autor VARCHAR (255) NOT NULL,
    Sexo_Autor VARCHAR (30) NOT NULL,
    Num_Pag INT NOT NULL,
    Editora VARCHAR (255) NOT NULL,
    Valor_Capa_Comum DOUBLE NOT NULL,
    Valor_Kindle DOUBLE NOT NULL,
    Ano_de_Publicacao int (4) NOT NULL
);

-- Inserir Registro na Tabela
INSERT INTO Bibilioteca(Livro, Autor, Sexo_Autor, Num_Pag, Editora, Valor_Capa_Comum, Valor_Kindle, Ano_de_Publicacao)
VALUES ('Pai Rico Pai Pobre','Robert T. Kloyosaki', 'Masculino', '336', 'Alta Books', '61.53', '58.45', '2018');

INSERT INTO Bibilioteca(Livro, Autor, Sexo_Autor, Num_Pag, Editora, Valor_Capa_Comum, Valor_Kindle, Ano_de_Publicacao)
VALUES ('Mindset','Carol S. Dweck', 'Feminino', '312', 'Objetiva', '38.99', '14.95', '2017');

INSERT INTO Bibilioteca(Livro, Autor, Sexo_Autor, Num_Pag, Editora, Valor_Capa_Comum, Valor_Kindle, Ano_de_Publicacao)
VALUES ('Como Fazer Amigos e Influenciar Pessoas', 'Dale Carnegie', 'Masculino', '256', 'Sextante', '38.99', '33.24', '2019');

INSERT INTO Bibilioteca(Livro, Autor, Sexo_Autor, Num_Pag, Editora, Valor_Capa_Comum, Valor_Kindle, Ano_de_Publicacao)
VALUES ('A Cabana','William P. Young', 'Masculino', '240', 'Aqueiro', '35.99', '17.905', '2008');

INSERT INTO Bibilioteca(Livro, Autor, Sexo_Autor, Num_Pag, Editora, Valor_Capa_Comum, Valor_Kindle, Ano_de_Publicacao)
VALUES ('O Poder do Hábito', 'Charles Duhigg', 'Masculino', '408', 'Objetiva', '42.99', '29.90', '2012');

INSERT INTO Bibilioteca(Livro, Autor, Sexo_Autor, Num_Pag, Editora, Valor_Capa_Comum, Valor_Kindle, Ano_de_Publicacao)
VALUES ('Código Limpo', 'Robert C. Martin', 'Masculino', '425', 'Alta Books', '91.99', '87.39', '2009');

INSERT INTO Bibilioteca(Livro, Autor, Sexo_Autor, Num_Pag, Editora, Valor_Capa_Comum, Valor_Kindle, Ano_de_Publicacao)
VALUES ('Essencialismo', 'Greg McKeown', 'Masculino', '272', 'Sextante', '53.58', '33.24', '2015');

INSERT INTO Bibilioteca(Livro, Autor, Sexo_Autor, Num_Pag, Editora, Valor_Capa_Comum, Valor_Kindle, Ano_de_Publicacao)
VALUES ('Me Poupe!', 'Nathalia Arcuri', 'Feminino', '176', 'Sextante', '32.86', '17.09', '2018');

INSERT INTO Bibilioteca(Livro, Autor, Sexo_Autor, Num_Pag, Editora, Valor_Capa_Comum, Valor_Kindle, Ano_de_Publicacao)
VALUES ('Comece Pelo Porquê', 'Simon Sinek', 'Masculino', '256', 'Sextante', '50.58', '24.90', '2018');

INSERT INTO Bibilioteca(Livro, Autor, Sexo_Autor, Num_Pag, Editora, Valor_Capa_Comum, Valor_Kindle, Ano_de_Publicacao)
VALUES ('O Alquimista', 'Paulo Coelho', 'Masculino', '206', 'Paralela', '24.70', '14.70', '2017');

-- Apagar tabela

DROP TABLE Bibilioteca;

-- Deletar Id da tabela 

delete FROM Bibilioteca WHERE id=1;

-- Update Tabela

UPDATE Bibilioteca SET Autor = 'Joselíno' where id= 2;

-- Selecionando todos os registros da tabela "Clientes"

SELECT Id, Autor, Livro
FROM Bibilioteca
WHERE Id < 6 AND Livro Like '%S%'
ORDER BY Autor ASC ;


   SELECT * FROM Bibilioteca;

-- 1° Trazer o nome do livro, autor e valor Kindle somente de livros com valores menores que R$ 40,00

Select id, Livro, Autor, Valor_Kindle from Bibilioteca
where Valor_Kindle < '40.00';

-- 2° Trazer o nome do livro e autor onde o ano de publicação seja maior que 2017, a editora seja Sextante e o sexo do autor seja feminino;

Select id, Livro, Autor, Sexo_Autor, Ano_de_Publicacao,  Editora from Bibilioteca
where Ano_de_Publicacao > '2017' and Editora = 'Sextante' and Sexo_Autor = 'Feminino';

-- 3° Trazer o nome do livro e editora de livros com mais de 200 páginas

Select Id, Livro, Editora, Num_Pag from Bibilioteca
where  Num_Pag >= '200';

-- 4° Trazer o nome do livro, número de páginas do livro e autores que começam com a letra "C"

Select id, Livro, Num_Pag from Bibilioteca
where Autor
like 'C%';

-- 5° Trazer o nome do autor, editora e ano de publicação dos livros que tenham autores do sexo masculino e tenham sido publicados pela editora Alta Books

Select id, Autor, Editora, Ano_de_Publicacao, Sexo_Autor from Bibilioteca
where Sexo_Autor = 'Masculino' and Editora= 'Alta Books';

-- 6° Trazer o nome do livro, do autor, número de páginas, editora, ano de publicação e valor com capa comum com valores acima de R$ 50,00;

Select id, Livro, Autor, Num_Pag, Editora, Ano_de_Publicacao, Valor_Capa_Comum from Bibilioteca
where Valor_Capa_Comum > '50.00';

-- 7° Trazer o nome do livro, editora e valor capa comum onde o nome do autor comece com Nathalia

select id, Livro, Editora, Autor, Valor_Capa_Comum from Bibilioteca
where Autor like 'Nathalia%';

--  8° Trazer o nome do livro, autor, número de páginas dos livros publicados até 2017

select id, Livro, Autor, Num_Pag, Ano_de_Publicacao from Bibilioteca
where Ano_de_Publicacao <= '2017';

-- 9° Trazer o nome dos autores com livros publicados pela editora Sextante com mais de 200 páginas

select id, Livro, Editora, Num_Pag from Bibilioteca
where Num_Pag > '200';

-- 10° Trazer o nome do livro, autores, valor com capa comum com valor maior que R$ 30,00 na editora Sextante

select id, Livro, Autor, Valor_Capa_Comum, Editora from Bibilioteca
where Valor_Capa_Comum >= '30.00';
