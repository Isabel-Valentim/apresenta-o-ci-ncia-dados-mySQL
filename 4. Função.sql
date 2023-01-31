-- FUNÇÕES: PODEM FAZER OPERAÇÕES COM O DADO E RETORNAR UM VALOR



-- GROUP BY: AGRUPA LINHAS COM O MESMO VALOR

-- SUM

SELECT ASSESSORIA, SALDOCONTABIL, `status` FROM CCA.`202211`
WHERE `STATUS` = 'encaminhado';

SELECT ASSESSORIA, sum(SALDOCONTABIL), `status` FROM CCA.`202211`
WHERE `STATUS` = 'encaminhado';


-- SOMA DO SALDO CONTABIL DE TODOS OS CONTRATOS DAS ASSESSORIAS


-- SOMA COM GRUPOS


SELECT ASSESSORIA, SUM(SALDOCONTABIL)/100 FROM CCA.`202211`
WHERE `STATUS` = 'encaminhado'
group by assessoria;



-- COUNT
-- count(coluna)
-- QUANTIDADE DE CONTRATOS COM CADA ASSESSORIA


SELECT ASSESSORIA, SUM(SALDOCONTABIL)/100 FROM CCA.`202211`
WHERE `STATUS` = 'encaminhado'
group by assessoria;




-- COUNT DISTINCT retira as repetições







-- AVG




-- MAX




-- MIN 




-- IF

-- soma do valor recuperado na tabela de recuperação




-- if(condição, se verdadeiro, se falsa)








