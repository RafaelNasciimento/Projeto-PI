use EBD;

#-----------------------------------------------------------------------------------
#3.1
create user 'professor'@'localhost' identified by 'professor123';
create user 'diretor'@'localhost' identified by 'diretor123';
create user 'coordenador'@'localhost' identified by 'coordenador123';

create role 'professor','diretor','coordenador';

grant all on app_db.* to 'diretor';
grant insert on EBD.chamada to 'professor';
grant select on EBD.total_geral to 'coordenador';

grant all on *.* to 'diretor'@'localhost';
grant insert on *.* to 'professor'@'localhost';
grant select on *.* to 'coordenador'@'localhost';
#------------------------------------------------------------------------------------

#------------------------------------------------------------------------------------
#3.2

create view view_pessoas as select * from pessoas;
create view view_chamadas as select * from chamada;
#------------------------------------------------------------------------------------

#------------------------------------------------------------------------------------
#3.3

drop procedure primeira_proce;

delimiter //
create procedure primeira_proce(codigo int)
	begin
     
     select nome from pessoas where idpessoas = codigo;
           
	end;
// 
delimiter ;

call primeira_proce(1);
#------------------------------------------------------------------------------------

#------------------------------------------------------------------------------------
#3.4

create index idx_nome on pessoas(nome);
#------------------------------------------------------------------------------------

#------------------------------------------------------------------------------------
#3.5
/*
o backups serão feitos em todos os comços de mês, e serão feitos pelos diretores, e restore todos os fins de ebd e por fim a checagem de integridade será feita após todos os 5 meses.
*/
#------------------------------------------------------------------------------------