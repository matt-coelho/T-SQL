CREATE TABLE Unidade (
  codigoUnid INTEGER  NOT NULL   IDENTITY ,
  sigla VARCHAR(10)    ,
  descricao VARCHAR(35)      ,
PRIMARY KEY(codigoUnid));
GO



CREATE TABLE Conferente (
  codigoConf INTEGER  NOT NULL   IDENTITY ,
  nome VARCHAR(45)  NOT NULL  ,
  contato VARCHAR(40)      ,
PRIMARY KEY(codigoConf));
GO



CREATE TABLE Cliente (
  codigoCli INTEGER  NOT NULL   IDENTITY ,
  sobrenome VARCHAR(20)    ,
  nome VARCHAR(20)    ,
  sexo CHAR    ,
  cidade VARCHAR(27)   DEFAULT 'Belo Horizonte' ,
  estado CHAR(2)   DEFAULT 'MG' ,
  situacao CHAR    ,
  pontuacao INTEGER    ,
  cpf BIGINT      ,
PRIMARY KEY(codigoCli));
GO


alter table Cliente add CONSTRAINT cpfC UNIQUE (cpf);
alter table Cliente add CONSTRAINT sexoC CHECK (sexo IN ('F', 'M'));
alter table Cliente add CONSTRAINT pontuacaoC CHECK (pontuacao>0 and pontuacao<10);
alter table Cliente add CONSTRAINT situacaoC CHECK (situacao IN ('A', 'I'));

GO



CREATE TABLE Produto (
  codigoPro INTEGER  NOT NULL   IDENTITY ,
  codigoUnid INTEGER  NOT NULL  ,
  descricao VARCHAR(60)  NOT NULL  ,
  quantidade INTEGER    ,
  minimo INTEGER    ,
  maximo INTEGER    ,
  valorProduto DECIMAL(10,2)      ,
PRIMARY KEY(codigoPro),
  FOREIGN KEY(codigoUnid)
    REFERENCES Unidade(codigoUnid));
GO


alter table Produto add CONSTRAINT minimoC CHECK (minimo>0);
alter table Produto add CONSTRAINT maximoC CHECK (maximo>0);
alter table Produto add CONSTRAINT quantidadeC CHECK (quantidade>0);
alter table Produto add CONSTRAINT valorProdutoC CHECK (valorProduto>0);

GO



CREATE TABLE Pedido (
  numeroPed INTEGER  NOT NULL   IDENTITY ,
  codigoConf INTEGER  NOT NULL  ,
  codigoCli INTEGER  NOT NULL  ,
  data DATETIME    ,
  obs VARCHAR(50)    ,
  valorTotal DECIMAL(10,2)      ,
PRIMARY KEY(numeroPed),
  FOREIGN KEY(codigoCli)
    REFERENCES Cliente(codigoCli),
  FOREIGN KEY(codigoConf)
    REFERENCES Conferente(codigoConf));
GO


alter table Pedido add CONSTRAINT valotTotalC CHECK (valorTotal>0);

GO



CREATE TABLE ItemPedido (
  numeroItem INTEGER  NOT NULL   IDENTITY ,
  codigoPro INTEGER  NOT NULL  ,
  numeroPed INTEGER  NOT NULL  ,
  valor DECIMAL(10,2)    ,
  quantidade INTEGER    ,
  desconto DECIMAL(10,2)      ,
PRIMARY KEY(numeroItem),
  FOREIGN KEY(numeroPed)
    REFERENCES Pedido(numeroPed),
  FOREIGN KEY(codigoPro)
    REFERENCES Produto(codigoPro));
GO


alter table ItemPedido add CONSTRAINT quantidadeItemC CHECK (quantidade>0);

GO




