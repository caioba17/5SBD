--Nome dos clientes em letras maiúsculas
SELECT UPPER(cliente_nome) AS nome_maiusculo
FROM cliente;

--Nome dos clientes com apenas a primeira letra em maiúscula
SELECT INITCAP(cliente_nome) AS nome_formatado
FROM cliente;

--Três primeiras letras do nome de cada cliente
SELECT SUBSTR(cliente_nome, 1, 3) AS abreviacao
FROM cliente;

--Número de caracteres do nome de cada cliente
SELECT cliente_nome, LENGTH(cliente_nome) AS comprimento
FROM cliente;

--Saldo das contas arredondado para o inteiro mais próximo
SELECT conta_numero, ROUND(saldo) AS saldo_arredondado
FROM conta;

--Saldo das contas truncado (sem casas decimais)
SELECT conta_numero, TRUNC(saldo) AS saldo_truncado
FROM conta;

--Resto da divisão do saldo por 1000
SELECT conta_numero, MOD(saldo, 1000) AS resto_por_1000
FROM conta;

--Data atual do sistema
SELECT SYSDATE AS data_atual FROM dual;

--Data atual acrescida de 30 dias
SELECT SYSDATE + 30 AS data_vencimento FROM dual;

--Dias entre a data de abertura da conta e a data atual
SELECT conta_numero, (SYSDATE - data_abertura) AS dias_de_uso
FROM conta;

--Saldo formatado como moeda
SELECT TO_CHAR(saldo, 'L9G999D99') AS saldo_formatado
FROM conta;

--Data de abertura formatada como 'dd/mm/yyyy'
SELECT TO_CHAR(data_abertura, 'dd/mm/yyyy') AS data_formatada
FROM conta;

--Substituir saldo nulo por zero
SELECT conta_numero, NVL(saldo, 0) AS saldo_corrigido
FROM conta;

--Substituir cidade nula por 'Sem cidade'
SELECT cliente_nome, NVL(cidade, 'Sem cidade') AS cidade
FROM cliente;

--Classificar clientes por região com base na cidade
SELECT cliente_nome,
  CASE cidade
    WHEN 'Niterói' THEN 'Região Metropolitana'
    WHEN 'Resende' THEN 'Interior'
    ELSE 'Outra Região'
  END AS regiao
FROM cliente;

--Nome do cliente, número da conta e saldo
SELECT c.cliente_nome, ct.conta_numero, ct.saldo
FROM cliente c
JOIN conta ct ON c.cliente_cod = ct.cliente_cliente_cod;

--Nome do cliente e nome da agência
SELECT c.cliente_nome, a.agencia_nome
FROM cliente c
JOIN conta ct ON c.cliente_cod = ct.cliente_cliente_cod
JOIN agencia a ON ct.agencia_agencia_cod = a.agencia_cod;

--Todas as agências e seus clientes (incluir agências sem clientes)
SELECT a.agencia_nome, c.cliente_nome
FROM agencia a
LEFT JOIN conta ct ON a.agencia_cod = ct.agencia_agencia_cod
LEFT JOIN cliente c ON ct.cliente_cliente_cod = c.cliente_cod;