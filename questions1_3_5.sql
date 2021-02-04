set sql_safe_updates = 0;

-- Question 1
select category.cat_name as Kategori, count(divide_into_category.Category_id) as Antal from category
right join divide_into_category
on category.id = divide_into_category.Category_id
group by category.cat_name;

-- Question 3
select distinct customer.Last_Name as Efternamn, customer.First_Name as Förnamn from customer
inner join orders
on orders.Customer_id = customer.id
inner join order_includes
on order_includes.Orders_id = orders.id
inner join product
on order_includes.Product_id = product.id
inner join shoe
on product.id = shoe.Product_id
inner join divide_into_category
on divide_into_category.Shoe_id = shoe.id
inner join category
on category.id = divide_into_category.Category_id
where product.Color_id = 80 and product.Label_id = 30 and product.size = 38
order by customer.Last_Name;

-- Question 5
select product.id as Produkt_id, label.label_name as Märke, count(order_includes.Product_id) as Antal_sålda from product
join label
on label.id = product.Label_id
left join order_includes
on order_includes.Product_id = product.id
group by product.id
order by Antal_Sålda desc, label.label_name
limit 5;
