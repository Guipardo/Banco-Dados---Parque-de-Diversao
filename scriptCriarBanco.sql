DROP TABLE criancaUsaBrinquedo;
DROP TABLE crianca;
DROP TABLE responsavel;
DROP TABLE funcionario;
DROP TABLE brinquedo;
DROP TABLE cargo;

CREATE TABLE responsavel (
  codResponsavel INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  nomeResponsavel VARCHAR(50)  NULL    ,
PRIMARY KEY(codResponsavel));

CREATE TABLE cargo (
  codCargo INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  nomeCargo VARCHAR(50)  NULL    ,
PRIMARY KEY(codCargo));

CREATE TABLE brinquedo (
  codbrinquedo INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  nomeBrinquedo VARCHAR(50)  NULL  ,
  capacidade INTEGER UNSIGNED  NULL    ,
PRIMARY KEY(codbrinquedo));

CREATE TABLE Crianca (
  codCrianca INTEGER UNSIGNED  NOT NULL AUTO_INCREMENT,
  codResponsavel INTEGER UNSIGNED  NOT NULL  ,
  nomeCrianca VARCHAR(50)  NULL ,
  idadeCrianca INTEGER UNSIGNED  NULL  ,
  alturaCrianca INTEGER UNSIGNED  NULL    ,
  PRIMARY KEY(codCrianca),
  FOREIGN KEY(codResponsavel)
    REFERENCES responsavel(codResponsavel)
      ON DELETE CASCADE
      ON UPDATE CASCADE);

CREATE TABLE funcionario (
  codFuncionario INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  codCargo INTEGER UNSIGNED NOT NULL  ,
  codbrinquedo INTEGER UNSIGNED  NOT NULL  ,
  nomeFuncionario VARCHAR(50)  NULL  ,
  sexo VARCHAR(1)  NULL,
PRIMARY KEY(codFuncionario),
  FOREIGN KEY(codbrinquedo)
    REFERENCES brinquedo(codbrinquedo)
      ON DELETE CASCADE
      ON UPDATE CASCADE,
  FOREIGN KEY(codCargo)
    REFERENCES cargo(codCargo)
      ON DELETE CASCADE
      ON UPDATE CASCADE);

CREATE TABLE criancaUsaBrinquedo (
  codCrianca INTEGER UNSIGNED  NOT NULL  ,
  codbrinquedo INTEGER UNSIGNED  NOT NULL  ,
  ticket INTEGER(20) UNSIGNED  NULL    ,
PRIMARY KEY(codCrianca, codbrinquedo)  ,
  FOREIGN KEY(codCrianca)
    REFERENCES Crianca(codCrianca)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(codbrinquedo)
    REFERENCES brinquedo(codbrinquedo)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);