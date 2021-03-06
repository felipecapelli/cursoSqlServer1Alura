USE [SUCOS_VENDAS]

CREATE DATABASE SUCOS_VENDAS;

CREATE DATABASE SUCOS_VENDAS_02
ON (NAME=SUCO_VENDAS_DATA, FILENAME = 'C:\Users\felip\Desktop\CURSOS ALURA\SQL_SERVER_1.MDF', SIZE=10, MAXSIZE=50, FILEGROWTH=5)
LOG ON (NAME=SUCOS_VENDAS_LOG, FILENAME = 'C:\Users\felip\Desktop\CURSOS ALURA\SQL_SERVER_1.LDF', SIZE=10, MAXSIZE=50, FILEGROWTH=5);

DROP DATABASE SUCOS_VENDAS;

CREATE TABLE [TABELA DE CLIENTES]
(
	[CPF] [VARCHAR] (11),
	[NOME] [VARCHAR] (100),
	[ENDERECO 1] [VARCHAR](150),
	[ENDERECO 2] [VARCHAR](150),
	[BAIRRO] [VARCHAR](50),
	[CIDADE] [VARCHAR](50),
	[ESTADO] [VARCHAR] (2),
	[CEP] [VARCHAR] (8),
	[DATA DE NASCIMENTO] [DATE],
	[IDADE] [SMALLINT],
	[SEXO] [VARCHAR] (1),
	[LIMITE DE CREDITO] [MONEY],
	[VOLUME DE COMPRA] [FLOAT],
	[PRIMEIRA COMPRA] [BIT]
);

CREATE TABLE [TABELA DE VENDEDORES](
	[MATRICULA] [VARCHAR](5),
	[NOME] [VARCHAR](100),
	[PERCENTUAL COMISS�O] FLOAT,
	[DATA ADMISS�O] DATE,
	[DE FERIAS] BIT
);

DROP TABLE [TABELA DE VENDEDORES];

 
INSERT INTO [TABELA DE PRODUTOS]
([CODIGO DO PRODUTO], [NOME DO PRODUTO], [EMBALAGEM], [TAMANHO], [SABOR], [PRE�O DE LISTA])
VALUES 
('1040107', 'light - 350 ml - Mel�ncia', 'lata', '350ml', 'Melancia', 4.56);

INSERT INTO [TABELA DE PRODUTOS]
([CODIGO DO PRODUTO], [NOME DO PRODUTO], [EMBALAGEM], [TAMANHO], [SABOR], [PRE�O DE LISTA])
VALUES
('1037797','Clean - 2 Litros - Laranja', 'PET', '2 Litros', 'Laranja', 16.01)

INSERT INTO [TABELA DE PRODUTOS]
([CODIGO DO PRODUTO], [NOME DO PRODUTO], [EMBALAGEM], [TAMANHO], [SABOR], [PRE�O DE LISTA])
VALUES
('1000889','Sabor da Montanha - 700 ml - Uva', 'Garrafa', '700 ml', 'Uva', 6.31)


INSERT INTO[TABELA DE VENDEDORES]
([MATRICULA], [NOME], [PERCENTUAL COMISS�O])
VALUES
('00233', 'Jos� Geraldo da Fonseca', 0.10);


INSERT INTO[TABELA DE VENDEDORES]
([MATRICULA], [NOME], [PERCENTUAL COMISS�O])
VALUES
('00235', 'M�rcio Almeida Silva', 0.08);

INSERT INTO[TABELA DE VENDEDORES]
([MATRICULA], [NOME], [PERCENTUAL COMISS�O])
VALUES
('00236', 'Cl�udia Morais', 0.08);


UPDATE [TABELA DE PRODUTOS] SET
[EMBALAGEM] = 'LATA',
[PRE�O DE LISTA] = 2.46
WHERE [CODIGO DO PRODUTO] = '544931';

UPDATE [TABELA DE PRODUTOS] SET
[EMBALAGEM] = 'Garrafa'
WHERE [CODIGO DO PRODUTO] = '1078680'

update [TABELA DE VENDEDORES] SET
[PERCENTUAL COMISS�O] = 0.11
WHERE [MATRICULA] = '00238'

UPDATE [TABELA DE VENDEDORES] SET
[NOME] = 'Jos� Geraldo da Fonseca Junior'
WHERE [MATRICULA] = '00233';

DELETE FROM [TABELA DE PRODUTOS]
WHERE [CODIGO DO PRODUTO] = '1088126';

DELETE FROM [TABELA DE VENDEDORES]
WHERE [MATRICULA] = '00233';



ALTER TABLE [TABELA DE PRODUTOS]
ALTER COLUMN [CODIGO DO PRODUTO]
VARCHAR(10) NOT NULL;

ALTER TABLE [TABELA DE PRODUTOS]
ADD CONSTRAINT PK_PRODUTOS
PRIMARY KEY CLUSTERED ([CODIGO DO PRODUTO])

ALTER TABLE [TABELA DE VENDEDORES]
ALTER COLUMN [MATRICULA]
VARCHAR(5) NOT NULL;

ALTER TABLE [TABELA DE VENDEDORES]
ADD CONSTRAINT PK_VENDEDORES
PRIMARY KEY CLUSTERED([MATRICULA]);

ALTER TABLE [TABELA DE CLIENTES]
ALTER COLUMN [CPF]
VARCHAR(11) NOT NULL;

ALTER TABLE [TABELA DE CLIENTES]
ADD CONSTRAINT PK_CLIENTES
PRIMARY KEY CLUSTERED([CPF]);

