<div align="center">
  
  # Design e Desenvolvimento de Banco de Dados
  ## *Pset1*
</div>
  
  #### Aluno: Rolph da Luz Fadini
  #### Curso: Ciência da Computação
  #### Turma: CC1M
  #### Professor(a): Abrantes Araújo Silva Filho
  #### Monitor(a): Suellen Miranda Amorim
  
  # **1. Introdução**
  
  Esse foi o primeiro pset que nos foi passado para que pudessemos conhecer um pouco melhor como seria a dinamica de avaliação da matéria de Banco de Dados. Para criação das questões do pset foram utilizados os capítulos 5 e 6 do livro `Sistemas de Banco de Dados, 7ª edição` escrito pelos autores Elmasri & Navathe. Para a realização do pset a seguinte ordem fui utilizada:
  
  - ### Construção de um Projeto Lógico.
  > Para que pudessemos construir as tabelas e suas respectivas relações tanto quanto os scripts utilizados nos dois SGBDs 

  - ### Implementação do Projeto Lógico no PostgreSQL.
  > Utilizando o script gerado pelo SQL Power Architect.

  - ### Implementação do Projeto Lógico no MySQL/MariaDB.
  > Utilizando o script gerado pelo SQL Power Architect.

  ## Ferramentas utilizadas para possibilitar a realização deste pset: 
  
   - ### SQL Power Architect.
   - ### VirtualBox.
   - ### Dbeaver.

  # **2. Criação do Projeto Lógico** 
  
  > Com a ajuda do `SQL Power Architect` podemos criar as tabelas com suas informações, construir as relações entre cada tabela e aplicar as regras de integridade.
  
  ![modelo elmasri](https://github.com/RolphFadini/uvv_bd_1_cc1m/blob/main/pset1/imgs/modelo-elmasri.png)
  
  ## **2.1 Gerando o script para os respectivos SGBDs**
  > Utilizando um atalho da própria ferramenta, é possível gerarmos um script para um determinado SGBD.
  
  
  ### **2.1.1 Gerando o [script](https://github.com/RolphFadini/uvv_bd_1_cc1m/blob/main/pset1/Script-Postgresql.sql) do PostgreSQL.**
  > O script gerado será otimizado e inserido no terminal do Linux conectado ao PostgreSQL.
  
  ![script postgresql](https://github.com/RolphFadini/uvv_bd_1_cc1m/blob/main/pset1/imgs/geraçãoscript-postgresql.png)
  
  
  ### **2.1.2 Gerando o [script](https://github.com/RolphFadini/uvv_bd_1_cc1m/blob/main/pset1/Script-Mysql.sql) do MySQL/MariaDB.**
  > O script gerado será otimizado e inserido no terminal do Linux conectado ao MySQL/MariaDB.
  
  ![script mysql/mariadb](https://github.com/RolphFadini/uvv_bd_1_cc1m/blob/main/pset1/imgs/geraçãoscriptmysql.png)
  
  
  # **3. Conectando nos SGBDs**
  > Com os scripts gerados, basta conectarmos o terminal do Linux no SGBD que quisermos gerar o banco de dados para podermos inserir o seu script.

  
  ## **3.1 Conectando ao PostgreSQL**
  > Utilizando o terminal do Linux disposto no VirtualBox.
  
  ![conectando ao postgresql](https://github.com/RolphFadini/uvv_bd_1_cc1m/blob/main/pset1/imgs/Conectando-postgres.png)
  
  
  ## **3.2 Conectando ao MySQL/MariaDB**
  > Utilizando o terminal do Linux disposto no VirtualBox.

  ![conectando ao mysql/mariadb](https://github.com/RolphFadini/uvv_bd_1_cc1m/blob/main/pset1/imgs/Conectando-mysql.png)
  
  
  # **4. Implementação dos scripts nos respectivos SGBDs**
  > Com os scripts gerados, e conectados ao sgbd de nossa escolha, basta inserirmos o seu respectivo [script](https://github.com/RolphFadini/uvv_bd_1_cc1m/tree/main/pset1) para realizarmos a criação do banco de dados do elmasri criado no projeto lógico.


  # **5. Conclusão**
  
  Após alguns dias realizando este primeiro pset pude entender um pouco melhor do que se tratava realmente um "Pset". Embora esse primeiro tenha sido uma versão mais simples e não tão complexa de ser realizada, e mesmo que tenha me dado bastante trabalho e me obrigado a estudar diversas novas tecnologias de forma autonoma, acredito que a experiência de resolver todos esses problemas sozinho e por fim conseguir ver que meu trabalho deu sim resultados validou completamente as horas perdidas para sua realização.
