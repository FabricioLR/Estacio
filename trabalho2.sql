create database AcdnRentalCar;

use AcdnRentalCar;

create table sedes (
    id int(10) not null auto_increment,
    nome varchar(50) not null,
    endereco varchar(80) not null,
    telefone varchar(20) not null,
    nomeGerente varchar(50) not null,
    multa float(8,2) not null,
    primary key (id)
);

create table carros (
    id int(10) not null auto_increment,
    placa varchar(10) not null,
    modelo varchar(40) not null,
    ano varchar(9) not null,
    cor varchar(20) not null,
    quilometragem float(8,2) not null,
    descricao varchar(100) not null,
    situacao varchar(30) not null,
    origemCarro int(10) not null,
    localizacaoCarro int(10) not null,
    classeCarro int(10) not null,
    primary key (id)
);


create table classesCarro (
    id int(10) not null auto_increment,
    nome varchar(20) not null,
    valorDiaria float(8,2) not null,
    primary key (id)
);

create table clientes (
    id int(10) not null auto_increment,
    nome varchar(50) not null,
    cnh varchar(20) not null,
    validadeCnh DATE not null,
    categoriaCnh varchar(3) not null,
    primary key (id)
);

create table reservas (
    numero int(10) not null auto_increment,
    diarias int(10) not null,
    dataLocacao DATE not null,
    dataRetorno DATE,
    quilometrosRodados float(8,2),
    multa float(8,2),
    situacao varchar(15) not null,
    total float(8,2),
    carro_reserva int(10) not null,
    cliente_reserva int(10) not null,
    sedeLocacao int(10) not null,
    sedeDevolucao int(10) not null,
    primary key (numero)
);


ALTER TABLE `carros` ADD CONSTRAINT `fk_sedesOrigem` FOREIGN KEY (`origemCarro`) REFERENCES `sedes` (`id`);

ALTER TABLE `carros` ADD CONSTRAINT `fk_sedesLocAtual` FOREIGN KEY (`localizacaoCarro`) REFERENCES `sedes` (`id`);

ALTER TABLE `reservas` ADD CONSTRAINT `fk_sedesLocacao` FOREIGN KEY (`sedeLocacao`) REFERENCES `sedes` (`id`);

ALTER TABLE `reservas` ADD CONSTRAINT `fk_sedesDevolucao` FOREIGN KEY (`sedeDevolucao`) REFERENCES `sedes` (`id`);

ALTER TABLE `carros` ADD CONSTRAINT `fk_classes` FOREIGN KEY (`classeCarro`) REFERENCES `classesCarro` (`id`);

ALTER TABLE `reservas` ADD CONSTRAINT `fk_carros` FOREIGN KEY (`carro_reserva`) REFERENCES `carros` (`id`);

ALTER TABLE `reservas` ADD CONSTRAINT `fk_clientes` FOREIGN KEY (`cliente_reserva`) REFERENCES `clientes` (`id`);
