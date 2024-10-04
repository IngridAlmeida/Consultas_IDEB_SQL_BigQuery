SELECT  FROM `basedosdados.br_inep_ideb.uf` LIMIT 1000

-- Analisando a evolução do IDEB ao longo dos anos em um determinado estado

SELECT ano, avg(ideb) as media_ideb
FROM `basedosdados.br_inep_ideb.uf`
WHERE sigla_uf = 'SP'
GROUP BY ano
ORDER BY ano



