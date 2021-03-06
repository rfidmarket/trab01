/* modeloLogicoComPessoaJuridica: */

CREATE TABLE FUNCIONARIO (
    cargo VARCHAR(50),
    setor VARCHAR(50),
    fk_pessoa_fisica INTEGER,
    fk_supermercado INTEGER
);

ALTER TABLE FUNCIONARIO ADD CONSTRAINT id_funcionario PRIMARY KEY (fk_pessoa_fisica);

CREATE TABLE PESSOA (
    nome VARCHAR(75),
    id SERIAL,
    numero INTEGER,
    rua VARCHAR(80),
    cep CHAR(9),
    bairro VARCHAR(50),
    estado CHAR(2),
    cidade VARCHAR(50)
);

ALTER TABLE PESSOA ADD CONSTRAINT id_pessoa PRIMARY KEY (id);

CREATE TABLE CARTAO (
    id SERIAL,
    nome_titular VARCHAR(75),
    validade DATE,
    bandeira VARCHAR(35),
    numero CHAR(16),
    tipo CHAR
);

ALTER TABLE CARTAO ADD CONSTRAINT id_cartao PRIMARY KEY (id);
ALTER TABLE CARTAO ADD CONSTRAINT numero UNIQUE (numero);

CREATE TABLE PRODUTO (
    nome VARCHAR(75),
    preco FLOAT8,
    codigo VARCHAR(85),
    descricao TEXT,
    custo FLOAT8,
    id SERIAL,
    estoque INTEGER,
    tipo VARCHAR(50),
    quant_prateleira INTEGER,
    marca VARCHAR(50),
    fk_supermercado INTEGER
);


ALTER TABLE PRODUTO ADD CONSTRAINT id_produto PRIMARY KEY (id);

CREATE TABLE SUPERMERCADO (
    longitude FLOAT8,
    latitude FLOAT8,
    unidade VARCHAR(50),
    fk_pessoa_juridica INTEGER
);

ALTER TABLE SUPERMERCADO ADD CONSTRAINT id_supermercado PRIMARY KEY (fk_pessoa_juridica);

CREATE TABLE CONTATO (
    id SERIAL,
    descricao VARCHAR(150),
    tipo VARCHAR(20),
    fk_pessoa INTEGER,
    CONSTRAINT descricao_tipo UNIQUE (descricao, tipo)
);

ALTER TABLE CONTATO ADD CONSTRAINT id_contato PRIMARY KEY (id);

CREATE TABLE HIST_COMPRA (
    timestamp TIMESTAMP,
    id SERIAL,
    fk_cartao INTEGER,
    fk_supermercado INTEGER,
    fk_cliente INTEGER
);

ALTER TABLE HIST_COMPRA ADD CONSTRAINT id_hist_compra PRIMARY KEY (id);

CREATE TABLE JURIDICA (
    cnpj CHAR(18),
    fk_pessoa INTEGER
);

ALTER TABLE JURIDICA ADD CONSTRAINT id_pessoa_juridica PRIMARY KEY (fk_pessoa); 
ALTER TABLE JURIDICA ADD CONSTRAINT cnpj UNIQUE (cnpj);

CREATE TABLE Lote (
    id SERIAL,
    data_compra DATE,
    identificador CHAR(30),
    fabricacao DATE,
    quantidade INTEGER,
    validade DATE,
    fk_fornecedor INTEGER,
    fk_produto INTEGER,
    fk_supermercado INTEGER
);

ALTER TABLE LOTE ADD CONSTRAINT id_lote PRIMARY KEY (id);
ALTER TABLE LOTE ADD CONSTRAINT numero_fk_produto UNIQUE (identificador, fk_produto);

CREATE TABLE Compra (
    id SERIAL,
    preco_compra FLOAT8,
    quant INTEGER,
    fk_produto INTEGER,
    fk_hist_compra INTEGER
);

ALTER TABLE Compra ADD CONSTRAINT id_compra PRIMARY KEY (id);

