--SELECT  FROM `basedosdados.br_inep_ideb.uf` LIMIT 1000


-- Identificando as escolas com maior IDEB por UF

SELECT rede, ideb 
FROM `basedosdados.br_inep_ideb.uf`
WHERE sigla_uf = 'TO' AND ano = 2023
ORDER BY ideb desc
LIMIT 10

