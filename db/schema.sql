-- CRIA USUÁRIO
-- GRANT ALL PRIVILEGES ON carros.* TO 'carros'@'localhost' IDENTIFIED BY 'carros';
DROP DATABASE IF EXISTS carros;

CREATE DATABASE carros DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;

USE carros

CREATE TABLE acesso (
    id INT NOT NULL AUTO_INCREMENT,
	acesso CHAR(16) NOT NULL,
	PRIMARY KEY(id)
)ENGINE=InnoDB;

CREATE TABLE usuarios (
	id INT NOT NULL AUTO_INCREMENT,
    acessoId INT NOT NULL,
	nome CHAR(64) NOT NULL,
	email CHAR(64) NOT NULL,
	senha CHAR(32) NULL,
	ativo INT(1) NOT NULL,
	PRIMARY KEY(id)
)ENGINE=InnoDB;

CREATE TABLE carro_tipo (
	id INT NOT NULL AUTO_INCREMENT, 
	tipo CHAR(32) NOT NULL,
	PRIMARY KEY(id)
)ENGINE=InnoDB;

CREATE TABLE carros (
	id INT NOT NULL AUTO_INCREMENT,
	modelo CHAR(32) NOT NULL,
	ano CHAR(32) NOT NULL, 
	placa CHAR(32) NOT NULL,
	PRIMARY KEY(id)
)ENGINE=InnoDB;

ALTER TABLE usuarios
ADD FOREIGN KEY fk_usuarios_acesso(acessoId)
REFERENCES acesso(id)
ON DELETE RESTRICT;

-- INSERTS
INSERT INTO acesso (acesso) VALUES ('administrador');
INSERT INTO acesso (acesso) VALUES ('comum');

INSERT INTO carro_tipo (tipo) VALUES ('Black');
INSERT INTO carro_tipo (tipo) VALUES ('Select Bag');
INSERT INTO carro_tipo (tipo) VALUES ('X');
