-- Skrip Inisialisasi Lingkungan Praktikum Basis Data
-- Nama: Muhammad Wildan | NIM: 24430100

-- 1. Buat Basis Data Kerja (jika belum ada)
CREATE DATABASE IF NOT EXISTS kopma_100;

-- 2. Buat Pengguna Kerja Utama (jika belum ada)
CREATE USER IF NOT EXISTS 'muhammadwildan_100'@'localhost' IDENTIFIED BY 'PasswordKerja#100';

-- 3. Berikan Hak Akses Penuh pada Skema kopma_100
GRANT ALL PRIVILEGES ON kopma_100.* TO 'muhammadwildan_100'@'localhost';

-- 4. Buat Pengguna Tamu (Latihan 1) jika belum ada
CREATE USER IF NOT EXISTS 'tamu_100'@'localhost' IDENTIFIED BY 'PasswordTamu#100';
GRANT SELECT ON kopma_100.* TO 'tamu_100'@'localhost';

-- 5. Segarkan Hak Akses
FLUSH PRIVILEGES;