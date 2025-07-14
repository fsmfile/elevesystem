SELECT tbl_rot_OrdemServico.Cod_OrdemServico, tbl_rot_OrdemServico.DtHr_Abertura_OrdemServico, tbl_rot_OrdemServico.NomeCliente_OrdemServico, tbl_rot_OrdemServico.Cod_Vendas, tbl_cad_veiculos.Placa_veiculo_br, tbl_rot_OrdemServico.Status_OrdemServico, tbl_rot_OrdemServico.Observacao_OrdemServico, tbl_rot_OrdemServico.DtHr_Finalizacao_OrdemServico, tbl_rot_OrdemServico.LocalAtend_OrdemServico, IIf([VendaFinalizada_vendas]=Yes,"Pago","Pendente") AS Pagamento
FROM (tbl_rot_OrdemServico LEFT JOIN tbl_cad_veiculos ON tbl_rot_OrdemServico.Cod_veiculo = tbl_cad_veiculos.Cod_veiculo) LEFT JOIN tbl_rot_vendas ON tbl_rot_OrdemServico.Cod_Vendas = tbl_rot_vendas.Cod_venda
WHERE (((tbl_rot_OrdemServico.Status_OrdemServico)<>6))
ORDER BY tbl_rot_OrdemServico.DtHr_Abertura_OrdemServico;
