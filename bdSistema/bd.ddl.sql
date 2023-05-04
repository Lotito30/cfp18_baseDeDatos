drop database sistema;
create database sistema;
use sistema; 

create table sistemas(
	nivel enum("bajo","medio","alto") primary key
);
create table sistemas_programas(
	id int primary key auto_increment,
    nivel_sistema enum("bajo","medio","alto"),
    freq_ejec enum("baja","media","alta")
);
create table programas(
	freq_ejec enum("baja","media","alta") primary key
);

create table programas_archivos(
	id int primary key auto_increment,
    freq_ejec enum("baja","media","alta"),
    modos enum("Input","Output","Input-Output")
);
create table archivos(
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






