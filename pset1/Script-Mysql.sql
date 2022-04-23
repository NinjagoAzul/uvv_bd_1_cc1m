/*Essa primeira etapa deve ser feita comando por comando pois é preciso primeiro abrir o terminal do linux e se conectar ao sgbd mariadb/mysql*/

mysql -u root -p
computacao@raiz

create user 'rolph'@'localhost' identified by '123456';
grant all on uvv.* to 'rolph'@'localhost';

system mysql -u rolph -p
123456

/*Jogar todos os comandos seguintes ja no terminal do mariadb/mysql*/

create database uvv;
use uvv;


create table funcionario (
                cpf char(11) not null,
                primeiro_nome varchar(15) not null,
                nome_meio char(1),
                ultimo_nome varchar(15) not null,
                data_nascimento date,
                endereco varchar(50),
                sexo char(1),
                salario decimal(10,2),
                cpf_supervisor char(11) not null,
                numero_departamento int not null,
                primary key (cpf)
);

alter table funcionario comment 'tabela que armazenará as informações dos funcionários.';


create table departamento (
                numero_departamento int not null,
                nome_departamento varchar(15) not null,
                cpf_gerente char(11) not null,
                data_inicio_gerente date,
                primary key (numero_departamento)
);

alter table departamento comment 'tabela que armazenará as informaçoẽs dos departamentos.';


create unique index departamento_idx
 on departamento
 ( nome_departamento );

create table  localizacoes_departamento (
                numero_departamento int not null,
                local varchar(15) not null,
                primary key (numero_departamento, local)
);

alter table  localizacoes_departamento comment 'tabela que armazenará localizações de cada departamento.';


create table projeto (
                numero_projeto int not null,
                nome_projeto varchar(15) not null,
                local_projeto varchar(15),
                numero_departamento int not null,
                primary key (numero_projeto)
);

alter table projeto comment 'tabela que armazenará as informações sobre os projetos de cada departamento.';


create unique index projeto_idx
 on projeto
 ( nome_projeto );

create table trabalha_em (
                cpf_funcionario char(11) not null,
                numero_projeto_trabalha_em int not null,
                horas decimal(3,1) not null,
                primary key (cpf_funcionario, numero_projeto_trabalha_em)
);

alter table trabalha_em comment 'tabela para armazenará quais funcionários trabalham em quais projetos. ';


create table dependente (
                cpf_funcionario char(11) not null,
                nome_dependente varchar(15) not null,
                sexo char(1),
                data_nascimento date,
                parentesco varchar(15),
                primary key (cpf_funcionario, nome_dependente)
);

alter table dependente comment 'tabela que armazenará as informações dos dependentes dos funcionários.';


alter table dependente add constraint funcionario_dependente_fk
foreign key (cpf_funcionario)
references funcionario (cpf)
on delete no action
on update no action;

alter table trabalha_em add constraint funcionario_trabalha_em_fk
foreign key (cpf_funcionario)
references funcionario (cpf)
on delete no action
on update no action;

alter table departamento add constraint funcionario_departamento_fk
foreign key (cpf_gerente)
references funcionario (cpf)
on delete no action
on update no action;

alter table funcionario add constraint funcionario_funcionario_fk
foreign key (cpf_supervisor)
references funcionario (cpf)
on delete no action
on update no action;

alter table projeto add constraint departamento_projeto_fk
foreign key (numero_departamento)
references departamento (numero_departamento)
on delete no action
on update no action;

alter table  localizacoes_departamento add constraint departamento_localizacoes_departamento_fk
foreign key (numero_departamento)
references departamento (numero_departamento)
on delete no action
on update no action;

alter table trabalha_em add constraint projeto_trabalha_em_fk
foreign key (numero_projeto_trabalha_em)
references projeto (numero_projeto)
on delete no action
on update no action;

insert into funcionario values
(88866555576, 'Jorge', 'E', 'Brito', '1937-11-10', 'Rua do Horto, 35, São Paulo, SP', 'M', 55000, 88866555576, 1),
(33344555587, 'Fernando', 'T', 'Wong', '1955-12-08', 'Rua da Lapa, 34, São Paulo, SP', 'M', 40000, 88866555576, 5),
(12345678966, 'João', 'B', 'Silva', '1965-01-09', 'Rua das Flores, 751, São Paulo, SP', 'M', 30000, 33344555587, 5),
(66688444476, 'Ronaldo', 'K', 'Lima', '1962-09-15', 'Rua Rebouças, 65, Piracicaba, SP', 'M', 38000, 33344555587, 5),
(45345345376, 'Joice', 'A', 'Leite', '1972-07-31', 'Av. Lucas Obes, 74, São Paulo, SP', 'F', 25000, 33344555587, 5),
(98765432168, 'Jennifer', 'S', 'Souza', '1941-06-20', 'Av. Arthur de lima, 54, Santo André, SP', 'F', 43000, 88866555576, 4),
(99988777767, 'Alice', 'J', 'Zelaya', '1968-01-19', 'Rua Souza Lima, 35, Curitiba, PR', 'F', 25000, 98765432168, 4),
(98798798733, 'André', 'V', 'Pereira', '1969-03-29', 'Rua Timbira, 35, São Paulo, SP', 'M', 25000, 98765432168, 4);

insert into departamento values
(1, 'Matriz', 88866555576, '1981-06-19'),
(5, 'Pesqusia', 33344555587, '1988-05-22'),
(4, 'Administração', 98765432168, '1995-01-01');

insert into localizacoes_departamento values
(1, 'São Paulo'),
(4, 'Mauá'),
(5, 'Santo André'),
(5, 'Itu'),
(5, 'São Paulo');

insert into projeto values
(1, 'ProdutoX', 'Santo André', 5),
(2, 'ProdutoY', 'Itu', 5),
(3, 'ProdutoZ', 'São Paulo', 5),
(10, 'Informatização', 'Mauá', 4),
(20, 'Reorganização', 'São Paulo', 1),
(30, 'Novosbenefícios', 'Mauá', 4);

insert into dependente values
(33344555587, 'Alicia', 'F', '1986-04-05', 'filha'),
(33344555587, 'Tiago', 'M', '1983-10-25', 'filho'),
(33344555587, 'Janaína', 'F', '1958-05-03', 'esposa'),
(98765432168, 'Antonio', 'M', '1942-02-28', 'marido'),
(12345678966, 'Michael', 'M', '1988-01-04', 'filho'),
(12345678966, 'Alicia', 'F', '1988-12-30', 'filha'),
(12345678966, 'Elizabeth', 'F', '1967-05-05', 'esposa');

insert into trabalha_em values
(12345678966, 1, 32.5),
(12345678966, 2, 7.5),
(66688444476, 3, 40),
(45345345376, 1, 20),
(45345345376, 2, 20),
(33344555587, 2, 10),
(33344555587, 3, 10),
(33344555587, 10, 10),
(33344555587, 20, 10),
(99988777767, 30, 30),
(99988777767, 10, 10),
(98798798733, 10, 35),
(98798798733, 30, 5),
(98765432168, 30, 20),
(98765432168, 20, 15),
(88866555576, 20, 0);
