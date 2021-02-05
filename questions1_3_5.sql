set sql_safe_updates = 0;

-- Question 1
select category.cat_name as Kategori, count(divide_into_category.Category_id) as Antal from category
right join divide_into_category
on category.id = divide_into_category.Category_id
group by category.cat_name
order by Antal desc, category.cat_name;

-- Question 3
select distinct customer.Last_Name as Efternamn, customer.First_Name as Förnamn from customer
inner join orders
on orders.Customer_id = customer.id
inner join order_includes
on order_includes.Orders_id = orders.id
inner join shoe
on order_includes.Shoe_id = shoe.id 
inner join divide_into_category
on divide_into_category.Shoe_id = shoe.id
inner join category
on category.id = divide_into_category.Category_id
where shoe.Color_id = 80 and shoe.Label_id = 30 and shoe.size_id = 152 and category.id = 70
order by customer.Last_Name;

select * from color;
select * from label;
select * from size;
select * from category;

-- Question 5
select shoe.id as Sko_id, label.label_name as Märke, count(order_includes.Shoe_id) as Antal_sålda from shoe
join label
on label.id = shoe.Label_id
left join order_includes
on order_includes.Shoe_id = shoe.id
group by shoe.id
order by Antal_Sålda desc, label.label_name
limit 5;
