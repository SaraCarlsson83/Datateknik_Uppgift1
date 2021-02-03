-- Skapa en kund lista med den totala summan pengar som varje kund har handlat för. Kundens för- och efernamn, samt det totala värdet som varje person har shoppats för, skall visas
select customer.first_name, customer.last_name, sum(price.value) from customer
join orders on customer.id = orders.Customer_id
join order_includes on order_includes.Orders_id = orders.id
join product on product.id = order_includes.Product_id
join price on price.id = product.Price_id
group by Customer_id;

-- Skriv ut en lista på det totala beställningsvärdet per ort där beställningsvärdet är större än 1000kr. Ortnamn och värde ska visas (det måste finnas orter i databasen där det har handlats för mindre än 1000kr)
select community.com_name, sum(price.value) from community
join customer on customer.Community_id = community.id
join orders on customer.id = orders.Customer_id
join order_includes on order_includes.Orders_id = orders.id
join product on product.id = order_includes.Product_id
join price on price.id = product.Price_id
group by community.id;

-- Vilken månad hade du den största försäljningen? (det måste finnas data som anger försäljning för mer än en månad i databasen)
select month(date), sum(price.value) from orders
join order_includes on order_includes.orders_id = orders.id
join product on order_includes.product_id = product.id
join price on product.price_id = price.id
group by month(orders.date)
order by sum(price.value) desc
limit 1;


