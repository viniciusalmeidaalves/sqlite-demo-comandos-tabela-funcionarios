-- 1 )
-- Criar a tabela 'funcionarios' com as colunas especificadas:
-- 'id' como chave primária (identificador único),
-- 'nome' para o nome do funcionário (texto de até 100 caracteres),
-- 'departamento' para o departamento do funcionário (texto de até 100 caracteres),
-- e 'salario' para o salário do funcionário (número decimal).
CREATE TABLE funcionarios (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    departamento VARCHAR(100),
    salario FLOAT
);

-- Inserir dez registros (linhas de dados) na tabela 'funcionarios' com os valores fornecidos para cada coluna (id, nome, departamento, salario).
INSERT INTO funcionarios (id, nome, departamento, salario) VALUES
(1, 'Heitor Vieira', 'Financeiro', 4959.22),
(2, 'Daniel Campos', 'Vendas', 3884.44),
(3, 'Luiza Dias', 'TI', 8205.78),
(4, 'Davi Lucas Moraes', 'Financeiro', 8437.02),
(5, 'Pietro Cavalcanti', 'TI', 4946.88),
(6, 'Evelyn da Mata', 'Vendas', 5278.88),
(7, 'Isabella Rocha', 'Marketing', 4006.03),
(8, 'Sra. Manuela Azevedo', 'Vendas', 6101.88),
(9, 'Brenda Cardoso', 'TI', 8853.34),
(10, 'Danilo Souza', 'TI', 8242.14);

-- 2)
-- Selecionar e exibir todos os campos (colunas) e todos os registros (linhas) da tabela 'funcionarios'.
SELECT * FROM funcionarios;

-- 3)
-- Selecionar e exibir apenas a coluna 'nome' de todos os funcionários que pertencem ao departamento de 'Vendas'.
SELECT nome FROM funcionarios WHERE departamento = 'Vendas';

-- 4)
-- Selecionar e exibir todos os campos (colunas) de todos os funcionários cujo salário é maior que 5000.
SELECT * FROM funcionarios WHERE salario > 5000;

-- 5)
-- Selecionar e exibir os nomes únicos (sem repetições) de todos os departamentos existentes na tabela 'funcionarios'.
SELECT DISTINCT departamento FROM funcionarios;

-- 6)
-- Atualizar o valor do 'salario' para 7500 para todos os funcionários que pertencem ao departamento de 'TI'.
UPDATE funcionarios SET salario = 7500 WHERE departamento = 'TI';

-- 7)
-- Deletar (remover) todos os registros (linhas) da tabela 'funcionarios' onde o salário é menor que 4000.
DELETE FROM funcionarios WHERE salario < 4000;

-- 8)
-- Selecionar e exibir as colunas 'nome' e 'salario' dos funcionários que pertencem ao departamento de 'Vendas' E que possuem salário maior ou igual a 6000.
SELECT nome, salario FROM funcionarios WHERE departamento = 'Vendas' AND salario >= 6000;

-- 9)
-- Criar uma nova tabela chamada 'projetos' com as colunas:
-- 'id_projeto' como chave primária (identificador único),
-- 'nome_projeto' para o nome do projeto (texto de até 100 caracteres),
-- 'id_gerente' que será uma chave estrangeira, referenciando o 'id' da tabela 'funcionarios',
-- estabelecendo assim uma ligação entre um projeto e seu gerente na tabela de funcionários.
CREATE TABLE projetos (
    id_projeto INT PRIMARY KEY,
    nome_projeto VARCHAR(100),
    id_gerente INT,
    FOREIGN KEY (id_gerente) REFERENCES funcionarios(id)
);

-- 10)
-- Excluir (remover) completamente a tabela 'funcionarios' do banco de dados, junto com todos os seus dados e sua estrutura.
-- (Este comando deve ser usado com cautela, pois a exclusão é irreversível e pode impactar tabelas com chaves estrangeiras que a referenciam).
DROP TABLE funcionarios;