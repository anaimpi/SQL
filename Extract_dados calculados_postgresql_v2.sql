SELECT datahora, valor, public.variaveis.nome_variavel as variavel, public.variaveis.unidade_variavel as unidade, public.locais_energia.nome_local as local, public.locais_energia.cpe as cpe
	FROM public.dados_calculados
	inner join public.locais_energia on public.locais_energia.id_localenergia = public.dados_calculados.id_localenergia
	inner join public.variaveis on public.variaveis.id_variavel = public.dados_calculados.id_variavel
	
	where datahora >= '2024-01-01' and datahora < '2024-02-01'
	order by  public.locais_energia.id_localenergia, datahora


SELECT datahora, valor, public.variaveis.nome_variavel as variavel, public.variaveis.unidade_variavel as unidade, public.locais_energia.nome_local as local, public.locais_energia.cpe as cpe, public.locais_energia.nt as nt
	FROM public.dados_calculados
	inner join public.locais_energia on public.locais_energia.id_localenergia = public.dados_calculados.id_localenergia
	inner join public.variaveis on public.variaveis.id_variavel = public.dados_calculados.id_variavel
	
	where datahora >= '2024-08-01' and datahora < '2024-09-01' and (nt='MT' or nt='BTE')
	order by  public.locais_energia.id_localenergia, datahora


SELECT datahora, valor, public.variaveis.nome_variavel as variavel, public.variaveis.unidade_variavel as unidade, public.locais_energia.nome_local as local, public.locais_energia.cpe as cpe, public.locais_energia.nt as nt, public.co.codigo_co as co
	FROM public.dados_calculados
	inner join public.locais_energia on public.locais_energia.id_localenergia = public.dados_calculados.id_localenergia
	inner join public.variaveis on public.variaveis.id_variavel = public.dados_calculados.id_variavel
	inner join public.instalacoes on public.locais_energia.ipid = public.instalacoes.ipid
	inner join public.subsistemas on public.instalacoes.id_ss = public.subsistemas.id_ss
	inner join public.co on public.subsistemas.id_co = public.co.id_co
	
	where datahora >= '2024-09-01' and datahora < '2024-11-01' and nt='BTN'
	order by  public.locais_energia.id_localenergia, datahora