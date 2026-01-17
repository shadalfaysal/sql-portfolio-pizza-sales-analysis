--Determine the top 3 most ordered pizza types based on revenue.

select top 3
pt.name,
round(sum(p.price*od.quantity),0) as revenue
from pizza_types pt
left join pizzas p
on pt.pizza_type_id = p.pizza_type_id
left join order_details od
on p.pizza_id = od.pizza_id
group by pt.name
order by revenue desc
