set sql_safe_updates = 0;

insert into Community(id,com_name) values
(20, 'Stockholm'), (21,'Malmö'), (22,'Göteborg');

insert into Customer(id, first_name, last_name, Adress, Community_id) values
(10, 'Agaton', 'Sax', 'Sveavägen', 21); 

insert into Customer(first_name, last_name, Adress, Community_id) values
('Kalle', 'Anka', 'Ankeborgsvägen', 22),
('Musse', 'Pigg', 'Svansvägen', 20),
('Nalle', 'Puh', 'Trädet', 22),
('Mimmi', 'Pigg', 'Svansvägen', 20);


insert into Orders(id, date, Customer_id) values
(110, '2020-12-01', 10), -- Agaton Sax
(111, '2020-12-25', 13), -- Nalle Puh
(112, '2021-01-15', 14), -- Mimmi Pigg
(113, '2020-09-25', 11), -- Kalle Anka
(114, '2020-10-25', 11), -- Kalle Anka
(115, '2020-10-25', 12); -- Musse Pigg

insert into orders(date, customer_id) values
('2020-11-15', 13); -- Nalle Puh

insert into Rating_Alternatives(id, options) values
(90, 'Mycket nöjd'),
(91, 'Nöjd'),
(92, 'Ganska nöjd'),
(93, 'Missnöjd');


insert into Order_includes(id, product_id, Orders_id) values
(110, 40, 110), (111, 44, 110), -- id 10, Agaton Sax
(112, 47, 111), -- id 13, Nalle Puh
(113, 43, 112), -- id 14, Mimmi Pigg
(100, 41, 113), (101, 42, 113), -- id 11, Kalle Anka
(102, 43, 114), (103, 47, 114), (104, 40, 114), -- id 11, Kalle Anka
(105, 47, 115), -- id 12, Musse Pigg
(106, 40, 116), (107, 41, 116), (108, 42, 116), (109, 43, 116); -- id 13, Nalle Puh

insert into Rating(id, Comment, RatingAlternatives_id, Product_id, Customer_id) values
(130, 'Mycket obekväm', 93, 42, 13), -- id 13, Nalle Puh
(131, null, 90, 43, 14), -- id 14, Mimmi Pigg
(132, 'Helt ok för det priset', 91, 47, 12), -- id 12, Musse pigg
(133, null, 91, 40, 13), -- id 13, Nalle Puh
(134, null, 93, 43, 13); -- id 13, Nalle Puh

-- id 40 Dr Martens, yellow, 200, stl 22
-- id 41 Nike, white, 250, stl 39
-- id 42 Nike, Black, 400, stl 29
-- id 43 Ecco, Black, 600, stl 38
-- id 44 Adidas, Pink, 400, stl 40
-- id 45 Dr Martens, White, 1000, stl 44
-- id 46 Dr Martens, Pink, 200, stl 46
-- id 47 Adidas, Black, 1000, stl 41 



select * from Customer;
select * from Community;
select * from Orders
order by (date);
select * from Rating_Alternatives;
