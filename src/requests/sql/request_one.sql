SELECT Product_id, Product_name, Unit, S_COSTUNIT, amount, Fix_Date from sklad.details join sklad.product using(Product_id) WHERE Product_name='$name'