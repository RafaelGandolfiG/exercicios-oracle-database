CREATE TABLE Customers (
  customerId NUMBER PRIMARY KEY,
  name VARCHAR2(15),
  dept VARCHAR2(10)
);

CREATE TABLE Employee (
  empId NUMBER PRIMARY KEY,
  name VARCHAR2(15) NOT NULL,
  dept VARCHAR2(10) NOT NULL,
  customerId NUMBER,
  CONSTRAINT fk_emp_customer FOREIGN KEY (customerId) REFERENCES Customers(customerId)
);

CREATE TABLE Orders (
  orderId NUMBER PRIMARY KEY,
  empId NUMBER,
  customerId NUMBER,
  item VARCHAR2(15),
  amount VARCHAR2(10),
  CONSTRAINT fk_emp FOREIGN KEY (empId) REFERENCES Employee(empId),
  CONSTRAINT fk_customer FOREIGN KEY (customerId) REFERENCES Customers(customerId)
);

INSERT INTO Customers VALUES (101, 'ClienteA', 'Vendas');
INSERT INTO Customers VALUES (102, 'ClienteB', 'TI');
INSERT INTO Customers VALUES (103, 'ClienteC', 'RH');
INSERT INTO Customers VALUES (104, 'ClienteD', 'Financeiro');
INSERT INTO Customers VALUES (105, 'ClienteE', 'Vendas');
INSERT INTO Customers VALUES (106, 'ClienteF', 'TI');
INSERT INTO Customers VALUES (107, 'ClienteG', 'RH');
INSERT INTO Customers VALUES (108, 'ClienteH', 'Financeiro');
INSERT INTO Customers VALUES (109, 'ClienteI', 'Vendas');
INSERT INTO Customers VALUES (110, 'ClienteJ', 'TI');

INSERT INTO Employee VALUES (1, 'Ana', 'Vendas', 101);
INSERT INTO Employee VALUES (2, 'Bruno', 'TI', 102);
INSERT INTO Employee VALUES (3, 'Carlos', 'RH', 103);
INSERT INTO Employee VALUES (4, 'Diana', 'Financeiro', 104);
INSERT INTO Employee VALUES (5, 'Eduardo', 'Vendas', 105);
INSERT INTO Employee VALUES (6, 'Fernanda', 'TI', 106);
INSERT INTO Employee VALUES (7, 'Gustavo', 'RH', 107);
INSERT INTO Employee VALUES (8, 'Helena', 'Financeiro', 108);
INSERT INTO Employee VALUES (9, 'Igor', 'Vendas', 109);
INSERT INTO Employee VALUES (10, 'Julia', 'TI', 110);

INSERT INTO Orders VALUES (1001, 1, 101, 'Notebook', '3500');
INSERT INTO Orders VALUES (1002, 2, 102, 'Mouse', '50');
INSERT INTO Orders VALUES (1003, 3, 103, 'Teclado', '120');
INSERT INTO Orders VALUES (1004, 4, 104, 'Monitor', '900');
INSERT INTO Orders VALUES (1005, 5, 105, 'Impressora', '600');
INSERT INTO Orders VALUES (1006, 6, 106, 'Cadeira', '700');
INSERT INTO Orders VALUES (1007, 7, 107, 'Mesa', '800');
INSERT INTO Orders VALUES (1008, 8, 108, 'Headset', '200');
INSERT INTO Orders VALUES (1009, 9, 109, 'Webcam', '300');
INSERT INTO Orders VALUES (1010, 10, 110, 'HD', '450');