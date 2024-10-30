create database db_clinica_fabricio;

use db_clinica_fabricio;

create table tb_medico (
	CRM int not null,
	Nome varchar(40) not null,
	primary key(CRM)
);

create table tb_paciente (
	ID int not null auto_increment,
	Nome varchar(40) not null,
	primary key(ID) 
);

create table tb_consulta (
	CRM int not null,
	ID int not null,
	primary key (CRM,ID),
	foreign key (CRM) references tb_medico(CRM),
	foreign key (ID) references tb_paciente(ID) 
);

ALTER TABLE tb_paciente ADD Sexo ENUM ('F','M');
ALTER TABLE tb_paciente CHANGE NOME NOME_PAC VARCHAR (100);
ALTER TABLE tb_medico CHANGE NOME NOME_MED VARCHAR (100);

insert tb_medico values (1010,'Diego');
insert tb_medico values (1011,'Diogo');
insert tb_medico values (1012,'José Maria');

select * from tb_medico;

INSERT tb_paciente VALUES (NULL, 'ANA', 'F');
INSERT tb_paciente VALUES (NULL, 'BRUNA', 'F');
INSERT tb_paciente VALUES (NULL, 'DAVI', 'M');
INSERT tb_paciente VALUES (NULL, 'ROBSON', 'M');
INSERT tb_paciente VALUES (NULL, 'EMERSON', 'M');

SELECT * FROM tb_paciente;

ALTER TABLE tb_consulta add data_consulta date;

insert tb_consulta values (1012,4,'2024-11-03');
insert tb_consulta values (1012,3,'2024-11-03');
insert tb_consulta values (1011,2,'2024-11-03');
insert tb_consulta values (1010,5,'2024-11-03');

select * from tb_consulta;

select nome_pac from tb_paciente order by nome_pac;

select nome_med from tb_medico order by nome_med;

select nome_pac from tb_paciente where sexo='f' order by nome_pac;

select * from tb_paciente where sexo='M' order by nome_pac;


