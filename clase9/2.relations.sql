-- ===== 1:1 Relationship =====
-- The product description is for a specific Product only
USE relationships;
SELECT products.id as ProductID, price, product_details.comment
       FROM products 
          JOIN product_details ON products.id = product_details.productID
       WHERE price < 8000;



-- ===== 1:N Relationship =====
-- A supplier can distribute many products
USE relationships;
SELECT products.name, price, suppliers.name 
       FROM products 
          JOIN suppliers ON products.supplierID =  suppliers.id
       WHERE price < 18000;
 
 

-- ===== N:N Relationship =====
-- A supplier can distribute many products
-- A product can be distributted by many Suppliers
USE relationships;
SELECT products.name AS `Product Name`, price, suppliers.name AS `Supplier Name`
       FROM products_suppliers 
          JOIN products  ON products_suppliers.productID = products.id
          JOIN suppliers ON products_suppliers.supplierID = suppliers.id
       WHERE price < 8000;
       
       
       
       