-- JOIN :COMBINAR LINHAS DE DUAS OU MAIS TABELAS BASEADO EM UMA COLUNA RELACIONADA ENTRE ELAS

-- LEFT JOIN: todos da primeira (ESQUERDA) e aqueles que combinam da segunda



-- CLIENTES PESSOA FISICA QUE ESTÃO COM ASSESSORIAS
-- GCO TEM A COLUNA TIPO CLI


SELECT CPFCNPJ, CONTRATO, STATUS FROM CCA.`202211`
WHEre `STATUS` = 'encaminhado'
limit 5; 


SELECT CPFCNPJ, CONTRATO, TIPOCLI FROM gco.`202211`
where tipocli = 1 # PESSOA FISICA
limit 5; 

-- sintaxe
-- A LEFT JOIN B ON A.COLUNA = B.COLUNA

-- juntar tudo? 






-- selecionar as colunas que vou USAR




-- RIGHT JOIN: todos da segunda (direita) e aqueles que combinam da primeira

-- inverter



-- RESULTADO IGUAL


-- ------------------------------
-- OUTRO EXEPLO

-- bgn - puxar nome e telefone
-- cca - puxar contrato
-- só queremos nome e telefone de quem está no cca

select gcb.bgn.nome, 
gcb.bgn.telefone 
from gcb.bgn 
LIMIT 5;


select gcb.bgn.nome, 
gcb.bgn.telefone,

cca.`202211`.contrato

from gcb.bgn left join cca.`202211`

on cca.`202211`.cpfcnpj = gcb.bgn.CpfCnpj 

LIMIT 400; -- mostra todos do gcb incluindo aqueles que não tem contrato no CCA


-- substituir por right join









-- mostra todos do cca incluindo aqueles que não estão gcb

-- ------------------------------


-- INNER JOIN : apenas registros que existem nas duas tabelas

select gcb.bgn.nome, 
gcb.bgn.telefone,
cca.`202211`.contrato

from gcb.bgn INNER JOIN cca.`202211`

on cca.`202211`.cpfcnpj = gcb.bgn.cpfcnpj

LIMIT 400;



-- mostra apenas aqueles que estão no cca e estão na gcb

-- CROSS JOIN : retorna todos os registros

select gcb.bgn.nome, 

gcb.bgn.telefone,

cca.`202211`.contrato

from gcb.bgn cross join cca.`202211`

on cca.`202211`.cpfcnpj = gcb.bgn.cpfcnpj

LIMIT 40000; 

-- mostra todos os registros das duas tabelas
-- alguns não estão no cca
-- alguns não estão no gcb

-- null - espaços vazios/ sem dados

