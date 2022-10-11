CREATE TABLE Bakery (
    OrderID INTEGER PRIMARY KEY,
    BagelID INTEGER NOT NULL,
    OrderDATE TIMESTAMP,
    fName VARCHAR(20),
    lName VARCHAR(25),
    Address1 NCHAR,
    Address2 NCHAR,
    City NCHAR,
    St VARCHAR(15),
    Zip INT(5),
    Phone INT(10),
    DelFee MONEY,
    BName VARCHAR(10),
    BDesc VARCHAR(25),
    BPrice MONEY,
    BQty INTEGER,
    Notes TEXT
);

INSERT INTO Bakery (BagelID, OrderDATE, fName, lName, Address1, City, St, Zip, Phone, DelFee)
VALUES (2, current_date,'Ryan', 'Smith', '12200 Shaw Rd.', 'Charlevoix', 'MI', 49720, 2316752883, '$2.39');

INSERT INTO Bakery (BagelID, OrderDATE, fName, lName, Address1, City, St, Zip, Phone, DelFee)
VALUES (2,current_date, 'Annie', 'Smith', '12200 Shaw Rd.', 'Charlevoix', 'MI', 49720, 2313733008, '$2.39');

INSERT INTO Bakery (BagelID, OrderDATE, fName, lName, Address1, City, St, Zip, Phone, DelFee)
VALUES (2,current_date, 'Steve', 'Lenhart', '13825 Forest Dr.', 'Charlevoix', 'MI', 49720, 2316750150, '$2.39');

INSERT INTO Bakery (BagelID, OrderDATE, fName, lName, Address1, City, St, Zip, Phone, DelFee)
VALUES (2,current_date, 'Lori', 'Lenhart', '13825 Forest Dr.', 'Charlevoix', 'MI', 49720, 2316750620, '$2.39');

SELECT * FROM Bakery;
