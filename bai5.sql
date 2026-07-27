-- Tạo csdl sales
CREATE DATABASE sales;
-- DÙNG db sales
USE sales;

-- Tạo bảng Customers
CREATE TABLE Customers (
	CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    FullName VARCHAR(100) NOT NULL,
    Email VARCHAR(100)
);

-- Tạo bảng Orders
CREATE TABLE Orders (
	OrderID INT PRIMARY KEY AUTO_INCREMENT,
    OrderDate DATETIME,
    CustomerID INT,
    foreign key (CustomerID) references Customers(CustomerID)
);

-- Thêm dữ liệu
INSERT INTO Customers (FullName, Email)
VALUES 
("Nguyễn Văn A", "vana@gmail.com"),
("Nguyễn Văn B", "vanb@gmail.com");

INSERT INTO Orders (OrderDate, CustomerID)
VALUES 
("2026-07-25 09:30:00", 1),
("2026-07-26 09:30:00", 1),
("2026-07-27 09:30:00", 2);

-- Viết lệnh hiển thị danh sách đơn hàng gồm: Mã đơn hàng, Ngày đặt hàng và 
-- Tên khách hàng tương ứng sở hữu đơn hàng đó.
SELECT OrderID as "Mã đơn hàng", OrderDate as "Ngày đặt hàng", FullName as "Tên khách hàng"
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID;
