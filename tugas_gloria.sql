-- query 1
CREATE TABLE products(
id VARCHAR(9) NOT NULL,
product_name VARCHAR (70) NOT NULL,
price VARCHAR(9) NOT NULL,
quantity VARCHAR(10) NOT NULL );
DESCRIBE products;
-- query 2
INSERT INTO products (id,product_name,price,quantity)
VALUES('P001','Laptop Asus','1200000','50'),
('P002','PC Lenovo','1900000','35'),
('P003','Mesin Cuci','1300000','56'),
('P004','AC Bu Jessica','150000','9');
-- query 3
SELECT AVG(price) FROM products;
SELECT * FROM products where price > 1137500;
-- query 4
UPDATE products
SET stok ='75'
WHERE id ='P003';
-- query 5
SELECT SUM(quantity) AS total_quantity FROM products;
-- query 6
SELECT * FROM products where quantity > 20 AND price < 15000000 ;
-- query 7
SELECT * FROM products  ORDER BY price ASC ;
-- query 8
DELETE FROM products WHERE quantity < 10 ; 
query ini ketika dijalankan akan menghapus data produk yang quantitynya kurang dari 10
-- query 9
SELECT (price * quantity) AS total_quantity FROM products;
-- query 10
ALTER TABLE products
ADD COLUMN discount DECIMAL(5,2);
