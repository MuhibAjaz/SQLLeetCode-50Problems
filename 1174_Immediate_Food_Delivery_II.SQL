select round(sum(if(order_date=customer_pref_delivery_date , 1 , 0))*100 /count(Distinct customer_id), 2 ) as immediate_percentage
from Delivery
where (customer_id,order_date) IN (select customer_id , min(order_date) as order_date 
from Delivery
group by 
customer_id)
