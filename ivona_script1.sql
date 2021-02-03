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





select*from price;
select*from product;
