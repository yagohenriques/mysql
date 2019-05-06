CREATE TABLE aluno2(
    id integer primary key auto_increment,
    nome text,
    email text,
    nota1 real,
    nota2 real
);

Insert Into aluno2(id, nome, email, nota1, nota2)
VALUES(1,'Gilmara','gil@hotmail.com',9.8,7.8);

Insert Into aluno2
VALUES(NULL,'Cacildo','cac@gmail.com',4.6,7.8);

INSERT Into aluno2(nome,nota1,nota2)
VALUES("Ronilson",4.7,5.6);
/*************
Consulta dados
*************/

SELECT * FROM aluno2;

SELECT * FROM aluno2 WHERE email is null;

/*Atualizar o registro do aluno sem e-mail*/
UPDATE aluno2 SET email = 'roni@bol.com.br' where id = 3;
SELECT * FROM aluno2; 

SELECT nome,nota1,nota2 FROM aluno2;

UPDATE aluno2 set nota1 = 7.4 WHERE id = 3;

/*Cadraste p novo aluno Marilson com notas 8 e 6*/
INSERT INTO aluno2(nome,nota1,nota2)
VALUES('Marilson',8,6);
/*Listando em ordem alfabetica*/
SELECT * FROM aluno2 ORDER BY nome;

SELECT nome AS NOME,
       nota1 AS 'Nota 1',
       nota2 AS 'Nota 2',
       round ((nota1+nota2)/2,1) AS Média
       FROM aluno;
/*ordernado pela maior Média*/
SELECT nome AS NOME,
       nota1 AS 'Nota 1',
       nota2 AS 'Nota 2',
       round ((nota1+nota2)/2,1) AS Média
       FROM aluno2 ORDER BY Média DESC;
       
       /* Excluir a Gilmara da turma!*/
DELETE FROM aluno2 WHERE id = '1';     
       
/*Mostrando apenas nome e média limitando apenas a maior média*/
SELECT nome AS Nome,
round ((nota1+nota2)/2,1) AS Média
FROM aluno2 ORDER BY Média DESC LIMIT 1;
