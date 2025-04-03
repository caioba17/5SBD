Atividade Prática – SQL com Oracle APEX
Seções 1 a 3 – Oracle Academy: Database Programming with SQL
Tema: Consulta e manipulação de dados em bancos de dados relacionais.
Ferramenta: Oracle APEX – SQL Workshop
Base de dados utilizada: Sistema bancário com tabelas agencia, cliente, conta, emprestimo.

Parte 1 – Recuperando Dados (Seção 1)
Objetivo: Utilizar comandos SELECT para exibir dados completos ou parciais de uma tabela.

-- 1. Exiba todos os dados cadastrados na tabela de clientes.

SELECT * FROM cliente;

-- 2. Exiba apenas os nomes e as cidades dos clientes.

SELECT cliente_nome, cidade FROM cliente;

-- 3. Liste todas as contas registradas, exibindo o número da conta e o saldo.

SELECT saldo, conta_numero FROM conta;