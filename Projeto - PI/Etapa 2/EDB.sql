drop database EBD;
create database EBD;
use EBD;

create table Equipe_EBD(
idEquipe_EBD int (4) auto_increment not null,
Nome_da_Equipe varchar (70) not null,


primary key (idEquipe_EBD)
);

insert into Equipe_EBD(Nome_da_Equipe)
value ('EBD mais que vencedores');

create table cargos (
idCargos int (4) auto_increment not null,
NomeDoCargo varchar (70) not null,

primary key (idcargos)
);
 insert into cargos(NomeDoCargo)
 value('professor'),
 ('coordenador'),
 ('diretor'),
 ('aluno');
 
 create table pessoas_cargos(
 idpessoas_cargos int auto_increment not null,
 idpessoas int not null,
 idCargos int not null,
 
 foreign key (idpessoas) references pessoas (idpessoas),
 foreign key (idCargos) references  cargos(idCargos),
 primary key (idpessoas_cargos)
 );

insert into pessoas_cargos(idpessoas,idCargos)
value 
#alunos
(1,4),
(2,4),
(3,4),
(4,4),
(5,4),
(6,4),
(7,4),
(8,4),
(9,4),
(10,4),
(11,4),
(12,4),
(13,4),
(14,4),
(15,4),
(16,4),
(17,4),
(18,4),
(19,4),
(20,4),
(21,4),
(22,4),
(23,4),
(24,4),
(25,4),
(26,4),
(27,4),
(28,4),
(29,4),
(30,4),
(31,4),
(32,4),
(33,4),
(34,4),
(35,4),
(36,4),
(37,4),
(38,4),
(39,4),
(40,4),
(41,4),
(42,4),
(43,4),
(44,4),
(45,4),
(46,4),
(47,4),
(48,4),
(49,4),
(50,4),
(51,1),
(52,1),
(53,1),
(54,1),
(55,1),
(56,1),
(57,1),
(58,1),
(59,1),
(60,1),
(61,1),
(62,1),
(63,1),
(64,1),
(65,1),
(66,3),
(67,3),
(68,3),
(69,2),
(70,2),
(71,2);

create table pessoas(
idpessoas int (4) auto_increment not null,
Nome varchar (70) not null,

primary key (idpessoas)
);

insert into pessoas(nome)
value

#alunos
('Túlio Gomes'),
('Júnior Justino'),
('André Damasceno'),
('Juliano Barbosa'),
('Alfredo Álvarez'),
('Danilo Ximenes'),
('Marcos Morais'),
('Jurandir Menezes'),
('Nicolas Saraiva'),
('Arnaldo Tavares'),
('Manoel Maciel'),
('Fabrício Quintana'),
('Daiana Damasceno'),
('Simone Gomes'),
('Laís Quadros'),
('Iolanda Velho'),
('Nina Nogueira'),
('Paloma Bitencourt'),
('Edna Alencar'),
('Letícia Machado'),
('Ana Menezes'),
('Carolina Fontana'),
('Talita Borba'),
('Solange Cruz'),
('Melissa Campos'),
('Olívia Sanches'),
('Joana Morais'),
('Antonieta Pinto'),
('Aline Campos'),
('Odete Moreira'),
('Simone Coelho'),
('Danila Cordeiro'),
('Sandra Leite'),
('Lúcio Duarte'),
('Álvaro Lourenço'),
('Estevão Teixeira'),
('Frederico Castilho'),
('Saulo Justo'),
('Sebastião Madruga'),
('Francisco Rodrigues'),
('César Álves'),
('Caio Belchior'),
('Vinícius Brandão'),
('Michel Zanetti'),
('Mateus Justo'),
('Julio Assis'),
('Marcos Vargas'),
('Rosa Nakamura'),
('Olga Lobo'),
('Valentina Kanashiro'),
#professores 
('Fabiane Padilha'),
('Janice Alves'),
('Patrícia Yamada'),
('Sílvia Castilho'),
('Maria Higashi'),
('Antonieta Nazário'),
('João Barros'),
('Diego Fonseca'),
('Samuel Vasconcelos'),
('Adriano Araújo'),
('Mário Neves'),
('Sebastião Bosco'),
('Andressa Guimarães'),
('Luciana Ambrósio'),
('Elis Brandão'),
#diretores
('Beatriz Alves'),
('Paula Machado'),
('Fátima Gomes'),
#coordenadores
('César Teixeira'),
('Fabrício Fontes'),
('Enrico Chagas'),
('Cauê Medina'),
('João Barroso');

create table pessoas_salas(
idpessoas_salas int auto_increment not null,
idpessoas int not null,
idsala int not null,

foreign key (idpessoas) references pessoas (idpessoas),
foreign key (idsala) references  sala(idsala),
primary key (idpessoas_salas)
);
insert into pessoas_salas (idpessoas,idsala)
value 
(1,1),
(2,1),
(3,1),
(4,1),
(5,1),
(6,1),
(7,1),
(8,1),
(9,1),
(10,1),
(11,2),
(12,2),
(13,2),
(14,2),
(15,2),
(16,2),
(17,2),
(18,2),
(19,2),
(20,2),
(21,3),
(22,3),
(23,3),
(24,3),
(25,3),
(26,3),
(27,3),
(28,3),
(29,3),
(30,3),
(31,4),
(32,4),
(33,4),
(34,4),
(35,4),
(36,4),
(37,4),
(38,4),
(39,4),
(40,4),
(41,5),
(42,5),
(43,5),
(44,5),
(45,5),
(46,5),
(47,5),
(48,5),
(49,5),
(50,5);

create table  Sala(
idSala int (4) auto_increment not null,
Nome varchar (70) not null,
Quantidade_pessoas varchar (70) not null,
Número varchar (70) not null,


idChamada int not null,
foreign key (idChamada)  references  chamada(idChamada),
primary key (idSala)
);

insert into Sala(nome,Quantidade_pessoas,Número,idChamada)
value ('Crianças','10','1','1'),
('Adolescentes','10','2','2'),
('Jovens','10','3','3'),
('Irmãs','10','4','4'),
('Boas novas','10','5','5');


create table  chamada(
idChamada int (4) auto_increment not null,
presentes varchar (70) not null,
ausentes varchar (70) not null,
quantidade_de_bíblias varchar (70) not null,
ofertas varchar (70) not null,
Quantidade_de_revistas varchar (70) not null,

idtotal_geral int not null,
foreign key (idtotal_geral)  references total_geral (idtotal_geral),
primary key (idChamada)
);

insert into chamada(presentes,ausentes,quantidade_de_bíblias,ofertas,Quantidade_de_revistas,idtotal_geral)
value ('6','4','6','R$ 13','6','1'),
('7','3','7','R$ 8','7','1'),
('8','2','7','R$ 9','8','1'),
('5','5','5','R$ 11','5','1'),
('10','0','9','R$ 10','8','1');


create table total_geral (
idtTotal_geral int (4) auto_increment not null,
total_Matriculados varchar (70) not null,
total_presentes varchar (70) not null,
total_de_bíblias varchar (70) not null,
total_de_revistas varchar (70) not null,


primary key (idtTotal_geral)

);

insert into total_geral(total_Matriculados,total_presentes,total_de_bíblias,total_de_revistas)
value ('50','36','34','34');