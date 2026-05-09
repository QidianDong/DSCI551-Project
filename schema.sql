DROP TABLE IF EXISTS OrderLine;
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Inventory;
DROP TABLE IF EXISTS Customers;

CREATE TABLE Customers (
    CustomerID SERIAL PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100)
);

CREATE TABLE Inventory (
    InventoryID SERIAL PRIMARY KEY,
    BouquetName VARCHAR(100),
    StockQuantity INT,
    Price DECIMAL(10, 2)
);

CREATE TABLE Orders (
    OrderID SERIAL PRIMARY KEY,
    CustomerID INT REFERENCES Customers(CustomerID),
    OrderDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    TotalAmount DECIMAL(10, 2)
);

CREATE TABLE OrderLine (
    OrderID INT REFERENCES Orders(OrderID),
    InventoryID INT REFERENCES Inventory(InventoryID),
    Quantity INT,
    PRIMARY KEY (OrderID, InventoryID)
);
