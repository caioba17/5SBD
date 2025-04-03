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

-- 4. Liste os nomes dos clientes da cidade de Macaé.

SELECT cliente_nome FROM cliente WHERE cidade = "Macaé"

-- 5. Exiba o código e o nome de todos os clientes com código entre 5 e 15.

SELECT cliente_cod, cliente_nome FROM cliente WHERE cliente_cod 

-- 6. Exiba os clientes que moram em Niterói, Volta Redonda ou Itaboraí.
-- 7. Exiba os nomes dos clientes que começam com a letra "F".
-- 8. Exiba uma frase com a seguinte estrutura para todos os clientes:
