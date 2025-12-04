/*
Ao entrar na tela de atendente, o sistema irá buscar o estado atual do estoque de sua respectiva unidade.
Exemplo: O sistema busca o estado atual do estoque da unidade de São Paulo.
*/
SELECT * 
from Estoque 
WHERE unidade_idunidade = 1;

/*
O atendente realiza uma atualização no estoque da unidade de São Paulo.
Exemplo: Foram doadas 10 bolsas de sangue do tipo A+ e foram retiradas 5 bolsas do tipo O-, todas da unidade de São Paulo
*/
UPDATE Estoque 
set qtd_estoque = qtd_estoque + 10 
where Sangue_idSangue = 1 AND unidade_idunidade = 1; -- 10 bolsas de sangue tipo A+ doadas para a unidade de São Paulo

UPDATE Estoque 
set qtd_estoque = qtd_estoque - 5 
where Sangue_idSangue = 8 AND unidade_idunidade = 1; -- 5 bolsas de sangue tipo O- retiradas da unidade de São Paulo

SELECT *
from Estoque
WHERE unidade_idunidade = 1; -- Atualiza a tela do atendente após as modificações dos dados