CREATE TABLE FISICA (
    login VARCHAR(150),
    data_nasc DATE,
    cpf CHAR(14),
    senha VARCHAR(255),
    fk_pessoa INTEGER,
    genero CHAR
);

ALTER TABLE FISICA ADD CONSTRAINT id_pessoa_fisica PRIMARY KEY (fk_pessoa);
ALTER TABLE FISICA ADD CONSTRAINT login UNIQUE (login);

CREATE TABLE Utiliza (
    fk_cartao INTEGER,
    fk_cliente INTEGER
);

CREATE TABLE FORNECIMENTO (
    fk_supermercado INTEGER,
    fk_fornecedor INTEGER,
    UNIQUE (fk_supermercado,fk_fornecedor)	
);
 
ALTER TABLE FUNCIONARIO ADD CONSTRAINT fk_pessoa_fisica
    FOREIGN KEY (fk_pessoa_fisica)
    REFERENCES FISICA (fk_pessoa)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE FUNCIONARIO ADD CONSTRAINT fk_supermercado
    FOREIGN KEY (fk_supermercado)
    REFERENCES SUPERMERCADO (fk_pessoa_juridica)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE PRODUTO ADD CONSTRAINT fk_supermercado
    FOREIGN KEY (fk_supermercado)
    REFERENCES SUPERMERCADO (fk_pessoa_juridica)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE SUPERMERCADO ADD CONSTRAINT fk_pessoa_juridica
    FOREIGN KEY (fk_pessoa_juridica)
    REFERENCES JURIDICA (fk_pessoa)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE CONTATO ADD CONSTRAINT fk_pessoa
    FOREIGN KEY (fk_pessoa)
    REFERENCES PESSOA (id)
    ON DELETE CASCADE ON UPDATE RESTRICT;
 
ALTER TABLE HIST_COMPRA ADD CONSTRAINT fk_cartao
    FOREIGN KEY (fk_cartao)
    REFERENCES CARTAO (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE HIST_COMPRA ADD CONSTRAINT fk_supermercado
    FOREIGN KEY (fk_supermercado)
    REFERENCES SUPERMERCADO (fk_pessoa_juridica)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE HIST_COMPRA ADD CONSTRAINT fk_cliente
    FOREIGN KEY (fk_cliente)
    REFERENCES FISICA (fk_pessoa)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE JURIDICA ADD CONSTRAINT fk_pessoa
    FOREIGN KEY (fk_pessoa)
    REFERENCES PESSOA (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Lote ADD CONSTRAINT fk_fornecedor
    FOREIGN KEY (fk_fornecedor)
    REFERENCES JURIDICA (fk_pessoa)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Lote ADD CONSTRAINT fk_produto
    FOREIGN KEY (fk_produto)
    REFERENCES PRODUTO (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Lote ADD CONSTRAINT fk_supermercado
    FOREIGN KEY (fk_supermercado)
    REFERENCES SUPERMERCADO (fk_pessoa_juridica)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Compra ADD CONSTRAINT fk_produto
    FOREIGN KEY (fk_produto)
    REFERENCES PRODUTO (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Compra ADD CONSTRAINT fk_hist_compra
    FOREIGN KEY (fk_hist_compra)
    REFERENCES HIST_COMPRA (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE FISICA ADD CONSTRAINT fk_pessoa
    FOREIGN KEY (fk_pessoa)
    REFERENCES PESSOA (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Utiliza ADD CONSTRAINT fk_cartao
    FOREIGN KEY (fk_cartao)
    REFERENCES CARTAO (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Utiliza ADD CONSTRAINT fk_cliente
    FOREIGN KEY (fk_cliente)
    REFERENCES FISICA (fk_pessoa)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE FORNECIMENTO ADD CONSTRAINT fk_supermercado
    FOREIGN KEY (fk_supermercado)
    REFERENCES SUPERMERCADO (fk_pessoa_juridica)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE FORNECIMENTO ADD CONSTRAINT fk_fornecedor
    FOREIGN KEY (fk_fornecedor)
    REFERENCES JURIDICA (fk_pessoa)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
