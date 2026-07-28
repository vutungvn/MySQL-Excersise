-- Sử dụng cơ sử dữ liệu
USE librarydb;

-- Sử dụng lệnh ALTER TABLE với từ khóa ADD COLUMN để bổ sung thêm cột Price (kiểu DECIMAL) vào bảng
ALTER TABLE books
ADD COLUMN Price DECIMAL(10,2);

-- Sử dụng lệnh ALTER TABLE với từ khóa MODIFY COLUMN để nâng cấp chiều dài dữ liệu của cột Author từ VARCHAR(100) lên VARCHAR(255)
ALTER TABLE books
MODIFY COLUMN AUTHOR VARCHAR(255);

-- Kiểm tra lại cấu trúc bảng sau khi chỉnh sửa
DESCRIBE Books;

-- Thực hiện lệnh TRUNCATE TABLE để làm sạch toàn bộ dữ liệu hiện có trong bảng sách, đưa số đếm tự động tăng về ban đầu nhưng vẫn phải giữ lại khung cấu trúc
TRUNCATE TABLE books;

-- Kiểm tra lại bảng sau khi xóa
SELECT * 
FROM books;
