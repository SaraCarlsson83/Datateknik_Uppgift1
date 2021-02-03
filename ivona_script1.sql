set sql_safe_updates = 0;

alter table price AUTO_INCREMENT=120;
insert into price (value) values (200), (250), (400), (600), (1000);

alter table category AUTO_INCREMENT=70;
insert into category (cat_name) values ('Sandals'), ('Sneakers'), ('Boots'), ('Men'), ('Women'), ('Children');

alter table color AUTO_INCREMENT=80;
insert into color (col_name) values ('Black'), ('White'), ('Yellow'), ('Brown'), ('Pink');

alter table label AUTO_INCREMENT=30;
insert into label (label_name) values ('Ecco'), ('Nike'), ('Adidas'), ('Dr Martens');

alter table product AUTO_INCREMENT=40;
insert into product (Label_id, Color_id, Price_id, Size) values (33,82,120,'22');
insert into product (Label_id, Color_id, Price_id, Size) values (31,81,121,'39');
insert into product (Label_id, Color_id, Price_id, Size) values (31,80,122,'29');
insert into product (Label_id, Color_id, Price_id, Size) values (30,80,123,'38');
insert into product (Label_id, Color_id, Price_id, Size) values (32,84,122,'40');
insert into product (Label_id, Color_id, Price_id, Size) values (33,81,124,'44');
insert into product (Label_id, Color_id, Price_id, Size) values (33,84,120,'46');
insert into product (Label_id, Color_id, Price_id, Size) values (32,80,124,'41');

alter table shoe AUTO_INCREMENT=50;
insert into shoe (Product_id) values (40), (41), (42), (43), (44), (45), (46), (47);

alter table divide_into_category AUTO_INCREMENT=60;
insert into divide_into_category (Shoe_id, Category_id) values (50,72);
insert into divide_into_category (Shoe_id, Category_id) values (50,75);
insert into divide_into_category (Shoe_id, Category_id) values (51,70);
insert into divide_into_category (Shoe_id, Category_id) values (51,74);
insert into divide_into_category (Shoe_id, Category_id) values (52,70);
insert into divide_into_category (Shoe_id, Category_id) values (52,75);
insert into divide_into_category (Shoe_id, Category_id) values (53,74);
insert into divide_into_category (Shoe_id, Category_id) values (53,75);
insert into divide_into_category (Shoe_id, Category_id) values (54,72);
insert into divide_into_category (Shoe_id, Category_id) values (54,74);
insert into divide_into_category (Shoe_id, Category_id) values (55,73);
insert into divide_into_category (Shoe_id, Category_id) values (55,72);
insert into divide_into_category (Shoe_id, Category_id) values (56,73);
insert into divide_into_category (Shoe_id, Category_id) values (56,70);
insert into divide_into_category (Shoe_id, Category_id) values (57,71);


