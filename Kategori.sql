CREATE TABLE Kategori (
    Kategori VARCHAR(255) COLLATE utf8mb4_general_ci PRIMARY KEY,
    Keterangan VARCHAR(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Tidak ada Keterangan',
    Gambar_Kategori VARCHAR(255) COLLATE utf8mb4_general_ci NOT NULL
);

INSERT INTO Kategori (Kategori, Keterangan, Gambar_Kategori) VALUES
('Sarapan', 'Jadikan harimu lebih berenergi dengan menu sarapan yang tepat.', 'Sarapan.png');,
('Makan Siang', 'Isi kembali energimu dengan menu makan siang yang lezat dan bergizi.', 'MakanSiang.png');,
('Makan Malam', 'Akhiri harimu dengan makan malam yang nikmat dan menenangkan.', 'MakanMalam.png'),
('Resep Ayam', 'Kreasikan hidangan ayam yang sederhana namun penuh rasa.', 'ResepAyam.png'),
('Resep Daging', 'Olah daging menjadi sajian spesial yang menggugah selera.', 'ResepDaging.png'),
('Resep Seafood', 'Nikmati kesegaran laut dengan resep seafood favoritmu.', 'ResepSeafood.png'),
('Resep Sayuran', 'Jadikan sayuran lebih istimewa dengan sentuhan resep unik.', 'ResepSayuran'),
('Dessert', 'Lengkapi momen manismu dengan dessert yang mudah dibuat.', 'Dessert.png'),;