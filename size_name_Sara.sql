set sql_safe_updates = 0;

alter table price AUTO_INCREMENT=120;
insert into price (value) values (200), (250), (400), (600), (1000);

alter table category AUTO_INCREMENT=70;
insert into category (cat_name) values ('Sandals'), ('Sneakers'), ('Boots'), ('Men'), ('Women'), ('Children');

alter table color AUTO_INCREMENT=80;
insert into color (col_name) values ('Black'), ('White'), ('Yellow'), ('Brown'), ('Pink');

alter table label AUTO_INCREMENT=30;
insert into label (label_name) values ('Ecco'), ('Nike'), ('Adidas'), ('Dr Martens');

alter table shoe AUTO_INCREMENT=40;
insert into shoe (Label_id, Color_id, Price_id, Size_id, Name_id) values 
(33,82,120,150,160), (31,81,121,153,161), (31,80,122,151,162), (30,80,123,152,163), 
(32,84,122,154,164), (33,81,124,156,165), (33,84,120,157, 162), (32,80,124,155,160);

alter table divide_into_category AUTO_INCREMENT=60;
insert into divide_into_category (Shoe_id, Category_id) values 
(50,72), (50,75), (51,70), (51,74), (52,70), (52,75), (53,74), (53,75),
(54,72), (54,74), (55,73), (55,72), (56,73), (56,70), (57,71);

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

insert into Order_includes(id, shoe_id, Orders_id) values
(110, 40, 110), (111, 44, 110), -- id 10, Agaton Sax
(112, 47, 111), -- id 13, Nalle Puh
(113, 43, 112), -- id 14, Mimmi Pigg
(100, 41, 113), (101, 42, 113), -- id 11, Kalle Anka
(102, 43, 114), (103, 47, 114), (104, 40, 114), -- id 11, Kalle Anka
(105, 47, 115), -- id 12, Musse Pigg
(106, 40, 116), (107, 41, 116), (108, 42, 116), (109, 43, 116); -- id 13, Nalle Puh

insert into Rating(id, Comment, RatingAlternatives_id, shoe_id, Customer_id) values
(130, 'Mycket obekväm', 93, 42, 13), -- id 13, Nalle Puh
(131, null, 90, 43, 14), -- id 14, Mimmi Pigg
(132, 'Helt ok för det priset', 91, 47, 12), -- id 12, Musse pigg
(133, null, 91, 40, 13), -- id 13, Nalle Puh
(134, null, 93, 43, 13); -- id 13, Nalle Puh

alter table size AUTO_INCREMENT=150;
insert into size (Size_name) 
value (22), (29), (38), (39), (40), (41), (44), (46);

alter table name auto_increment = 160;
insert into name(Shoe_name) 
value ('Tessa'), ('Brooke'), ('Johnny'), ('Percy'), ('Voxna'), ('Yxhult');
 
 -- id 40 Dr Martens, yellow, 200, stl 22
-- id 41 Nike, white, 250, stl 39
-- id 42 Nike, Black, 400, stl 29
-- id 43 Ecco, Black, 600, stl 38
-- id 44 Adidas, Pink, 400, stl 40
-- id 45 Dr Martens, White, 1000, stl 44
-- id 46 Dr Martens, Pink, 200, stl 46
-- id 47 Adidas, Black, 1000, stl 41 