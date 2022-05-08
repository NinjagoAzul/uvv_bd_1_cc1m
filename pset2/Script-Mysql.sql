-- Questão 1

SELECT dpt.nome_departamento Departamento, CONCAT(ROUND(AVG(f.salario), 2)) "Média Salarial"
FROM funcionario f
INNER JOIN departamento dpt
ON dpt.numero_departamento = f.numero_departamento
GROUP BY dpt.nome_departamento;


-- Questão 2

SELECT sexo, CONCAT(ROUND(AVG(f.salario), 2)) as "Média Salarial"
FROM funcionario f
GROUP BY Sexo;


-- Questão 3

SELECT dpt.nome_departamento Departamento, CONCAT( f.primeiro_nome, " ", f.nome_meio, " ", f.ultimo_nome ) "Nome Completo", 
f.data_nascimento "Data de Nascimento", TIMESTAMPDIFF(YEAR, f.data_nascimento, CURDATE()) Idade, CONCAT("R$", " ", f.salario) Salário
FROM funcionario f 
INNER JOIN
departamento dpt
ON f.numero_departamento = dpt.numero_departamento
ORDER BY dpt.numero_departamento;


-- Questão 4

SELECT CONCAT(f.primeiro_nome, " ", f.nome_meio, " ", f.ultimo_nome) "Nome Completo", TIMESTAMPDIFF(YEAR, f.data_nascimento, CURDATE()) Idade, 
CONCAT("R$", " ", f.salario) Salário, ROUND(
CASE
WHEN f.salario < 35000 THEN f.salario * 1.2
ELSE f.salario * 1.15
END, 2) "Reajuste Salarial"
FROM funcionario f
ORDER BY idade DESC;


-- Questão 5

SELECT dpt.nome_departamento Departamento,
CASE
WHEN dpt.cpf_gerente = f.cpf THEN primeiro_nome
ELSE "--:--"
END "Gerente",
CASE WHEN dpt.cpf_gerente != f.cpf THEN primeiro_nome
ELSE "--:--"
END "Funcionário",
CONCAT("R$", " ", f.salario) Salário
FROM funcionario f
INNER JOIN departamento dpt
ON f.numero_departamento = dpt.numero_departamento
ORDER BY dpt.nome_departamento ASC, f.salario DESC;


-- Questão 6

SELECT CONCAT(f.primeiro_nome, " ", f.nome_meio, " ", f.ultimo_nome) Funcionário, dpt.nome_departamento Departamento, 
CONCAT(d.nome_dependente, " ", f.nome_meio, " ", f.ultimo_nome) Dependente, TIMESTAMPDIFF(YEAR, d.data_nascimento, CURDATE()) "Idade do Dependente",
CASE
WHEN d.sexo = 'M' THEN "Masculino"
WHEN d.sexo = 'F' THEN "Feminino"
END "Sexo do Dependente"
FROM funcionario f
INNER JOIN departamento dpt
ON f.numero_departamento = dpt.numero_departamento
INNER JOIN dependente d
ON f.cpf = d.cpf_funcionario;


-- Questão 7

SELECT CONCAT(f.primeiro_nome, " ", f.nome_meio, " ", f.ultimo_nome) Funcionário, dpt.nome_departamento Departamento,
CONCAT("R$", " ", f.salario) Salário
FROM funcionario f
LEFT OUTER JOIN dependente d
ON f.cpf = d.cpf_funcionario
INNER JOIN departamento dpt
ON f.numero_departamento = dpt.numero_departamento
WHERE d.cpf_funcionario IS NULL;


-- Questão 8

SELECT dpt.nome_departamento Departamento, p.nome_projeto Projeto,
CONCAT(f.primeiro_nome, " ", f.nome_meio, " ", f.ultimo_nome) "Nome Completo", CONCAT(t.horas, "h") Horas
FROM funcionario f 
INNER JOIN departamento dpt 
INNER JOIN projeto p 
INNER JOIN trabalha_em t
WHERE f.numero_departamento = dpt.numero_departamento 
AND p.numero_projeto = t.numero_projeto 
AND f.cpf = t.cpf_funcionario 
ORDER BY p.numero_projeto;


