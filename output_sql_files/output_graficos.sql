SELECT 
  cont.contactsname as nome_contato, 
  to_char(
    d.dealsdatecreated, 'YYYY - Mon'
  ) as periodo_venda, 
  sum(dealsprice) as valor_total
FROM 
  indicium.deals d 
  left join indicium.contacts cont on cont.contactsid = d.contactsid 
GROUP BY 
  cont.contactsname, 
  d.dealsdatecreated 
ORDER BY 
  cont.contactsname, 
  d.dealsdatecreated, 
  sum(dealsprice) desc