select * from sistemas;
select * from sistemas_programas;
select * from programas;
select * from archivos;
select * from programas_archivos;


-- traer los sistemas_programas de nivel bajo y freq media
select sp.id,s.nivel,p.freq_ejec from sistemas_programas sp
join sistemas s on s.nivel = sp.nivel_sistema
join programas p on p.freq_ejec = sp.freq_ejec
where s.nivel = "bajo" and p.freq_ejec = "media";

-- traer la suma de veces que se ejecutaron programas en el sistema medio

-- traeme los programas con archivos input-Output

-- traeme los programas con archivos input-Output y el nivel de su sistema