-- Sử dụng database
USE quanly_sinhvien;

-- Hiển thị cấu trúc bảng trước khi ALTER
DESCRIBE sinh_vien;

-- Dùng ALTER TABLE ... ADD để thêm mới cột email (kiểu chuỗi)
ALTER TABLE sinh_vien
ADD COLUMN email VARCHAR(100);

-- Kiểm tra cấu trúc bảng sau khi thêm cột email
DESCRIBE sinh_vien;

-- Dùng ALTER TABLE ... MODIFY để đổi kiểu dữ liệu của cột diem_gpa sang một kiểu số khác phù hợp hơn
ALTER TABLE sinh_vien
MODIFY COLUMN diem_gpa FLOAT;

-- Kiểm tra cấu trúc bảng sau khi đổi kiểu dữ liệu diem_gpa
DESCRIBE sinh_vien;

-- Dùng ALTER TABLE ... DROP COLUMN để xóa bỏ một cột không còn cần thiết (ví dụ ngay_sinh)
ALTER TABLE sinh_vien
DROP COLUMN ngay_sinh;

-- Kiểm tra cấu trúc bảng sau khi xóa cột ngay_sinh
DESCRIBE sinh_vien;
    
-- Lấy ra danh sách sinh viên
SELECT * FROM sinh_vien