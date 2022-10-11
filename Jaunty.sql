CREATE TABLE EMPLOYEE (
  employee_id INTEGER,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  hire_date DATE,
  job_title VARCHAR(30),
  shop_id INTEGER,
  PRIMARY KEY (employee_id),
  FOREIGN KEY (shop_id) REFERENCES COFFEE_SHOP(shop_id)
);

CREATE TABLE COFFEE_SHOP (
  shop_id INTEGER,
  shop_name VARCHAR(50),
  city VARCHAR(50),
  state CHAR(2),
  PRIMARY KEY (shop_id)
);

CREATE TABLE COFFEE (
  coffee_id INTEGER,
  shop_id INTEGER,
  supplier_id INTEGER,
  coffee_name VARCHAR(30),
  price_per_pound NUMERIC(5,2),
  PRIMARY KEY (coffee_id),
  FOREIGN KEY (shop_id) REFERENCES COFFEE_SHOP(shop_id)
  FOREIGN KEY (supplier_id) REFERENCES SUPPLIER(supplier_id)
);

CREATE TABLE SUPPLIER (
  supplier_id INTEGER,
  company_name VARCHAR(50),
  country VARCHAR(30),
  sales_contact_name VARCHAR(60),
  email VARCHAR(50) NOT NULL,
  PRIMARY KEY (supplier_id)
);

INSERT INTO EMPLOYEE
VALUES 
  (1,'Lucky','Day',1986-12-12,'Amigo',1),
  (2,'Dusty','Bottoms',1986-12-12,'Amigo',2),
  (3,'Ned','Nederlander',1986-12-12,'Amigo',3);

INSERT INTO COFFEE_SHOP
VALUES 
  (1,'Studio 1','Santo Poco','MX'),
  (2,'Studio 2','Santo Poco','MX'),
  (3,'Studio 3','Santo Poco','MX');

INSERT INTO COFFEE
VALUES 
  (1,1,1,'Colombia',3.52),
  (2,2,2,'Nicaragua',2.87),
  (3,3,3,'Ethiopia',4.75);

INSERT INTO SUPPLIER
VALUES 
  (1,'Royal Coffee','United States','Tweek 1','drip@coffee.com'),
  (2,'Royal NY','United States','Tweek 2','pourover@coffee.com'),
  (3,'Cafe Imports','United States','Tweek 3','espresso@coffee.com');

CREATE VIEW employeeName AS 
  SELECT 
  employee_id,
  first_name ||' '|| last_name AS employee_full_name,
  hire_date,
  job_title,
  shop_id
  FROM EMPLOYEE;


CREATE INDEX coffee_index
ON COFFEE (coffee_name);

SELECT *
FROM COFFEE
WHERE shop_id == 1;


SELECT 
  EMPLOYEE.employee_id,
  EMPLOYEE.first_name,
  EMPLOYEE.last_name,
  EMPLOYEE.shop_id,
  COFFEE.coffee_id,
  COFFEE.shop_id,
  COFFEE.supplier_id,
  COFFEE.coffee_name,
  SUPPLIER.supplier_id,
  SUPPLIER.company_name
FROM EMPLOYEE
LEFT JOIN COFFEE
ON EMPLOYEE.shop_id = COFFEE.shop_id
LEFT JOIN SUPPLIER
ON COFFEE.supplier_id = SUPPLIER.supplier_id;
