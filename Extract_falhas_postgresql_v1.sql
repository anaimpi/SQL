SELECT nome_local, file_tracking.cpe, data_day, ficheiro_invalido
	FROM public.file_tracking
	inner join public.locais_energia on public.locais_energia.cpe = public.file_tracking.cpe
	
	where data_day >= '2024-08-01' and data_day < '2024-09-01' and ficheiro_invalido = 1
	
	order by id_localenergia, data_day;
	





	
SELECT nome_local, file_tracking.cpe, sum(ficheiro_invalido)
	FROM public.file_tracking
	inner join public.locais_energia on public.locais_energia.cpe = public.file_tracking.cpe
	
	where data_day >= '2024-08-01' and data_day < '2024-09-01' and ficheiro_invalido = 1
	
	group by nome_local, file_tracking.cpe;