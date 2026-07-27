-- Chọn cơ sở dữ liệu LibraryDB để thao tác
USE LibraryDB;

-- ===================================================
-- Yêu cầu 1: Sử dụng lệnh INSERT để thêm cùng lúc 3 dòng dữ liệu mới
-- ===================================================
INSERT INTO Books (Title, Author, PublishedYear)
VALUES 
    ('Lập trình Java căn bản', 'Nguyễn Văn A', 2020),
    ('Cấu trúc dữ liệu và giải thuật', 'Trần Thị B', 2021),
    ('Thiết kế hệ thống Database', 'Lê Văn C', 2019);

-- Kiểm tra dữ liệu sau khi INSERT
SELECT * FROM books;

-- ===================================================
-- Yêu cầu 2: Sử dụng lệnh UPDATE kết hợp với mệnh đề WHERE để cập nhật lại năm xuất bản (PublishedYear) 
-- của một cuốn sách cụ thể dựa theo BookID.
-- ===================================================
UPDATE books SET PublishedYear=2026
WHERE BookID = 1;

-- Kiểm tra dữ liệu sau khi UPDATE của bookID có id = 1
SELECT * FROM books 
WHERE BookID = 1;

-- ===================================================
-- Yêu cầu 3: Sử dụng lệnh DELETE kết hợp với mệnh đề WHERE để xóa một cuốn sách cụ thể khỏi bảng Books.
DELETE FROM books 
WHERE BookID = 3;
-- ===================================================

-- Kiểm tra dữ liệu sau khi DELETE
SELECT * FROM books;

