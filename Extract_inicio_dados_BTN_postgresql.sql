WITH RankedData as (
		SELECT datahora, id_localenergia, row_number() over (partition by id_localenergia order by datahora) as rn 
		FROM public.dados_energia
		)
SELECT datahora, public.locais_energia.nome_local as local, public.locais_energia.cpe as cpe, public.locais_energia.nt as nt, public.co.codigo_co as co
FROM RankedData
inner join public.locais_energia on public.locais_energia.id_localenergia = RankedData.id_localenergia
inner join public.instalacoes on public.locais_energia.ipid = public.instalacoes.ipid
inner join public.subsistemas on public.instalacoes.id_ss = public.subsistemas.id_ss
inner join public.co on public.subsistemas.id_co = public.co.id_co
WHERE rn = 1 and nt = 'BTN'