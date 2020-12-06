select good.name as good_name
from good
inner join category_has_good as cg on good.id = cg.good_id
inner join category as c on c.id = cg.category_id
where c.name like 'Cakes'

union

select good.name as good_name
from good
inner join sale_has_good as sg on good.id = sg.good_id
inner join sale on sale.id = sg.sale_id
inner join status on status.id = sale.status_id
where status.name like 'delivering'

order by good_name;