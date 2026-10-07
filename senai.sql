USE db_senai;

CREATE TABLE cliente(
    id_cliente INT PRIMARY KEY AUTO_INCREMENT, 
    nome_cliente VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    dt_nasc DATE NOT NULL
);

CREATE TABLE produto(
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    produto VARCHAR(100) NOT NULL,
    dt_entrega DATE NOT  NULL,
    preco DECIMAL(19, 2) NOT NULL,
    qtd INT NOT NULL
);

CREATE TABLE compra(
    id_venda INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT uk_cliente,
    id_produto INT uk_produto,
    id_cliente INT NOT NULL,
    id_produto INT NOT NULL,
    data_entrada DATE NOT NULL
);

INSERT INTO cliente(nome_cliente, email, dt_nasc);
VALUES("Michael Jackson", "m.jackson@gmail.com", "1920-03-22");

INSERT INTO cliente(nome_cliente, email, dt_nasc);
VALUES("Julião P.P", "mh.tinho@gmail.com", "1967-03-22");

INSERT INTO cliente(nome_cliente, email, dt_nasc);
VALUES("Joardson", "joardsousa@gmail.com", "20");

USE empresa;


SELECT * FROM cliente;
 
USE empresa;
 
INSERT INTO produto(produto, dt_entrega, preco, qtd)
VALUES("Notebook de11", "2026-10-05", 700, 2);

INSERT INTO produto(produto, dt_entrega, preco, qtd)
VALUES("mouse", "2026-07-09", 400, 8);

INSERT INTO produto(produto, dt_entrega, preco, qtd)
VALUES("ps5", "2026-02-07", 3000, 3);

SELECT * FROM produto;



USE empresa;

ALTER TABLE compra
ADD CONSTRAINT fk_compra_cliente
FOREIGN KEY (id_cliente)
REFERENCES cliente (id_cliente);

ALTER TABLE CLIENTE 
ADD CONSTRAINT uk_email_unico UNIQUE(email);


ALTER TABLE 
ADD CONSTRAINT uk_produto_unico UNIQUE(nome_produto);


ALTER TABLE 
ADD CONSTRAINT uk_cliente_unico UNIQUE(email_cliente)


USE db_senai;
 
INSERT INTO compra( id_cliente, id_produto, data_entrada);
VALUES(1,1,2,"2026-09-25");

INSERT INTO compra( id_cliente, id_produto, data_entrada);
VALUES(3,2,1,"2022-07-24");

INSERT INTO compra( id_cliente, id_produto, data_entrada);
VALUES(2,3,3,"2002-11-23");

