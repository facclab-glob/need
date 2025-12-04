/*
Quando um hemocentro não exerce mais suas atividades, é necessário fazer um backup de seus dados e logo em seguida deleta-los do banco de dados.
Exemplo: O hemocentro de Curitiba não está mais exercendo suas atividades e será inativado do sistema.
*/
SELECT *
from Unidade; -- Mostra a lista de unidades ativas no sistema

DELETE from Unidade
where idunidade = 5; -- Deleta a unidade de Curitiba da lista

SELECT *
from Unidade; -- Mostra novamente a lista de unidades ativas no sistema
