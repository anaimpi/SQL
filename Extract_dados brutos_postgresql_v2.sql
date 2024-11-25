SELECT datahora, valor, public.variaveis.nome_variavel as variavel, public.variaveis.unidade_variavel as unidade, public.locais_energia.nome_local as local, public.locais_energia.cpe as cpe
	FROM public.dados_energia
	inner join public.locais_energia on public.locais_energia.id_localenergia = public.dados_energia.id_localenergia
	inner join public.variaveis on public.variaveis.id_variavel = public.dados_energia.id_variavel
	
	where datahora >= '2023-08-01' and datahora < '2023-09-01' and (public.variaveis.id_variavel = 1 or public.variaveis.id_variavel = 2)
	
	order by public.locais_energia.id_localenergia, datahora, public.variaveis.id_variavel



SELECT datahora, valor, public.variaveis.nome_variavel as variavel, public.variaveis.unidade_variavel as unidade, public.locais_energia.nome_local as local, public.locais_energia.cpe as cpe
	FROM public.dados_energia_tratados
	inner join public.locais_energia on public.locais_energia.id_localenergia = public.dados_energia_tratados.id_localenergia
	inner join public.variaveis on public.variaveis.id_variavel = public.dados_energia_tratados.id_variavel
	
	where datahora >= '2024-07-01' and datahora < '2024-08-01' and (public.variaveis.id_variavel = 1 or public.variaveis.id_variavel = 2)
	
	order by public.locais_energia.id_localenergia, datahora, public.variaveis.id_variavel



