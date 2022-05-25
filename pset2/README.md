<div align="center">
  
  # Design e Desenvolvimento de Banco de Dados
  ## *Pset2*
</div>
  
  #### Aluno: Rolph da Luz Fadini
  #### Curso: Ciência da Computação
  #### Turma: CC1M
  #### Professor(a): Abrantes Araújo Silva Filho
  #### Monitor(a): Suellen Miranda Amorim
  
  ##
  
  - ## *O script de todas as questões se encontra no subdiretório [Pset2](https://github.com/RolphFadini/uvv_bd_1_cc1m/blob/main/pset2/Script-Mysql.sql)*
  > Todas as tabelas utilizadas foram retiradas do [Pset1](https://github.com/RolphFadini/uvv_bd_1_cc1m/blob/main/pset1/Script-Mysql.sql). 
  
  # **Questão 1:**
  ```
  prepare um relatório que mostre a média salarial dos funcionários de cada departamento.
  ```

| Departamento    | Média Salarial  |
|-----------------|-----------------|
| Administração   | 31000.00        |
| Matriz          | 55000.00        |
| Pesquisa        | 33250.00        |
##


# **Questão 2:**
```
prepare um relatório que mostre a média salarial dos homens e das mulheres.
```

| Sexo | Média Salarial  |
|------|-----------------|
| F    | 31000.00        |
| M    | 37600.00        |
##


# **Questão 3:**
```
prepare um relatório que liste o nome dos departamentos e, para cada departamento, inclua as seguintes informações de seus 
funcionários: o nome completo, a data de nascimento, a idade em anos completos e o salário.
```

| Departamento    | Nome Completo    | Data de Nascimento | Idade | Salário     |
|-----------------|------------------|--------------------|-------|-------------|
| Matriz          | Jorge E Brito    | 1937-11-10         |    84 | R$ 55000.00 |
| Administração   | Jennifer S Souza | 1941-06-20         |    80 | R$ 43000.00 |
| Administração   | André V Pereira  | 1969-03-29         |    53 | R$ 25000.00 |
| Administração   | Alice J Zelaya   | 1968-01-19         |    54 | R$ 25000.00 |
| Pesquisa        | João B Silva     | 1965-01-09         |    57 | R$ 30000.00 |
| Pesquisa        | Fernando T Wong  | 1955-12-08         |    66 | R$ 40000.00 |
| Pesquisa        | Joice A Leite    | 1972-07-31         |    49 | R$ 25000.00 |
| Pesquisa        | Ronaldo K Lima   | 1962-09-15         |    59 | R$ 38000.00 |
##


# **Questão 4:**
```
prepare um relatório que mostre o nome completo dos funcionários, a idade em anos completos, o salário atual  e o salário com um 
reajuste que obedece ao seguinte critério: se o salário atual do funcionário é inferior a 35.000 o reajuste deve ser de 20%, e se 
o salário atual do funcionário for igual ou superior a 35.000 o reajuste deve ser de 15%.
```

| Nome Completo    | Idade | Salário     | Reajuste Salarial |
|------------------|-------|-------------|-------------------|
| Jorge E Brito    |    84 | R$ 55000.00 |          63250.00 |
| Jennifer S Souza |    80 | R$ 43000.00 |          49450.00 |
| Fernando T Wong  |    66 | R$ 40000.00 |          46000.00 |
| Ronaldo K Lima   |    59 | R$ 38000.00 |          43700.00 |
| João B Silva     |    57 | R$ 30000.00 |          36000.00 |
| Alice J Zelaya   |    54 | R$ 25000.00 |          30000.00 |
| André V Pereira  |    53 | R$ 25000.00 |          30000.00 |
| Joice A Leite    |    49 | R$ 25000.00 |          30000.00 |
##


# **Questão 5:**
```
prepare um relatório que liste, para cada departamento, o nomedo gerente e o nome dos funcionários. Ordene esse relatório por 
nome do departamento em ordem crescente) e por salário dos funcionários (em ordem decrescente).
```

| Departamento  | Gerente  | Funcionário |
|---------------|----------|-------------|
| Administração | Jennifer | Jennifer    |
| Administração | Jennifer | André       |
| Administração | Jennifer | Alice       |
| Matriz        | Jorge    | Jorge       |
| Pesquisa      | Fernando | Fernando    |
| Pesquisa      | Fernando | Ronaldo     |
| Pesquisa      | Fernando | João        |
| Pesquisa      | Fernando | Joice       |
##


# **Questão 6:**
```
prepare um relatório que mostre o nome completo dos funcionários que têm dependentes, o departamento onde eles trabalham e, 
para cada funcionário, também liste o nome completo dos dependentes, a idade em anos de cada dependente e o sexo (o sexo NÃO 
DEVE aparecer como M ou F, deve aparecer como “Masculino” ou “Feminino”).
```

| Funcionário      | Departamento    | Dependente        | Idade do Dependente | Sexo do Dependente |
|------------------|-----------------|-------------------|---------------------|--------------------|
| João B Silva     | Pesquisa        | Alicia B Silva    |                  33 | Feminino           |
| João B Silva     | Pesquisa        | Elizabeth B Silva |                  55 | Feminino           |
| João B Silva     | Pesquisa        | Michael B Silva   |                  34 | Masculino          |
| Fernando T Wong  | Pesquisa        | Alicia T Wong     |                  36 | Feminino           |
| Fernando T Wong  | Pesquisa        | Janaína T Wong    |                  64 | Feminino           |
| Fernando T Wong  | Pesquisa        | Tiago T Wong      |                  38 | Masculino          |
| Jennifer S Souza | Administração   | Antonio S Souza   |                  80 | Masculino          |
##


# **Questão 7:**
```
prepare um relatório que mostre, para cada funcionário que NÃOTEM dependente, seu nome completo, departamento e salário.
```

| Funcionário      | Departamento    | Salário     |
|------------------|-----------------|-------------|
| Joice A Leite    | Pesquisa        | R$ 25000.00 |
| Ronaldo K Lima   | Pesquisa        | R$ 38000.00 |
| Jorge E Brito    | Matriz          | R$ 55000.00 |
| André V Pereira  | Administração   | R$ 25000.00 |
| Alice J Zelaya   | Administração   | R$ 25000.00 |
##


# **Questão 8:**
```
prepare um relatório que mostre, para cada departamento, os projetosdesse departamento e o nome completo dos funcionários que 
estão alocados em cada projeto. Além disso inclua o número de horas trabalhadas por cada funcionário, em cada projeto.
```

| Departamento    | Projeto          | Nome Completo    | Horas |
|-----------------|------------------|------------------|-------|
| Pesquisa        | ProdutoX         | João B Silva     | 32.5h |
| Pesquisa        | ProdutoX         | Joice A Leite    | 20.0h |
| Pesquisa        | ProdutoY         | João B Silva     | 7.5h  |
| Pesquisa        | ProdutoY         | Fernando T Wong  | 10.0h |
| Pesquisa        | ProdutoY         | Joice A Leite    | 20.0h |
| Pesquisa        | ProdutoZ         | Fernando T Wong  | 10.0h |
| Pesquisa        | ProdutoZ         | Ronaldo K Lima   | 40.0h |
| Pesquisa        | Informatização   | Fernando T Wong  | 10.0h |
| Administração   | Informatização   | André V Pereira  | 35.0h |
| Administração   | Informatização   | Alice J Zelaya   | 10.0h |
| Pesquisa        | Reorganização    | Fernando T Wong  | 10.0h |
| Matriz          | Reorganização    | Jorge E Brito    | 0.0h  |
| Administração   | Reorganização    | Jennifer S Souza | 15.0h |
| Administração   | Novosbenefícios  | Jennifer S Souza | 20.0h |
| Administração   | Novosbenefícios  | André V Pereira  | 5.0h  |
| Administração   | Novosbenefícios  | Alice J Zelaya   | 30.0h |
##


# **Questão 9:**
```
prepare um relatório que mostre a soma total das horas de cada projeto em cada departamento. Obs.: o relatório deve exibir o 
nome do departamento, o nome do projeto e a soma total das horas.
```

| Departamento    | Projeto          | Tempo Total |
|-----------------|------------------|-------------|
| Administração   | Informatização   |       115.0 |
| Administração   | Novosbenefícios  |       115.0 |
| Pesquisa        | ProdutoX         |       110.0 |
| Pesquisa        | ProdutoY         |       110.0 |
| Pesquisa        | ProdutoZ         |       110.0 |
| Matriz          | Reorganização    |         0.0 |
##


# **Questão 10:**
```
prepare um relatório que mostre a média salarial dos funcionáriosde cada departamento.
```

| Departamento    | Média Salarial  |
|-----------------|-----------------|
| Administração   | 31000.00        |
| Matriz          | 55000.00        |
| Pesquisa        | 33250.00        |
##


# **Questão 11:**
```
considerando que o valor pago por hora trabalhada em um projetoé de 50 reais, prepare um relatório que mostre o nome completo 
do funcionário, o nome do projeto e o valor total que o funcionário receberá referente às horas trabalhadas naquele projeto.
```

| Funcionário      | Projeto          | Total Recebido |
|------------------|------------------|----------------|
| Ronaldo K Lima   | ProdutoZ         | R$ 2000.0      |
| André V Pereira  | Informatização   | R$ 1750.0      |
| João B Silva     | ProdutoX         | R$ 1625.0      |
| Alice J Zelaya   | Novosbenefícios  | R$ 1500.0      |
| Jennifer S Souza | Novosbenefícios  | R$ 1000.0      |
| Joice A Leite    | ProdutoX         | R$ 1000.0      |
| Joice A Leite    | ProdutoY         | R$ 1000.0      |
| Jennifer S Souza | Reorganização    | R$ 750.0       |
| Fernando T Wong  | ProdutoZ         | R$ 500.0       |
| Fernando T Wong  | Informatização   | R$ 500.0       |
| Fernando T Wong  | ProdutoY         | R$ 500.0       |
| Fernando T Wong  | Reorganização    | R$ 500.0       |
| Alice J Zelaya   | Informatização   | R$ 500.0       |
| João B Silva     | ProdutoY         | R$ 375.0       |
| André V Pereira  | Novosbenefícios  | R$ 250.0       |
| Jorge E Brito    | Reorganização    | R$ 0.0         |
##


# **Questão 12:**
```
seu chefe está verificando as horas trabalhadas pelos funcionáriosnos projetos e percebeu que alguns funcionários, mesmo estando 
alocadas à algum projeto, não registraram nenhuma hora trabalhada. Sua tarefa é preparar um relatório que liste o nome do 
departamento, o nome do projeto e o nome dos funcionários que, mesmo estando alocados a algum projeto, não registraram nenhuma 
hora trabalhada.
```

| Departamento | Projeto         | Funcionário  | Horas de Trabalho |
|--------------|-----------------|--------------|-------------------|
| Matriz       | Reorganização   | Jorge        | 0.0h              |
##


# **Questão 13:**
```
durante o natal deste ano a empresa irá presentear todos os funcionários e todos os dependentes (sim, a empresa vai dar um 
presente  para cada funcionário e um presente para cada dependente de cada funcionário) e pediu para que você preparasse um 
relatório que  listasse o nome completo das pessoas a serem presenteadas (funcionários e dependentes), o sexo e a idade em anos 
completos (para poder comprar um presente adequado). Esse relatório deve estar ordenado pela idade em anos completos, de forma 
decrescente.
```

| Nome Completo     | Sexo      | Idade |
|-------------------|-----------|-------|
| Jorge E Brito     | Masculino |    84 |
| Antonio S Souza   | Masculino |    80 |
| Jennifer S Souza  | Feminino  |    80 |
| Fernando T Wong   | Masculino |    66 |
| Janaína T Wong    | Feminino  |    64 |
| Ronaldo K Lima    | Masculino |    59 |
| João B Silva      | Masculino |    57 |
| Elizabeth B Silva | Feminino  |    55 |
| Alice J Zelaya    | Feminino  |    54 |
| André V Pereira   | Masculino |    53 |
| Joice A Leite     | Feminino  |    49 |
| Tiago T Wong      | Masculino |    38 |
| Alicia T Wong     | Feminino  |    36 |
| Michael B Silva   | Masculino |    34 |
| Alicia B Silva    | Feminino  |    33 |
##


# **Questão 14:**
```
prepare um relatório que exiba quantos funcionários cada departamento tem.
```

| Departamento    | Qtde. de Funcionários  |
|-----------------|------------------------|
| Administração   |                      3 |
| Matriz          |                      1 |
| Pesquisa        |                      4 |
##


# **Questão 15:**
```
como um funcionário pode estar alocado em mais de um projeto, prepare um relatório que exiba o nome completo do funcionário, o 
departamentodesse funcionário e o nome dos projetos em que cada funcionário está alocado. Atenção: se houver algum funcionário que 
não está alocado em  nenhum projeto, o nome completo e o departamento também devem aparecer no relatório.
```

| Nome Completo    | Departamento    | Projeto          |
|------------------|-----------------|------------------|
| Fernando T Wong  | Pesquisa        | Reorganização    |
| Jorge E Brito    | Matriz          | Reorganização    |
| Jennifer S Souza | Administração   | Reorganização    |
| Fernando T Wong  | Pesquisa        | ProdutoZ         |
| Ronaldo K Lima   | Pesquisa        | ProdutoZ         |
| João B Silva     | Pesquisa        | ProdutoY         |
| Fernando T Wong  | Pesquisa        | ProdutoY         |
| Joice A Leite    | Pesquisa        | ProdutoY         |
| João B Silva     | Pesquisa        | ProdutoX         |
| Joice A Leite    | Pesquisa        | ProdutoX         |
| Jennifer S Souza | Administração   | Novosbenefícios  |
| André V Pereira  | Administração   | Novosbenefícios  |
| Alice J Zelaya   | Administração   | Novosbenefícios  |
| Fernando T Wong  | Pesquisa        | Informatização   |
| André V Pereira  | Administração   | Informatização   |
| Alice J Zelaya   | Administração   | Informatização   |
