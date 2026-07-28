-- Sử dụng database
USE quanly_sinhvien;

-- Viết câu lệnh SELECT chỉ lấy các cột cụ thể (không dùng SELECT *) và đặt alias bằng AS cho ít nhất một cột.
SELECT ho_ten AS 'Họ và Tên', diem_gpa AS 'Điểm trung bình'
FROM sinh_vien;

-- Viết câu lệnh SELECT có mệnh đề WHERE sử dụng toán tử so sánh (ví dụ điểm GPA lớn hơn một ngưỡng) kết hợp toán tử logic AND/OR
SELECT *
FROM sinh_vien
WHERE diem_gpa >= 3 AND id <= 5;

-- Viết câu lệnh SELECT dùng LIKE với ký tự % để tìm sinh viên theo họ tên gần đúng
SELECT * 
FROM sinh_vien
WHERE ho_ten LIKE 'Trần%'

-- Viết câu lệnh SELECT kết hợp ORDER BY (sắp xếp giảm dần theo điểm GPA) và LIMIT (chỉ lấy 3 bản ghi đầu)
SELECT *
FROM sinh_vien
ORDER BY diem_gpa DESC 
LIMIT 3;