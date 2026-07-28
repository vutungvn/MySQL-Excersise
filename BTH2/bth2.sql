-- Sử dụng database
USE quanly_sinhvien;

-- Thực hiện chèn 1 dòng dữ liệu bằng lệnh INSERT INTO đơn (không cần điền giá trị cho cột AUTO_INCREMENT)
INSERT INTO sinh_vien (ho_ten, ngay_sinh, diem_gpa)
VALUES ('Nguyễn Văn Tùng', '2004-05-15', 3.65);

-- Thực hiện chèn nhiều dòng dữ liệu cùng lúc (tối thiểu 5 dòng) bằng một câu lệnh INSERT INTO duy nhất
INSERT INTO sinh_vien (ho_ten, ngay_sinh, diem_gpa)
VALUES 
    ('Trần Thị Mai', '2004-08-20', 3.80),
    ('Lê Văn Hùng', '2003-12-10', 3.20),
    ('Phạm Thị Lan', '2005-01-05', 3.65),
    ('Hoàng Văn Nam', '2004-11-30', 2.90),
    ('Vũ Thị Hương', '2004-03-22', 3.95);
    
-- Lấy ra danh sách sinh viên
SELECT * FROM sinh_vien