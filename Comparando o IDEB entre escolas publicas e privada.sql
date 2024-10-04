SELECT *  FROM `basedosdados.br_inep_ideb.brasil` LIMIT 1000;

-- Comparando o IDEB entre escolas publicas e privada

SELECT 
avg(case when rede = 'privada' then ideb end) as media_privada,
avg(case when rede = 'publica' then ideb end) as media_publica
FROM `basedosdados.br_inep_ideb.brasil` 
WHERE rede in ('privada', 'publica');

-- teste 2

SELECT rede,
avg(ideb) as media
FROM `basedosdados.br_inep_ideb.brasil` 
WHERE rede in ('privada', 'publica')
GROUP BY rede;