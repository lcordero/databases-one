CREATE DATABASE relationships;

USE relationships;

CREATE TABLE suppliers (
  id  INT NOT NULL,
  name  TEXT  NULL,
  PRIMARY KEY (id)
);

CREATE TABLE products (
         id    INT NOT NULL AUTO_INCREMENT,
         productCode  VARCHAR(3) NOT NULL DEFAULT "",
         name         VARCHAR(30) NOT NULL DEFAULT "",
         quantity     INT NOT NULL DEFAULT "0",
         price        DOUBLE(7,2) NOT NULL DEFAULT "0.00",
         supplierID   INT NOT NULL DEFAULT 0,
         PRIMARY KEY  (id),
		 FOREIGN KEY (supplierID) REFERENCES suppliers (id)
);

CREATE TABLE product_details (
  productID  INT NOT NULL,
  comment  TEXT  NULL,
  PRIMARY KEY (productID),
  FOREIGN KEY (productID) REFERENCES products (id)
);

CREATE TABLE products_suppliers (
  productID  INT NOT NULL,
  supplierID  INT NOT NULL,
  PRIMARY KEY (productID, supplierID),
  FOREIGN KEY (productID)  REFERENCES products  (id),
  FOREIGN KEY (supplierID) REFERENCES suppliers (id)
);

INSERT INTO suppliers 
VALUES (2001, 'Distribuidora "MM"'),
(2002, 'Distribuidora "ZZ"');

INSERT INTO `relationships`.`products` (`id`, `productCode`, `name`, `quantity`, `price`, `supplierID`) 
VALUES ('1001', 'CLO', 'Cloro', '12', '3000', '2001'),
('1002', 'JAB', 'Jabón', '49', '5000', '2002'),
('1003', 'CHI', 'Chicharrones', '98', '4000', '2001');

INSERT INTO product_details VALUES (1001, 'Producto de limpieza profunda - Cloro los conejos');

INSERT INTO products_suppliers VALUES (1001, 2001), (1001, 2002), (1002, 2001), (1002, 2002), (1003, 2001), (1003, 2002)

