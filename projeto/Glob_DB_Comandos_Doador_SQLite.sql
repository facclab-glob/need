/*
Ao abrir a tela de doador, aparecerá as unidades favoritadas por ele (se existir) e o restante das mesmas de acordo com o tipo de sangue selecionado,
ordenadas por porcentagem de preenchimento do estoque, do menor pro maior.
Exemplo: O doador filtrou o tipo sanguínio em A+ e favoritou as unidades de São Paulo e Campinas.
*/
SELECT (qtd_estoque*100/capacidade) AS "Percentual do estoque", sangue_idsangue, unidade_idunidade
from Estoque
where (sangue_idsangue = 1) and (unidade_idunidade = 1 or unidade_idunidade = 2); -- Unidades favoritadas (São Paulo e Campinas) filtradas pelo tipo sanguínio selecionado anteriormente

Select (qtd_estoque*100/capacidade) AS "Percentual do estoque", sangue_idsangue, unidade_idunidade
from Estoque
where (sangue_idsangue = 1)
order by (qtd_estoque*100/capacidade) asc; -- Restante das unidades, ordenadas por percentual do estoque, do menor pro maior e filtradas pelo tipo sanguínio selecionado anteriormente
