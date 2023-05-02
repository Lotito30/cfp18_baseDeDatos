drop database if exists sistema;
create database if not exists sistema;

use sistema; 

drop table if exists sistemas;
drop table if exists sistemas_programas;
drop table if exists programas;
drop table if exists programas_archivos;
drop table if exists archivos;

create table if not exists sistemas(
	nivel enum("bajo","medio","alto") primary key
);
create table if not exists sistemas_programas(
	id int primary key auto_increment,
    nivel_sistema enum("bajo","medio","alto"),
    freq_ejec enum("baja","media","alta")
);
create table if not exists programas(
	freq_ejec enum("baja","media","alta") primary key
);

create table if not exists programas_archivos(
	id int primary key auto_increment,
    freq_ejec enum("baja","media","alta"),
    modos enum("Input","Output","Input-Output")
);
create table if not exists archivos(
	modos enum("Input","Output","Input-Output") primary key
);

alter table sistemas_programas
add foreign key (nivel_sistema)
references sistemas(nivel);

alter table sistemas_programas
add foreign key (freq_ejec)
references programas(freq_ejec);

alter table programas_archivos
add foreign key (freq_ejec)
references programas(freq_ejec);

alter table programas_archivos
add foreign key (modos)
references archivos(modos);






