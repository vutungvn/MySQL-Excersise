-- Sử dụng database
USE quanly_sinhvien;

-- Kiểm tra sinh viên có id = 1
SELECT *
FROM sinh_vien
WHERE id = 1;

-- Viết lệnh UPDATE để sửa giá trị cột email cho một sinh viên cụ thể (lọc theo id), bắt buộc có WHERE
UPDATE sinh_vien
SET email = "vantung@gmail.com" 
WHERE id = 1;

-- Viết lệnh DELETE để xóa một bản ghi cụ thể (theo id) và một lệnh DELETE khác để xóa nhiều bản ghi theo điều kiện (ví dụ điểm GPA dưới ngưỡng), bắt buộc có WHERE
-- Xóa sinh viên có id = 2
DELETE FROM sinh_vien
WHERE id = 2;

-- Xóa các sinh viên có gpa <= 3.5
DELETE FROM sinh_vien
WHERE diem_gpa <= 3.5;

/* 
======================================================
CÂU HỎI LÝ THUYẾT: HẬU QUẢ NẾU QUÊN MỆNH ĐỀ WHERE
------------------------------------------------------
1. Đối với lệnh UPDATE:
   - Nếu KHÔNG có mệnh đề WHERE, tất cả các dòng (bản ghi) trong bảng sẽ bị ghi đè dữ liệu mới.
   - Ví dụ: UPDATE sinh_vien SET email = 'test@gmail.com'; -> Toàn bộ sinh viên trong trường đều bị đổi email thành test@gmail.com, mất sạch dữ liệu email cũ.

2. Đối với lệnh DELETE:
   - Nếu KHÔNG có mệnh đề WHERE, tất cả các dòng dữ liệu trong bảng sẽ bị XÓA SẠCH TRẮNG (tương tự TRUNCATE nhưng chậm hơn và tốn log ghi nhận).
   - Ví dụ: DELETE FROM sinh_vien; -> Mất toàn bộ danh sách sinh viên hiện có.
======================================================
*/