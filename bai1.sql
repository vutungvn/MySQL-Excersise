-- Tạo cơ sơ dữ liệu
CREATE DATABASE IF NOT EXISTS LibraryDB;
USE LibraryDB;

-- Tạo bảng Books
CREATE TABLE IF NOT EXISTS Books (
  BookID INT AUTO_INCREMENT PRIMARY KEY,
  Title  VARCHAR(255) NOT NULL,
  Author VARCHAR(100),
  PublishedYear INT
)