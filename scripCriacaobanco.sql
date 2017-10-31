CREATE TABLE sexo (
  codSexo INTEGER   NOT NULL,
  nomeSexo VARCHAR(1),
PRIMARY KEY(codSexo));


CREATE TABLE responsavel (
  codResponsavel INTEGER   NOT NULL,
  nomeResponsavel VARCHAR(50),
PRIMARY KEY(codResponsavel));


CREATE TABLE brinquedo (
  codbrinquedo INTEGER   NOT NULL,
  nomeBrinquedo VARCHAR(50),
  capacidade INTEGER,
PRIMARY KEY(codbrinquedo));


CREATE TABLE Crianca (
  codCrianca INTEGER   NOT NULL,
  codResponsavel INTEGER   NOT NULL,
  nomeCrianca VARCHAR(50),
  idadeCrianca INTEGER,
  alturaCrianca INTEGER,
PRIMARY KEY(codCrianca),
  FOREIGN KEY(codResponsavel)
    REFERENCES responsavel(codResponsavel)
      ON DELETE CASCADE
      ON UPDATE CASCADE);


CREATE TABLE criancaUsaBrinquedo (
  codCrianca INTEGER   NOT NULL,
  codbrinquedo INTEGER   NOT NULL,
  ticket INTEGER(20),
PRIMARY KEY(codCrianca, codbrinquedo),
  FOREIGN KEY(codCrianca)
    REFERENCES Crianca(codCrianca),
  FOREIGN KEY(codbrinquedo)
    REFERENCES brinquedo(codbrinquedo));


CREATE TABLE funcionario (
  codFuncionario INTEGER   NOT NULL,
  codSexo INTEGER   NOT NULL,
  codbrinquedo INTEGER   NOT NULL,
  nomeFuncionario VARCHAR(50),
PRIMARY KEY(codFuncionario),
  FOREIGN KEY(codbrinquedo)
    REFERENCES brinquedo(codbrinquedo)
      ON DELETE CASCADE
      ON UPDATE CASCADE,
  FOREIGN KEY(codSexo)
    REFERENCES sexo(codSexo));