select Product.product_name,Sales.year,Sales.price
from
product 
inner join 
Sales
on 
Sales.product_id=Product.product_id;
