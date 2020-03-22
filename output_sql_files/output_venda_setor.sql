SELECT DISTINCT t.nome_cia, 
  t.setor, 
  cast(t.valor_setor as float)/ t.valor_cia as perct_setor_cia 
FROM 
  (
    SELECT 
      comp.companiesname as nome_cia, 
      s.sector as setor, 
      sum(d.dealsprice) over (
        partition by comp.companiesname, s.sector
      ) as valor_setor, 
      sum(d.dealsprice) over (partition by comp.companiesname) as valor_cia 
    FROM 
      indicium.deals d 
      left join indicium.companies comp on comp.companiesid = d.companiesid 
      left join indicium.sectors s on s.sectorkey = comp.sectorkey
  ) as t 
ORDER BY 
  t.nome_cia, 
  t.setor
