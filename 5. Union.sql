-- select


-- quantidade de contratos da assessoria no mês 10 e 11

select assessoria, count(contrato) from cca.`202211`
where assessoria like 'Cobes%' and `status` = 'Encaminhado';

-- criar uma coluna para o mês


-- UNION ALL - juntar duas consultas



-- testar quantidade de colunas diferentes




-- quantidade de colunas DEVE SER IGUAL!


-- fazer uma média desses valores??


-- create table as select




-- temporary table





 -- DROP TABLE 
 
DROP TABLE teste; 
 
 -- DROP TABLE IF EXISTS
 
DROP TABLE IF EXISTS teste; -- para não haver erro

DROP TABLE IF EXISTS aux.teste;
 
  
-- fazer a média AVG





SELECT AVG(QDCONTRATOS) FROM TESTE; 








