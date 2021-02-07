set sql_safe_updates = 0;

-- 1. Antalet produkter per kategori
select category.cat_name as Kategori, count(divide_into_category.Category_id) as Antal from category
right join divide_into_category
on category.id = divide_into_category.Category_id
group by category.cat_name
order by Antal desc, category.cat_name;

-- 2. Skapa en kund lista med den totala summan pengar som varje kund har handlat för. Kundens för- och efernamn, samt det totala värdet som varje person har shoppats för, skall visas
select customer.first_name, customer.last_name, sum(price.value) from customer
join orders on customer.id = orders.Customer_id
join order_includes on order_includes.Orders_id = orders.id
join shoe on shoe.id = order_includes.shoe_id
join price on price.id = shoe.Price_id
group by Customer_id
order by sum(price.value) desc;

-- 3. Vilka kunder har köpt svarta sandaler från Ecco i stl 38
select customer.Last_Name as Efternamn, customer.First_Name as Förnamn from customer
inner join orders
on orders.Customer_id = customer.id
inner join order_includes
on order_includes.Orders_id = orders.id
inner join shoe
on shoe.id = order_includes.Shoe_id
inner join shoe_color
on shoe_color.Shoe_id = shoe.id
inner join divide_into_category
on divide_into_category.Shoe_id = shoe.id
where shoe.Label_id = 30 and shoe.Size_id = 152 and divide_into_category.Category_id = 70 and shoe_color.Color_id = 80
order by customer.Last_Name;

-- 4. Skriv ut en lista på det totala beställningsvärdet per ort där beställningsvärdet är större än 1000kr. Ortnamn och värde ska visas (det måste finnas orter i databasen där det har handlats för mindre än 1000kr)
select community.com_name, sum(price.value) from community
join customer on customer.Community_id = community.id
join orders on customer.id = orders.Customer_id
join order_includes on order_includes.Orders_id = orders.id
join shoe on shoe.id = order_includes.shoe_id
join price on price.id = shoe.Price_id
group by community.id
having sum(price.value) > 1000
order by sum(price.value) desc;

-- 5. Skapa topp-5 lista av mest sålda
select shoe.id as Sko_id, label.label_name as Märke, name.shoe_name as Namn, count(order_includes.Shoe_id) as Antal_sålda from shoe
inner join label
on label.id = shoe.Label_id
left join order_includes
on order_includes.Shoe_id = shoe.id
inner join name
on name.id = shoe.name_id
group by shoe.id
order by Antal_Sålda desc, label.label_name
limit 5;

-- 6. Vilken månad hade du den största försäljningen? (det måste finnas data som anger försäljning för mer än en månad i databasen)
select monthname(date), sum(price.value) from orders
join order_includes on order_includes.orders_id = orders.id
join shoe on order_includes.shoe_id = shoe.id
join price on shoe.price_id = price.id
group by month(orders.date)
order by sum(price.value) desc
limit 1;
