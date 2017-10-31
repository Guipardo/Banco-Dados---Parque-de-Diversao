insert into sexo (codSexo,nomeSexo) values (1,"M");
insert into sexo (codSexo,nomeSexo) values (2,"F");
insert into sexo (codSexo,nomeSexo) values (3,"T");
insert into sexo (codSexo,nomeSexo) values (4,"O");
insert into sexo (codSexo,nomeSexo) values (5,"B");	


insert into responsavel(codResponsavel,nomeResponsavel) values (50,"Davy Jones");
insert into responsavel(codResponsavel,nomeResponsavel) values (51,"Leon");
insert into responsavel(codResponsavel,nomeResponsavel) values (52,"Jéssica");
insert into responsavel(codResponsavel,nomeResponsavel) values (53,"Santana");
insert into responsavel(codResponsavel,nomeResponsavel) values (54,"Fausto");	


insert into brinquedo(codbrinquedo,nomeBrinquedo,capacidade) values (21,"Montanha Russa",12);
insert into brinquedo(codbrinquedo,nomeBrinquedo,capacidade) values (22,"Escalada",2);
insert into brinquedo(codbrinquedo,nomeBrinquedo,capacidade) values (23,"Elevador",20);
insert into brinquedo(codbrinquedo,nomeBrinquedo,capacidade) values (24,"Tobogã",5);
insert into brinquedo(codbrinquedo,nomeBrinquedo,capacidade) values (25,"Carrossel",15);


insert into crianca(codCrianca,codResponsavel,nomeCrianca,idadeCrianca,alturaCrianca) values (31,50,"Ana",8,120);
insert into crianca(codCrianca,codResponsavel,nomeCrianca,idadeCrianca,alturaCrianca) values (32,51,"Pedro",9,125);
insert into crianca(codCrianca,codResponsavel,nomeCrianca,idadeCrianca,alturaCrianca) values (33,52,"Paulo",12,124);
insert into crianca(codCrianca,codResponsavel,nomeCrianca,idadeCrianca,alturaCrianca) values (34,53,"Lucas",11,140);
insert into crianca(codCrianca,codResponsavel,nomeCrianca,idadeCrianca,alturaCrianca) values (35,54,"Natália",12,135);

insert into criancausabrinquedo(codCrianca,codbrinquedo,ticket) values (31,25,111);
insert into criancausabrinquedo(codCrianca,codbrinquedo,ticket) values (32,24,112);
insert into criancausabrinquedo(codCrianca,codbrinquedo,ticket) values (33,23,113);
insert into criancausabrinquedo(codCrianca,codbrinquedo,ticket) values (34,22,114);
insert into criancausabrinquedo(codCrianca,codbrinquedo,ticket) values (35,21,115);

insert into funcionario(codFuncionario,codSexo,codbrinquedo,nomeFuncionario) values (11,1,21,"Carlos");	
insert into funcionario(codFuncionario,codSexo,codbrinquedo,nomeFuncionario) values (12,2,22,"Helena");	
insert into funcionario(codFuncionario,codSexo,codbrinquedo,nomeFuncionario) values (13,3,22,"Paula");	
insert into funcionario(codFuncionario,codSexo,codbrinquedo,nomeFuncionario) values (14,4,24,"Isaias");	
insert into funcionario(codFuncionario,codSexo,codbrinquedo,nomeFuncionario) values (15,5,25,"Mandy");	


select * from sexo;
select * from brinquedo;
select * from crianca;
select * from funcionario;
select * from responsavel;
select * from criancausabrinquedo;