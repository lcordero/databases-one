/* 
References: 
> https://guru99.es/views/
> https://www.oodlestechnologies.com/blogs/Importance-Of-Views-In-SQL/
*/

USE relationships;
CREATE VIEW `my_view`  AS SELECT products.name AS `Product Name`, price AS `Product Price`, suppliers.name AS `Supplier Name`
       FROM products_suppliers 
          JOIN products  ON products_suppliers.productID = products.id
          JOIN suppliers ON products_suppliers.supplierID = suppliers.id
       WHERE price < 8000;