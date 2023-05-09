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

-- traer la suma de veces que se ejecutaron programas en el sistem
select count(id) as freq_ejec_programa from sistemas_programas
join  sistemas on sistemas.nivel= sistemas_programas.nivel_sistema;

-- traer la suma de veces que se ejecutaron programas en el sistema medio
select count(sp.id) as Total,p.freq_ejec,s.nivel from sistemas_programas sp
join sistemas s on s.nivel = sp.nivel_sistema
join programas p on p.freq_ejec = sp.freq_ejec
where s.nivel = "medio";

-- traeme los programas con archivos Input-Output
select pa.id, pa.freq_ejec, a.modos from programas_archivos pa
join programas p on p.freq_ejec = pa.freq_ejec
join archivos a on a.modos = pa.modos
where a.modos = "Input-Output";

-- traeme la freq_ejec de los programas con archivos Input-Output y el nivel de su sistema
select pa.id, s.nivel, pa.freq_ejec, a.modos from programas_archivos pa
join programas p on p.freq_ejec = pa.freq_ejec
join archivos a on a.modos = pa.modos
join sistemas_programas sp on sp.freq_ejec = p.freq_ejec
join sistemas s on s.nivel = sp.nivel_sistema
where a.modos = "Input-Output";