-- Questão 9

SELECT dpt.nome_departamento Departamento, p.nome_projeto Projeto, SUM(DISTINCT(t.horas)) "Tempo Total"
FROM trabalha_em t
INNER JOIN funcionario f
ON t.cpf_funcionario = f.cpf
INNER JOIN departamento dpt
ON f.numero_departamento = dpt.numero_departamento
INNER JOIN projeto p
ON dpt.numero_departamento = p.numero_departamento
GROUP BY p.nome_projeto;


-- Questão 10

SELECT dpt.nome_departamento Departamento, CONCAT(ROUND(AVG(f.salario), 2)) "Média Salarial"
FROM funcionario f
INNER JOIN departamento dpt
ON dpt.numero_departamento = f.numero_departamento
GROUP BY dpt.nome_departamento;


-- Questão 11

SELECT CONCAT(f.primeiro_nome, " ", f.nome_meio, " ", f.ultimo_nome) Funcionário, p.nome_projeto Projeto,
CASE
WHEN t.horas > 0 THEN CONCAT("R$", " ", t.horas * 50)
ELSE "R$ 0.0"
END "Total Recebido"
FROM funcionario f
INNER JOIN trabalha_em t
ON f.cpf = t.cpf_funcionario
INNER JOIN projeto p
ON t.numero_projeto = p.numero_projeto
ORDER BY t.horas DESC;


-- Questão 12

SELECT dpt.nome_departamento Departamento, p.nome_projeto Projeto,
f.primeiro_nome Funcionário, CONCAT(t.horas, "h") "Horas de Trabalho"
FROM funcionario f 
INNER JOIN departamento dpt
ON f.numero_departamento = dpt.numero_departamento
INNER JOIN projeto p
ON dpt.numero_departamento = p.numero_departamento
INNER JOIN trabalha_em t
ON p.numero_projeto = t.numero_projeto
WHERE t.horas = 0;


-- Questão 13

SELECT CONCAT(f.primeiro_nome, " ", f.nome_meio, " ", f.ultimo_nome) "Nome Completo",
CASE
WHEN f.sexo = "M" THEN "Masculino"
WHEN f.sexo = "F" THEN "Feminino"
END Sexo,
TIMESTAMPDIFF(year, f.data_nascimento, curdate()) Idade
FROM funcionario f
UNION
SELECT CONCAT(d.nome_dependente, " ", f.nome_meio, " ", f.ultimo_nome) "Nome Completo",
CASE
WHEN d.sexo = "M" THEN "Masculino"
WHEN d.sexo = "F" THEN "Feminino"
END Sexo,
TIMESTAMPDIFF(year, d.data_nascimento, curdate()) Idade
FROM dependente d 
INNER JOIN funcionario f
ON d.cpf_funcionario = f.cpf
ORDER BY idade DESC;


-- Questão 14

SELECT dpt.nome_departamento Departamento, COUNT(f.numero_departamento) "Qtde. de Funcionários"
FROM funcionario f
INNER JOIN departamento dpt
ON f.numero_departamento = dpt.numero_departamento
GROUP BY dpt.nome_departamento;


-- Questão 15

SELECT DISTINCT CONCAT(f.primeiro_nome, " ", f.nome_meio, " ", f.ultimo_nome) "Nome Completo",
dpt.nome_departamento Departamento, p.nome_projeto Projeto
FROM departamento dpt 
INNER JOIN projeto p 
INNER JOIN trabalha_em t 
INNER JOIN funcionario f 
WHERE dpt.numero_departamento = f.numero_departamento 
AND p.numero_projeto = t.numero_projeto 
AND t.cpf_funcionario = f.cpf
ORDER BY p.nome_projeto DESC;
