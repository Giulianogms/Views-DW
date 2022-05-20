
SELECT FV.DTAOPERACAO DATA, FV.SEQPRODUTO, FV.NROEMPRESA EMPRESA, SUM(FV.QTDOPERACAO) VENDA_QTD, SUM(FV.VVLROPERACAOBRUTO) VLR_VENDA_BRUTA, SUM(FV.VLROPERACAO) VLR_VENDA_LIQUIDA, 
       SUM(FV.VVLRCTOBRUTO) CUSTO_BRUTO, SUM(FV.VVLRCTOLIQUIDO) CUSTO_LIQUIDO
       
FROM FATO_VENDA FV
WHERE FV.DTAOPERACAO = TRUNC(SYSDATE -1)
AND FV.CODGERALOPER IN (37,48,123,610,615,613,810,916,910,911)

GROUP BY FV.DTAOPERACAO, FV.SEQPRODUTO, FV.NROEMPRESA
