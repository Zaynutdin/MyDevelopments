SELECT Seller_name, S_Unit from sklad.seller_contract s join (SELECT * from sklad.supply p join (SELECT * from supply_product join product using(product_id)) r using(supply_id)) k using(seller_id)
where S_Unit = (SELECT min(S_Unit) from (SELECT s.Supply_id, S_Unit, product_id from supply s join supply_product using(supply_id)) t join sklad.product
using (Product_id) where Product_name = '$name') and Product_name = '$name'