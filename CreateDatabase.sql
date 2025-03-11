-- SQLite
-- Create Publisher table
CREATE TABLE Publisher (
    Publisher_ID INTEGER PRIMARY KEY,
    Name TEXT NOT NULL,
    Email TEXT,
    Address TEXT,
    Phone TEXT
);

-- Create Book table
CREATE TABLE Book (
    ISBN INTEGER PRIMARY KEY,
    Title TEXT NOT NULL,
    Price REAL,
    Category TEXT,
    Year INTEGER,
    Stock INTEGER,
    Publisher_ID INTEGER,
    FOREIGN KEY (Publisher_ID) REFERENCES Publisher(Publisher_ID)
);

-- Create Author table
CREATE TABLE Author (
    Author_ID INTEGER PRIMARY KEY,
    F_Name TEXT,
    M_Name TEXT,
    L_Name TEXT
);

-- Create Written_By table (many-to-many relationship between Book and Author)
CREATE TABLE Written_By (
    ISBN INTEGER,
    Author_ID INTEGER,
    PRIMARY KEY (ISBN, Author_ID),
    FOREIGN KEY (ISBN) REFERENCES Book(ISBN),
    FOREIGN KEY (Author_ID) REFERENCES Author(Author_ID)
);

-- Create Warehouse table
CREATE TABLE Warehouse (
    Warehouse_ID INTEGER PRIMARY KEY,
    Address TEXT,
    Capacity INTEGER,
    Used_Space INTEGER
);

-- Create Are_Stored table (many-to-many relationship between Book and Warehouse)
CREATE TABLE Are_Stored (
    ISBN INTEGER,
    Warehouse_ID INTEGER,
    PRIMARY KEY (ISBN, Warehouse_ID),
    FOREIGN KEY (ISBN) REFERENCES Book(ISBN),
    FOREIGN KEY (Warehouse_ID) REFERENCES Warehouse(Warehouse_ID)
);

-- Create Employee table
CREATE TABLE Employee (
    Employee_ID INTEGER PRIMARY KEY,
    F_Name TEXT,
    M_Name TEXT,
    L_Name TEXT,
    SSN TEXT,
    Phone TEXT,
    Salary REAL
);

-- Create Worker table (subclass of Employee)
CREATE TABLE Worker (
    Employee_ID INTEGER PRIMARY KEY,
    FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID)
);

-- Create Guard table (subclass of Employee)
CREATE TABLE Guard (
    Employee_ID INTEGER PRIMARY KEY,
    FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID)
);

-- Create Manager table (subclass of Employee)
CREATE TABLE Manager (
    Employee_ID INTEGER PRIMARY KEY,
    FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID)
);

-- Create Customer table
CREATE TABLE Customer (
    Customer_ID INTEGER PRIMARY KEY,
    F_Name TEXT,
    M_Name TEXT,
    L_Name TEXT,
    Email TEXT,
    Address TEXT,
    Phone TEXT,
    Account_ID INTEGER,
    Total_Orders INTEGER
);

-- Create Payment_Method table
CREATE TABLE Payment_Method (
    Payment_Method_ID INTEGER PRIMARY KEY
);

-- Create Cash table (subclass of Payment_Method)
CREATE TABLE Cash (
    Payment_Method_ID INTEGER PRIMARY KEY,
    FOREIGN KEY (Payment_Method_ID) REFERENCES Payment_Method(Payment_Method_ID)
);

-- Create Check table (subclass of Payment_Method)
CREATE TABLE Check_Payment (
    Payment_Method_ID INTEGER,
    Account_ID INTEGER PRIMARY KEY,
    Routing_ID INTEGER,
    FOREIGN KEY (Payment_Method_ID) REFERENCES Payment_Method(Payment_Method_ID)
);

-- Create Card table (subclass of Payment_Method)
CREATE TABLE Card (
    Payment_Method_ID INTEGER,
    Type TEXT,
    Card_ID INTEGER PRIMARY KEY,
    Expiration TEXT, -- Stored as YYYY-MM-DD
    SSV TEXT,
    FOREIGN KEY (Payment_Method_ID) REFERENCES Payment_Method(Payment_Method_ID)
);

-- Create Orders table
CREATE TABLE Orders (
    Order_ID INTEGER PRIMARY KEY,
    Total REAL,
    Day INTEGER,
    Month INTEGER,
    Year INTEGER
);

-- Create Place table (relationship between Customer and Order)
CREATE TABLE Place (
    Customer_ID INTEGER,
    Order_ID INTEGER,
    PRIMARY KEY (Customer_ID, Order_ID),
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID),
    FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID)
);

-- Create Pays_For table (relationship between Customer and Payment_Method)
CREATE TABLE Pays_For (
    Customer_ID INTEGER,
    Payment_Method_ID INTEGER,
    Order_ID INTEGER,
    PRIMARY KEY (Customer_ID, Payment_Method_ID, Order_ID),
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID),
    FOREIGN KEY (Payment_Method_ID) REFERENCES Payment_Method(Payment_Method_ID)
     FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID)
);

-- Create Is_Fulfilled table (relationship between Order and Employee)
CREATE TABLE Is_Fulfilled (
    Order_ID INTEGER,
    Employee_ID INTEGER,
    PRIMARY KEY (Order_ID, Employee_ID),
    FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID),
    FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID)
);

-- Create Are_Purchased table (many-to-many relationship between Book and Order)
CREATE TABLE Are_Purchased (
    ISBN INTEGER,
    Order_ID INTEGER,
    Quantity INTEGER,
    PRIMARY KEY (ISBN, Order_ID),
    FOREIGN KEY (ISBN) REFERENCES Book(ISBN),
    FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID)
);

-- Create Has table (relationship between Employee and Warehouse)
CREATE TABLE Has (
    Employee_ID INTEGER,
    Warehouse_ID INTEGER,
    PRIMARY KEY (Employee_ID, Warehouse_ID),
    FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID),
    FOREIGN KEY (Warehouse_ID) REFERENCES Warehouse(Warehouse_ID)
);

-- Create Is_Guarded table (relationship between Guard and Warehouse)
CREATE TABLE Is_Guarded (
    Guard_ID INTEGER,
    Warehouse_ID INTEGER,
    PRIMARY KEY (Guard_ID, Warehouse_ID),
    FOREIGN KEY (Guard_ID) REFERENCES Guard(Employee_ID),
    FOREIGN KEY (Warehouse_ID) REFERENCES Warehouse(Warehouse_ID)
);

-- Create Is_Managed table (relationship between Manager and Warehouse)
CREATE TABLE Is_Managed (
    Manager_ID INTEGER,
    Warehouse_ID INTEGER,
    PRIMARY KEY (Manager_ID, Warehouse_ID),
    FOREIGN KEY (Manager_ID) REFERENCES Manager(Employee_ID),
    FOREIGN KEY (Warehouse_ID) REFERENCES Warehouse(Warehouse_ID)
);