UPDATE tbl_Agendamento SET tbl_Agendamento.CancelarAgendamento = True, tbl_Agendamento.AutorizarCancelamento_Agendamento = [Formulários]![Frm_MenuPrinc]![MatFunc], tbl_Agendamento.CodAgenda_agendamento = Null
WHERE (((tbl_Agendamento.Cod_OrdemServico_Agendamento)=[Formulários]![frmAgenda]![txtListaVigente]) AND ((tbl_Agendamento.CodAgenda_agendamento) Is Not Null));
