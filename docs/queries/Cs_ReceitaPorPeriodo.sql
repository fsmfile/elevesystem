SELECT Cs_VendasPorPeriodo_FluxoCaixa.Dt_Hr_vend, Cs_VendasPorPeriodo_FluxoCaixa.[Valor Entrada], Cs_VendasPorPeriodo_FluxoCaixa.[Valor Saída], Cs_VendasPorPeriodo_FluxoCaixa.Tipo
FROM Cs_VendasPorPeriodo_FluxoCaixa;


union all

SELECT Cs_pagclicontasreceber.datapag_contasreceberdet AS Dt_Hr_vend, Sum(Cs_pagclicontasreceber.valorpagopagcli_CR) AS [Valor Entrada], Sum(0) AS [Valor Saída], "Receita" AS Tipo
FROM Cs_pagclicontasreceber
GROUP BY Cs_pagclicontasreceber.datapag_contasreceberdet, "Receita"
HAVING (((Cs_pagclicontasreceber.datapag_contasreceberdet) Between [Formulários]![Frm_totalporvendaporperiodo]![TxtDtInicial] And [Formulários]![Frm_totalporvendaporperiodo]![TxtDtFinal]+1));


UNION ALL SELECT Cs_LancCaixa_Entrada_FluxoCaixa.Dt_Hr_vend, Cs_LancCaixa_Entrada_FluxoCaixa.[Valor Entrada], Cs_LancCaixa_Entrada_FluxoCaixa.[Valor Saída], Cs_LancCaixa_Entrada_FluxoCaixa.Tipo
FROM Cs_LancCaixa_Entrada_FluxoCaixa;
