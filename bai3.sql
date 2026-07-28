-- Sử dụng cơ sử dữ liệu
USE librarydb;

-- Tìm và hiển thị tất cả các cuốn sách được xuất bản sau năm 2020 (Sử dụng toán tử >).
SELECT *
FROM books
WHERE PublishedYear > 2020;

-- Tìm các cuốn sách có tên tác giả là 'Nguyen Van A' HOẶC có tiêu đề sách bắt đầu bằng cụm từ 'Lập trình' (Sử dụng toán tử OR và từ khóa LIKE kết hợp ký tự %)
SELECT *
FROM books
WHERE Author = 'Nguyen Van A' OR Title LIKE "Lập trình%";

-- Liệt kê danh sách sách và sắp xếp giảm dần theo năm xuất bản, nếu trùng năm thì sắp xếp tăng dần theo tiêu đề, giới hạn chỉ lấy 2 bản ghi đầu tiên (Sử dụng ORDER BY và LIMIT)
SELECT *
FROM books
ORDER BY PublishedYear DESC, Title ASC 
LIMIT 2;

