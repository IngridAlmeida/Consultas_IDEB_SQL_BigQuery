-- Primeiro vamos Consultar tabela para ver as informações que ela tem
SELECT *  FROM `basedosdados.br_inep_ideb.brasil` LIMIT 1000;

-- Calculando a média do IDEB por rede em um determinado ano
SELECT
  rede,
  AVG(ideb) as media_ideb
FROM `basedosdados.br_inep_ideb.brasil`
WHERE
  ano = 2005
GROUP BY rede

-- 