INSERT INTO [dbo].[TABELA DE CLIENTES]
           ([CPF]
           ,[NOME]
           ,[ENDERECO 1]
           ,[ENDERECO 2]
           ,[BAIRRO]
           ,[CIDADE]
           ,[ESTADO]
           ,[CEP]
           ,[DATA DE NASCIMENTO]
           ,[IDADE]
           ,[SEXO]
           ,[LIMITE DE CREDITO]
           ,[VOLUME DE COMPRA]
           ,[PRIMEIRA COMPRA])
     VALUES
           ('12345678963',
           'JO�O DA SILVA',
           'RUA PROJETADA A, NUMERO 10',
           '',
           'CENTRO',
           'RIO DE JANEIRO',
           'RJ',
           '16650000',
           '1990-10-25',
           27,
           'M',
           120000.50,
           1000,
           1);

INSERT INTO [TABELA DE VENDEDORES]
([MAtRICULA], [NOME], [DATA ADMISS�O], [PERCENTUAL COMISS�O], [DE FERIAS])
VALUES
('00235','M�rcio Almeida Silva','2014-08-15',0.08,0)

INSERT INTO [TABELA DE VENDEDORES]
([MAtRICULA], [NOME], [DATA ADMISS�O], [PERCENTUAL COMISS�O], [DE FERIAS])
VALUES
('00236','Cl�udia Morais','2013-09-17',0.08,1)

INSERT INTO [TABELA DE VENDEDORES]
([MAtRICULA], [NOME], [DATA ADMISS�O], [PERCENTUAL COMISS�O], [DE FERIAS])
VALUES
('00237','Roberta Martins','2017-03-18',0.11,1)

INSERT INTO [TABELA DE VENDEDORES]
([MAtRICULA], [NOME], [DATA ADMISS�O], [PERCENTUAL COMISS�O], [DE FERIAS])
VALUES
('00238','Pericles Alves','2016-08-21',0.11,0)

SELECT [CPF]
      ,[NOME]
      ,[ENDERECO 1]
      ,[ENDERECO 2]
      ,[BAIRRO]
      ,[CIDADE]
      ,[ESTADO]
      ,[CEP]
      ,[DATA DE NASCIMENTO]
      ,[IDADE]
      ,[SEXO]
      ,[LIMITE DE CREDITO]
      ,[VOLUME DE COMPRA]
      ,[PRIMEIRA COMPRA]
  FROM [TABELA DE CLIENTES]

  SELECT * FROM [TABELA DE CLIENTES];


  SELECT [CPF],[NOME] FROM [TABELA DE CLIENTES];

  SELECT [NOME], [CPF] AS IDENTIFICADOR FROM [TABELA DE CLIENTES];

  SELECT [NOME], [MATRICULA] FROM [TABELA DE VENDEDORES];

  SELECT * FROM [TABELA DE PRODUTOS] WHERE [CODIGO DO PRODUTO] = '1000889';

  SELECT * FROM [TABELA DE PRODUTOS] WHERE [SABOR] = 'Uva';

  SELECT * FROM [TABELA DE PRODUTOS] WHERE [SABOR] = 'Lim�o';

  DELETE FROM [TABELA DE PRODUTOS] WHERE [SABOR] = 'Lim�o';

  SELECT * FROM [TABELA DE VENDEDORES] WHERE [NOME] = 'CL�UDIA MORAIS';

  SELECT * FROM[TABELA DE PRODUTOS] WHERE [PRE�O DE LISTA] = 4.555;

  SELECT * FROM[TABELA DE PRODUTOS] WHERE [PRE�O DE LISTA] > 10;

  SELECT * FROM[TABELA DE PRODUTOS] WHERE [PRE�O DE LISTA] < 10;

  SELECT * FROM[TABELA DE PRODUTOS] WHERE [PRE�O DE LISTA] <= 4.555;

  SELECT * FROM[TABELA DE PRODUTOS] WHERE [PRE�O DE LISTA] >= 4.555;

  SELECT * FROM[TABELA DE PRODUTOS] WHERE [EMBALAGEM] = 'LATA';

  SELECT * FROM[TABELA DE PRODUTOS] WHERE [EMBALAGEM] > 'LATA';

  SELECT * FROM[TABELA DE PRODUTOS] WHERE [EMBALAGEM] >= 'LATA';

  SELECT * FROM[TABELA DE PRODUTOS] WHERE [EMBALAGEM] <> 'LATA';

  SELECT * FROM[TABELA DE PRODUTOS] WHERE [PRE�O DE LISTA] <> 4.555;

  SELECT * FROM [TABELA DE VENDEDORES] WHERE [PERCENTUAL COMISS�O] > 0.1;

  SELECT * FROM [TABELA DE CLIENTES] WHERE [DATA DE NASCIMENTO] = '1995-09-11';

  SELECT * FROM [TABELA DE CLIENTES] WHERE [DATA DE NASCIMENTO] > '1995-09-11';

  SELECT * FROM [TABELA DE CLIENTES] WHERE [DATA DE NASCIMENTO] >= '1995-09-11';

  SELECT * FROM [TABELA DE CLIENTES] WHERE [DATA DE NASCIMENTO] <= '1995-09-11';

  SELECT * FROM [TABELA DE CLIENTES] WHERE YEAR([DATA DE NASCIMENTO]) = 1995;

  SELECT * FROM [TABELA DE CLIENTES] WHERE YEAR([DATA DE NASCIMENTO]) < 1995;

  SELECT * FROM [TABELA DE CLIENTES] WHERE MONTH([DATA DE NASCIMENTO]) < 9;

  SELECT * FROM [TABELA DE CLIENTES] WHERE DAY([DATA DE NASCIMENTO]) = 11;

  SELECT * FROM [TABELA DE VENDEDORES] WHERE YEAR([DATA ADMISS�O]) >= 2016;