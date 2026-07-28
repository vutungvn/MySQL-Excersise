-- Tạo cơ sở dữ liệu quanly_sinhvien
CREATE DATABASE quanly_sinhvien;

-- Sử dụng database
USE quanly_sinhvien;

-- Tạo bảng
CREATE TABLE sinh_vien (
  id INT PRIMARY KEY AUTO_INCREMENT,
  ho_ten VARCHAR(100) NOT NULL,
  ngay_sinh DATE,
  diem_gpa  DECIMAL(3,2)
);

-- Xem cấu trúc bảng
DESCRIBE sinh_vien;
