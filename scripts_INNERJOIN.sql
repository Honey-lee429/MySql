-- lista saída de pratos no restaurante 
SELECT nome_prato AS Prato, COUNT(*) AS Saída
FROM tb_produtos AS P
INNER JOIN tb_vendas AS V
ON P.id_prato = V.fk_produto
GROUP BY nome_prato;
