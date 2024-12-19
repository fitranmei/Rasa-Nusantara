Create DATABASE rasanusantara;

CREATE TABLE resep (
    ID_Resep INT AUTO_INCREMENT PRIMARY KEY,
    ID_User INT,
    Gambar_Resep VARCHAR(255),
    Nama_Resep VARCHAR(255),
    Kategori VARCHAR(255),
    Waktu VARCHAR(255),
    Bahan longtext,
    Langkah longtext, 
    Deskripsi varchar(100),
    FOREIGN KEY (ID_User) REFERENCES user(ID_User),
);

-- Sarapan
INSERT INTO Resep (ID_User, Gambar_Resep, Nama_Resep, Kategori, Waktu, Bahan, Langkah, Deskripsi) VALUES
(
    1,
    'lontong_sayur.jpg',
    'Lontong Sayur',
    'Sarapan',
    '30 Menit',
    '["300 gr kacang panjang", "1 bh wortel potong dadu", "1 bh waluh jipang potong dadu", "2 bh kentang potong dadu", "150 ml santan instant", "1200 ml air", "5 sdm bumbu dasar merah", "2 sdm bumbu dasar kuning", "1 sdm ketumbar bubuk", "4 lembar daun salam", "1/2 sdm garam (selera)", "1 sdt gula pasir (selera)", "Bawang goreng", "Telur rebus", "Sambal", "Kerupuk ikan", "Teri goreng"]',
    '["Siapkan bahannya", "Tumis bumbu dasar merah dan bumbu dasar kuning, ketumbar bubuk dengan daun salam hingga harum", "Tambahkan air biarkan mendidih", "Masukkan sayuran yang keras lebih dahulu hingga mulai empuk (waluh jipang, wortel, dan kentang)", "Masukkan kacang panjang, tambahkan santan instant aduk sesekali agar santan tidak pecah", "Tambahkan garam dan gula pasir", "Koreksi rasa dan angkat setelah semua sayurannya sudah matang", "Penyajian: potong lontong dan letakkan di piring saji, tuang sayur dan sajikan bersama telur rebus, kerupuk, ikan teri goreng dan taburan bawang goreng"]',
    'Hidangan berisi lontong dengan sayur berkuah santan berbumbu, disajikan dengan telur rebus, kerupuk, teri goreng, dan bawang goreng.'
),
(
    1,
    'mie_goreng_bakso.jpg',
    'Mie Goreng Bakso',
    'Sarapan',
    '30 Menit',
    '["1 bungkus mie urai (140gr)", "1 lembar kubis, sobek-sobek", "5 btr bakso, iris", "1 btr telur", "3 siung bawang merah", "1 siung bawang putih", "Sesuai selera cabai", "Secukupnya lada", "1/3 sdt garam", "2 sdm kecap manis"]',
    '["Rebus mie kering hingga lemas dan tiriskan", "Haluskan bumbu halus", "Panaskan wajan dengan 2 sdm minyak goreng", "Buat dulu telur orak-arik, lalu sisihkan", "Tuang sedikit minyak, tumis bumbu halus hingga harum", "Masukkan semua bahan lain", "Beri kecap, lada garam, tes rasa", "Aduk hingga hingga bumbu merata", "Segera sajikan"]',
    'Mie goreng sederhana dengan bakso, sayur, telur, dan bumbu kecap manis.'
),
(
    1,
    'ketoprak_bihun.jpg',
    'Ketoprak Bihun',
    'Sarapan',
    '15 Menit',
    '["1 Bks Bihun instan Rose Brand", "1/2 batang Lontong, potong dadu", "2 buah Tahu Goreng, potong2", "Segenggam Tauge, seduh air panas", "2 SDM Bawang goreng", "1 butir Telur ceplok goreng untuk pelengkap", "Kerupuk", "2 buah Cabe rawit", "2 siung Bawang putih", "2 SDM Kacang tanah sangrai", "1 sdt Kecap Manis", "1/4 sdt Garam", "1/2 sdm Gula merah", "2 SDM Air matang"]',
    '["Siapkan bahan", "Rebus bihun Rose Brand hingga matang, tiriskan lalu campur dengan bumbunya", "Sisihkan", "Siapkan piring saji, masukkan lontong, taoge, tahu dan bihun", "Lalu siram dengan bumbu kacang ulek, beri toping bawang goreng, telur dan kerupuk", "Siap disajikan, simple dan enak"]',
    'Makanan khas dengan bihun, tahu, lontong, tauge, dan bumbu kacang, dilengkapi telur dan kerupuk.'
),
(
    1,
    'soto_mie_bogor.jpg',
    'Soto Mie Bogor',
    'Sarapan',
    '2 Jam',
    '["750 gram daging sengkel/has dalam", "250 gram daging sandung lamur/ kikil", "3 liter air", "7 butir cengkeh", "4 batang sereh", "6 lembar daun salam", "15 lembar daun jeruk", "1 1/2 biji pala geprak", "14 butir bawang merah", "18 butir bawang putih", "9 butir kemiri sangrai", "2 sdt jinten sangrai", "2 sdm ebi sangrai", "1/2 jempol jahe", "1 jempol lengkuas", "16 cabe keriting", "10 cabe rawit", "3 sdt kaldu bubuk", "3 sdt gula pasir", "2 sdt garam", "2,5 sdt penyedap", "15 gram tepung terigu", "1 sdm tepung maizena", "1 butir telur", "1 sdm minyak", "320 ml air", "2 papan bihun jagung", "1-2 sdm saus tiram", "2 batang daun bawang", "2 batang daun seledri", "1/2 sdt kaldu bubuk / sesuai selera", "250 gram mie kuning basah/mie telor", "500 gram kentang goreng", "2 buah tomat iris kotak", "2 batang daun bawang dan seledri", "1-2 buah jeruk limau iris"]',
    '["Sangrai bumbu yg perlu disangrai", "Haluskan bersama bumbu yg perlu dihaluskan+minyak. Lalu tumis hingga matang", "Jika ingin tdk pedas cabe dipisahkan saja dihaluskan dan ditumis terpisah", "Campur bersama air, daging dan bumbu aromatik", "Presto hingga empuk", "Campur bahan kulit risol : dicampur lalu disaring lalu dimasak di wajan untuk membuat kulitnya", "Rebus bihun jagung lalu masak dengan bumbu tersebut", "Koreksi rasa", "Di isi daun salam kulit risol lalu goreng di api kecil sampai matang", "Beri pelengkap siap disajikan"]',
    'Soto khas Bogor berisi daging, mie, bihun, kentang goreng, dan risoles, berkuah kaya rempah.'
),
(
    1,
    'telur_ceplok_balado.jpg',
    'Telur Ceplok Balado',
    'Sarapan',
    '15 Menit',
    '["5 Telur", "5 bawang merah", "5 bawang putih", "5 cabai", "daun jeruk", "daun bawang", "ladaku", "penyedap", "garam", "gula"]',
    '["Ceplok telur", "Haluskan bumbu tadi", "Tumis bumbu hingga harum", "Lalu kasih air hingga mendidih", "Masukkan telur yang sudah di ceplok", "Koreksi rasa jadi deh simpel banget kan"]',
    'Telur goreng dilengkapi dengan sambal balado pedas.'
),
(
    1,
    'sayur_pecel_bumbu_kacang.jpg',
    'Sayur Pecel Bumbu Kacang',
    'Sarapan',
    '15 Menit',
    '["150 gr Bumbu pecel", "180 ml Air panas", "150 gr Kacang panjang", "1 Ikat kecil sawi hijau", "1 ikat selada air", "200 gr kol / kubis", "secukupnya Daun kemangi", "1 Buah mentimun baby (potong kotak kecil)"]',
    '["Masak air hingga mendidih masukan sayuran secara bertahap untuk kacang panjang (5 mnt) sayuran lainnya 2-3 mnt / sesuaikan selera kematangan kecuali kemangi dan mentimun", "Aduk pelan bumbu pecel sambil tuang air panas hingga rata", "Kekentalan sesuaikan selera", "Tata sayuran dalam piring, siap menemani sarapan pagiku bersama keluarga"]',
    'Sayuran rebus segar dengan bumbu kacang gurih.'
),
(
    1,
    'nasi_sate_telur_puyuh.jpg',
    'Nasi Sate Telur Puyuh',
    'Sarapan',
    '30 Menit',
    '["Secukupnya nasi putih", "6 buah telur puyuh yang sudah direbus", "6 buah bakso ayam", "1 buah sosis ayam, potong menjadi 6 bagian", "1 sdm kecap pedas Bango", "1 sdt bubuk cabe atau sesuai selera", "Bubuk Cabe Homemade", "50 ml air", "6 batang tusuk sate", "Secukupnya garam"]',
    '["Campurkan air, kecap manis, bubuk cabe dan garam. Masak hingga mendidih", "Masukkan telur puyuh, bakso dan sosis. Masak hingga air menyusut dan bumbu meresap. Koreksi rasa kemudian matikan api", "Setelah agak dingin, tata menjadi sate dengan isi telur puyuh, bakso dan sosis", "Siapkan nasi dan sate di piring. Siram dengan sisa bumbu. Siap disajikan untuk sarapan"]',
    'Nasi dengan sate telur puyuh, bakso, dan sosis.'
),
(
    1,
    'bubur_ayam.jpg',
    'Bubur Ayam',
    'Sarapan',
    '1 Jam',
    '["250 gr paha ayam", "100 gr beras", "1 jempol besar jahe, iris halus", "2 siung bawang putih, cincang halus", "1 batang daun bawang potong bulat", "1 liter air", "1 sdt garam", "1/4 sdt penyedap rasa", "Sedikit merica bubuk", "2 sdm minyak goreng"]',
    '["Siapkan bahan terlebih dulu", "Cuci bersih beras lalu tiriskan", "Cuci bersih ayam, rebus sampai matang, angkat suwir", "Air rebusan saring, didihkan kembali", "Panaskan minyak, masukkan bawang putih tumis sampai harum", "Masukkan beras, aduk rata, biarkan sedikit mengkilat", "Masukkan tumisan beras tadi kedalam air kaldu, aduk rata", "Tambahkan garam, penyedap rasa & merica bubuk, aduk rata", "Masak beras sampai lembek", "Tes rasa, bila sudah sesuai masukkan ayam, jahe & daun bawang,aduk rata, masak sebentar", "Bubur ayam siap disajikan"]',
    'Bubur nasi lembut dengan ayam suwir dan jahe.'
),
(
    1,
    'nasi_uduk.jpg',
    'Nasi Uduk',
    'Sarapan',
    '1 Jam',
    '["500 gr beras", "1 sdm garam", "1/2 butir kelapa (untuk diambil santan)", "2 lembar daun pandan"]',
    '["Cuci beras terlebih dahulu", "Siapkan santan", "Campurkan beras, santan, garam dan daun salam dalam wajan, masak sampai santan larut, matikan kompor, tutup wajannya selama 5 menit", "Lanjut kukus nasi selama 15 menit", "Siapkan oseng bihun untuk lauknya", "Siapkan juga tempe orek, dan telur dadar", "Siap disajikan"]',
    'Nasi gurih berbumbu santan dengan lauk pelengkap.'
),
(
    1,
    'nasi_goreng_telur.jpg',
    'Nasi Goreng Telur',
    'Sarapan',
    '15 Menit',
    '["2 centong nasi putih", "3 siung bawang merah, iris", "1 butir telur", "1 sdm margarin", "1 sdm kecap manis", "1/2 sdt garam", "1/3 sdt kaldu bubuk"]',
    '["Panaskan margarin. Kemudian masukkan telur, orak arik. Sisihkan ke pinggir wajan", "Masukkan bawang merah dan aduk sampai layu", "Masukkan nasi putih, garam, kaldu bubuk dan kecap manis.aduk rata", "Sajikan"]',
    'Nasi goreng sederhana dengan telur dan bumbu khas.'
);

--Makan Siang
INSERT INTO Resep (ID_User, Gambar_Resep, Nama_Resep, Kategori, Waktu, Bahan, Langkah, Deskripsi) VALUES
(
    1,
    'ayam_goreng_lengkuas.jpg',
    'Ayam Goreng Lengkuas',
    'Makan Siang',
    '1 Jam',
    '["1 ekor ayam (potong sesuai selera)", "3 lembar daun salam", "2 batang serai (memarkan)", "100 gram lengkuas (parut)", "5 siung bawang putih", "6 butir bawang merah", "1 sdt ketumbar", "1 sdt garam", "500 ml air"]',
    '["Haluskan bawang putih, bawang merah, dan ketumbar, lalu tumis hingga harum", "Tambahkan daun salam, serai, dan lengkuas, aduk rata", "Masukkan ayam dan air, bumbui dengan garam, masak hingga ayam empuk", "Goreng ayam hingga kecokelatan dan kering", "Sajikan ayam goreng dengan taburan lengkuas dan sambal"]',
    'Ayam goreng dengan bumbu lengkuas yang gurih dan rempah khas.'
),
(
    1,
    'nasi_timbel_komplit.jpg',
    'Nasi Timbel Komplit',
    'Makan Siang',
    '45 Menit',
    '["2 piring nasi putih", "4 lembar daun pisang", "1 potong ayam goreng", "1 buah tahu goreng", "1 buah tempe goreng", "Sambal dan lalapan (timun, daun kemangi)"]',
    '["Panaskan daun pisang di atas api hingga layu agar mudah dibentuk", "Bungkus nasi dengan daun pisang dan kukus sebentar", "Goreng ayam, tahu, dan tempe hingga matang", "Sajikan nasi timbel dengan ayam, tahu, tempe, sambal, dan lalapan", "Hidangkan selagi hangat"]',
    'Nasi timbel hangat dengan lauk komplit dan lalapan segar.'
),
(
    1,
    'sayur_asem_betawi.jpg',
    'Sayur Asem Betawi',
    'Makan Siang',
    '45 Menit',
    '["100 gram kacang panjang (potong-potong)", "2 buah jagung manis (potong-potong)", "100 gram melinjo", "100 gram daun melinjo", "2 buah labu siam (potong dadu)", "3 sdm asam jawa", "2 liter air", "5 siung bawang merah", "2 siung bawang putih", "2 buah cabai merah"]',
    '["Rebus air hingga mendidih, tambahkan asam jawa", "Haluskan bawang merah, bawang putih, dan cabai, lalu masukkan ke dalam air", "Tambahkan jagung, melinjo, dan labu siam, masak hingga setengah matang", "Masukkan kacang panjang dan daun melinjo, masak hingga empuk", "Sajikan sayur asem dengan nasi dan ikan asin"]',
    'Sayur asem khas Betawi dengan rasa asam segar dan sayuran lengkap.'
),
(
    1,
    'ikan_patin_bumbu_kuning.jpg',
    'Ikan Patin Bumbu Kuning',
    'Makan Siang',
    '45 Menit',
    '["500 gram ikan patin", "3 lembar daun jeruk", "2 batang serai (memarkan)", "2 buah tomat (iris)", "1 sdm air jeruk nipis", "2 liter air", "5 siung bawang putih", "7 butir bawang merah", "2 cm kunyit", "1 cm jahe", "1 sdt garam"]',
    '["Lumuri ikan patin dengan air jeruk nipis, diamkan 15 menit", "Tumis bumbu halus, daun jeruk, dan serai hingga harum", "Tambahkan air, biarkan mendidih", "Masukkan ikan patin dan tomat, masak hingga matang", "Sajikan dengan nasi hangat dan sambal"]',
    'Ikan patin berkuah kuning dengan bumbu rempah yang segar.'
),
(
    1,
    'tahu_isi_goreng.jpg',
    'Tahu Isi Goreng',
    'Makan Siang',
    '30 Menit',
    '["10 buah tahu putih (belah, keluarkan isi tengahnya)", "100 gram wortel (parut)", "100 gram kol (iris halus)", "2 siung bawang putih (cincang halus)", "1 sdt garam", "1/2 sdt lada", "100 gram tepung terigu", "1 sdm tepung beras", "Air secukupnya"]',
    '["Tumis bawang putih hingga harum", "Masukkan wortel dan kol, bumbui dengan garam dan lada", "Isi tahu dengan tumisan sayur", "Buat adonan tepung terigu, tepung beras, dan air hingga kental", "Celupkan tahu ke dalam adonan, lalu goreng hingga kecokelatan", "Sajikan dengan cabai rawit"]',
    'Tahu goreng isi sayuran dengan tekstur renyah dan isian lezat.'
),
(
    1,
    'nasi_goreng_ikan_asin.jpg',
    'Nasi Goreng Ikan Asin',
    'Makan Siang',
    '30 Menit',
    '["2 piring nasi putih", "100 gram ikan asin jambal (potong kecil, goreng)", "2 butir telur", "3 siung bawang putih (cincang)", "4 butir bawang merah (iris)", "2 buah cabai merah (iris)", "1 sdm kecap manis", "1/2 sdt garam", "1/4 sdt lada"]',
    '["Tumis bawang putih, bawang merah, dan cabai hingga harum", "Masukkan telur dan orak-arik hingga matang", "Tambahkan nasi putih dan ikan asin goreng", "Bumbui dengan kecap manis, garam, dan lada", "Aduk rata dan sajikan dengan kerupuk serta acar"]',
    'Nasi goreng gurih dengan ikan asin jambal dan bumbu sederhana.'
),
(
    1,
    'ayam_woku.jpg',
    'Ayam Woku',
    'Makan Siang',
    '1 Jam',
    '["500 gram ayam (potong-potong)", "3 lembar daun jeruk", "2 batang serai (memarkan)", "3 buah tomat (iris)", "1 ikat daun kemangi", "500 ml air", "6 siung bawang putih", "8 butir bawang merah", "5 buah cabai merah besar", "1 cm jahe", "1 cm kunyit", "1 sdt garam"]',
    '["Tumis bumbu halus, daun jeruk, dan serai hingga harum", "Masukkan ayam dan aduk hingga ayam berubah warna", "Tambahkan air dan tomat, masak hingga ayam empuk", "Masukkan daun kemangi, aduk rata, dan matikan api", "Sajikan ayam woku dengan nasi putih hangat"]',
    'Ayam woku dengan cita rasa pedas dan aroma daun kemangi yang khas.'
),
(
    1,
    'dendeng_balado.jpg',
    'Dendeng Balado',
    'Makan Siang',
    '1 Jam',
    '["500 gram daging sapi (iris tipis lebar)", "5 buah cabai merah besar", "8 buah cabai rawit", "5 siung bawang merah", "2 siung bawang putih", "1 buah tomat", "1 sdt garam", "1/2 sdt gula"]',
    '["Rebus daging hingga empuk, lalu goreng hingga kering", "Haluskan cabai, bawang merah, bawang putih, dan tomat", "Tumis bumbu hingga harum, tambahkan garam dan gula", "Masukkan daging goreng dan aduk hingga bumbu merata", "Sajikan dendeng balado dengan nasi hangat"]',
    'Daging sapi goreng dengan bumbu balado pedas dan gurih.'
),
(
    1,
    'gulai_kambing.jpg',
    'Gulai Kambing',
    'Makan Siang',
    '1 Jam 30 Menit',
    '["500 gram daging kambing", "500 ml santan", "3 lembar daun salam", "2 batang serai (memarkan)", "3 cm jahe (memarkan)", "1 sdt garam", "6 siung bawang putih", "8 butir bawang merah", "5 buah cabai merah besar", "2 cm kunyit", "1 cm lengkuas", "1 sdt ketumbar"]',
    '["Tumis bumbu halus, daun salam, serai, dan jahe hingga harum", "Masukkan daging kambing, aduk rata", "Tambahkan santan dan garam, masak dengan api kecil hingga empuk", "Aduk sesekali agar santan tidak pecah", "Sajikan gulai kambing dengan nasi hangat dan acar mentimun"]',
    'Gulai kambing dengan kuah santan kental dan rempah yang kaya rasa.'
),
(
    1,
    'nasi_rawon.jpg',
    'Nasi Rawon',
    'Makan Siang',
    '1 Jam 30 Menit',
    '["500 gram daging sapi (potong kecil)", "2 liter air", "3 lembar daun salam", "2 batang serai (memarkan)", "3 cm lengkuas (memarkan)", "1 sdm kluwek (ambil isinya)", "5 siung bawang putih", "8 butir bawang merah", "3 buah cabai merah besar", "1 sdt garam"]',
    '["Rebus daging dengan daun salam, serai, dan lengkuas hingga empuk", "Haluskan bawang putih, bawang merah, cabai, dan kluwek, lalu tumis hingga harum", "Masukkan bumbu ke dalam kuah daging", "Tambahkan garam dan masak hingga bumbu meresap", "Sajikan rawon dengan nasi, tauge, telur asin, dan kerupuk", "Tambahkan sambal dan irisan jeruk nipis"]',
    'Nasi rawon dengan kuah hitam khas dan potongan daging sapi empuk.'
);

-- Resep Seafood
INSERT INTO Resep (ID_User, Gambar_Resep, Nama_Resep, Kategori, Waktu, Bahan, Langkah, Deskripsi) VALUES
(1, 'cumi_hitam_masak_santan.jpg', 'Cumi Hitam Masak Santan', 'Resep Seafood', '45 Menit', 
 '["500 gram cumi (bersihkan, sisakan tinta)", "1 buah jeruk nipis", "3 siung bawang putih (cincang)", "5 butir bawang merah (iris)", "2 lembar daun salam", "2 batang serai (memarkan)", "1 cm lengkuas (geprek)", "500 ml santan", "1/2 sdt garam", "1/2 sdt gula pasir"]',
 '["Lumuri cumi dengan jeruk nipis, diamkan 10 menit lalu bilas", "Tumis bawang putih, bawang merah, daun salam, serai, dan lengkuas hingga harum", "Masukkan cumi dan tinta, aduk rata. Tambahkan santan, garam, dan gula", "Masak dengan api kecil hingga cumi matang dan kuah mengental"]',
 'Cumi dengan tinta dimasak dalam santan kental dengan bumbu rempah, memberikan rasa gurih dan pedas yang nikmat.'),

(1, 'udang_goreng_tepung_asam_manis.jpg', 'Udang Goreng Tepung Asam Manis', 'Resep Seafood', '30 Menit', 
 '["300 gram udang (kupas, sisakan ekor)", "100 gram tepung bumbu", "1 butir telur", "1 buah bawang bombai (iris)", "2 siung bawang putih (cincang)", "2 sdm saus tomat", "1 sdm saus sambal", "1 sdt gula", "100 ml air", "Minyak untuk menggoreng"]',
 '["Balur udang dengan tepung, celup ke telur, lalu goreng hingga kuning keemasan", "Tumis bawang putih dan bawang bombai hingga harum, tambahkan saus tomat, saus sambal, gula, dan air", "Masukkan udang goreng, aduk hingga saus merata"]',
 'Udang goreng tepung yang renyah, disajikan dengan saus asam manis yang lezat, cocok untuk hidangan cepat saji.'),

(1, 'ikan_kuah_kuning.jpg', 'Ikan Kuah Kuning', 'Resep Seafood', '45 Menit', 
 '["2 ekor ikan kakap (potong-potong)", "3 siung bawang putih", "5 butir bawang merah", "3 buah cabai merah", "1 cm kunyit", "1 cm jahe", "2 lembar daun jeruk", "1 batang serai (memarkan)", "500 ml air", "1/2 sdt garam", "1/4 sdt gula"]',
 '["Haluskan bawang, cabai, kunyit, dan jahe, lalu tumis dengan daun jeruk dan serai hingga harum", "Tambahkan air, garam, dan gula, masukkan ikan", "Masak hingga ikan matang dan kuah meresap"]',
 'Ikan kakap dimasak dalam kuah kuning yang segar dengan bumbu kunyit, jahe, dan rempah lainnya, memberikan rasa pedas dan gurih yang pas.'),

(1, 'kepiting_lada_hitam.jpg', 'Kepiting Lada Hitam', 'Resep Seafood', '45 Menit', 
 '["2 ekor kepiting (rebus, potong)", "1 buah bawang bombai (iris)", "3 siung bawang putih (cincang)", "1 sdm lada hitam", "2 sdm saus tiram", "1 sdm kecap manis", "1 sdm kecap asin", "1/2 sdt garam", "1/4 sdt gula", "100 ml air"]',
 '["Tumis bawang bombai dan bawang putih hingga harum", "Masukkan kepiting, lada hitam, saus tiram, kecap manis, kecap asin, garam, gula, dan air", "Masak hingga bumbu meresap dan mengental"]',
 'Kepiting dimasak dengan lada hitam, saus tiram, dan kecap manis, menghasilkan rasa pedas dan gurih yang kaya.'),

(1, 'ikan_tongkol_balado.jpg', 'Ikan Tongkol Balado', 'Resep Seafood', '30 Menit', 
 '["500 gram ikan tongkol (goreng)", "5 buah cabai merah", "3 buah cabai rawit", "5 butir bawang merah", "2 siung bawang putih", "1 buah tomat", "1/2 sdt garam", "1/4 sdt gula"]',
 '["Haluskan cabai, bawang, dan tomat, lalu tumis hingga harum", "Tambahkan garam dan gula, masak hingga bumbu matang", "Masukkan ikan tongkol, aduk hingga bumbu merata"]',
 'Ikan tongkol goreng dibaluri dengan bumbu balado pedas yang menggugah selera, memberikan rasa gurih dan pedas yang nikmat.'),

(1, 'sup_ikan_batam.jpg', 'Sup Ikan Batam', 'Resep Seafood', '45 Menit', 
 '["500 gram ikan kakap (potong)", "1 buah jeruk nipis", "3 siung bawang putih (cincang)", "5 butir bawang merah (iris)", "2 buah tomat (potong)", "2 batang serai (memarkan)", "2 lembar daun salam", "1 cm jahe (geprek)", "750 ml air", "1/2 sdt garam", "1/4 sdt lada"]',
 '["Lumuri ikan dengan jeruk nipis, diamkan 10 menit", "Tumis bawang, serai, daun salam, dan jahe hingga harum", "Tambahkan air, masukkan ikan, tomat, garam, dan lada. Masak hingga ikan matang"]',
 'Sup ikan dengan ikan kakap, tomat, dan rempah khas Batam, menyajikan kuah segar dengan rasa gurih dan pedas.'),

(1, 'udang_bakar_madu.jpg', 'Udang Bakar Madu', 'Resep Seafood', '30 Menit', 
 '["300 gram udang (kupas, sisakan ekor)", "2 sdm madu", "1 sdm kecap manis", "1 sdm saus tiram", "1/2 sdt garam", "1/4 sdt lada"]',
 '["Campur madu, kecap, saus tiram, garam, dan lada", "Lumuri udang dengan bumbu, diamkan 15 menit", "Bakar udang sambil sesekali dioles bumbu hingga matang"]',
 'Udang bakar dengan saus madu, kecap manis, dan saus tiram, menghasilkan rasa manis gurih yang lezat.'),

(1, 'ikan_asam_manis.jpg', 'Ikan Asam Manis', 'Resep Seafood', '45 Menit', 
 '["500 gram ikan nila (goreng)", "1 buah bawang bombai (iris)", "2 siung bawang putih (cincang)", "1 buah tomat (potong dadu)", "2 sdm saus tomat", "1 sdm saus sambal", "1/2 sdt garam", "1/4 sdt gula", "100 ml air", "1 buah nanas"]',
 '["Tumis bawang bombai dan bawang putih hingga harum", "Tambahkan tomat, saus tomat, saus sambal, garam, gula, dan air. Masak hingga mendidih", "Masukkan ikan goreng, aduk hingga saus merata"]',
 'Ikan nila goreng disiram dengan saus asam manis yang terbuat dari tomat, nanas, dan saus sambal, menciptakan rasa segar dan pedas.'),

(1, 'pepes_udang_daun_kemangi.jpg', 'Pepes Udang Daun Kemangi', 'Resep Seafood', '45 Menit', 
 '["300 gram udang (bersihkan)", "1 buah jeruk nipis", "5 siung bawang merah (haluskan)", "3 siung bawang putih (haluskan)", "3 buah cabai merah (haluskan)", "1 batang serai (memarkan)", "Daun kemangi secukupnya", "Daun pisang untuk membungkus"]',
 '["Lumuri udang dengan jeruk nipis, bilas", "Campur udang dengan bumbu halus, serai, dan kemangi", "Bungkus dengan daun pisang, kukus selama 30 menit"]',
 'Udang dibumbui dengan rempah dan daun kemangi, dibungkus daun pisang dan dikukus, menghasilkan hidangan aromatik yang gurih.'),

(1, 'tumis_kerang_hijau_bumbu_kuning.jpg', 'Tumis Kerang Hijau Bumbu Kuning', 'Resep Seafood', '30 Menit', 
 '["500 gram kerang hijau (rebus)", "3 siung bawang putih (cincang)", "5 butir bawang merah (iris)", "1 cm kunyit (haluskan)", "1 cm jahe (haluskan)", "2 sdm minyak goreng", "1/2 sdt garam", "1/2 sdt gula", "1 sdt air asam jawa"]',
 '["Tumis bawang putih dan bawang merah hingga harum", "Masukkan kunyit dan jahe, aduk rata", "Tambahkan kerang, garam, gula, dan air asam jawa. Masak hingga matang"]',
 'Kerang hijau yang dimasak dengan bumbu kunyit dan jahe, memberikan rasa gurih dan sedikit asam yang segar.');

-- Makan Malam
INSERT INTO Resep (ID_User, Gambar_Resep, Nama_Resep, Kategori, Waktu, Bahan, Langkah, Deskripsi) VALUES
(1, 'nasi_goreng_kampung.jpg', 'Nasi Goreng Kampung', 'Makan Malam', '30 Menit',
'["2 piring nasi putih", "2 butir telur", "3 siung bawang putih (cincang)", "5 butir bawang merah (iris)", "5 buah cabai rawit (iris)", "1 sdm kecap manis", "1 sdm saus tiram", "1/2 sdt garam", "1/4 sdt lada"]',
'["Tumis bawang putih, bawang merah, dan cabai hingga harum", "Masukkan telur, orak-arik hingga matang", "Tambahkan nasi, kecap manis, dan saus tiram", "Aduk rata sambil menambahkan garam dan lada", "Sajikan selagi hangat"]',
'Nasi goreng kampung dengan bumbu sederhana dan cita rasa khas.'),

(1, 'ayam_bakar_kecap.jpg', 'Ayam Bakar Kecap', 'Makan Malam', '1 Jam',
'["1 ekor ayam (potong 4 bagian)", "5 sdm kecap manis", "3 siung bawang putih (haluskan)", "5 butir bawang merah (haluskan)", "1 sdt ketumbar", "2 lembar daun salam", "1 batang serai (memarkan)", "500 ml air", "1/2 sdt garam"]',
'["Tumis bumbu halus, daun salam, dan serai hingga harum", "Masukkan ayam, tambahkan air dan kecap, masak hingga empuk", "Tambahkan garam dan aduk hingga bumbu meresap", "Panggang ayam sambil diolesi sisa bumbu hingga kecokelatan", "Sajikan dengan sambal dan lalapan"]',
'Ayam bakar kecap dengan rasa manis gurih dan aroma rempah.'),

(1, 'sop_buntut.jpg', 'Sop Buntut', 'Makan Malam', '1 Jam 30 Menit',
'["1 kg buntut sapi (potong-potong)", "3 liter air", "2 buah kentang (potong dadu)", "2 buah wortel (iris)", "3 siung bawang putih (cincang)", "5 butir bawang merah (iris)", "1 batang daun bawang (iris)", "1/2 sdt garam", "1/4 sdt lada", "1 sdm kaldu sapi"]',
'["Rebus buntut sapi hingga empuk, buang buih yang muncul", "Tumis bawang putih dan bawang merah, masukkan ke dalam kuah", "Tambahkan kentang dan wortel, masak hingga sayuran matang", "Masukkan garam, lada, dan kaldu sapi, aduk rata", "Sajikan dengan taburan daun bawang"]',
'Sop buntut dengan kuah segar dan daging empuk.'),

(1, 'mie_goreng_jawa.jpg', 'Mie Goreng Jawa', 'Makan Malam', '30 Menit',
'["300 gram mie kuning (rebus)", "2 butir telur", "3 siung bawang putih (cincang)", "5 butir bakso (iris)", "1 sdm kecap manis", "1/2 sdt garam", "1/4 sdt lada"]',
'["Tumis bawang putih hingga harum, masukkan telur, orak-arik", "Tambahkan bakso dan mie kuning", "Tuang kecap manis, garam, dan lada", "Aduk hingga bumbu meresap", "Sajikan dengan taburan bawang goreng"]',
'Mie goreng Jawa dengan rasa manis gurih dan tambahan bakso.'),

(1, 'pecel_lele.jpg', 'Pecel Lele', 'Makan Malam', '30 Menit',
'["4 ekor lele (bersihkan)", "1 buah jeruk nipis", "1 sdt garam", "5 buah cabai merah", "3 buah cabai rawit", "3 butir bawang merah", "1 buah tomat", "1 sdm terasi"]',
'["Lumuri lele dengan jeruk nipis dan garam, diamkan 15 menit", "Goreng lele hingga matang dan renyah", "Haluskan cabai, bawang, tomat, dan terasi untuk sambal", "Tumis sambal hingga matang dan harum", "Sajikan lele dengan sambal dan lalapan"]',
'Pecel lele dengan sambal pedas dan lalapan segar.'),

(1, 'bebek_goreng_sambal_ijo.jpg', 'Bebek Goreng Sambal Ijo', 'Makan Malam', '1 Jam',
'["1 ekor bebek (potong 4)", "3 lembar daun salam", "2 batang serai (memarkan)", "1 sdt garam", "1/2 sdt lada", "500 ml air", "10 buah cabai hijau", "3 siung bawang putih", "5 butir bawang merah", "1 buah tomat hijau"]',
'["Rebus bebek dengan daun salam, serai, garam, dan lada hingga empuk", "Goreng bebek hingga kecokelatan", "Haluskan bahan sambal, lalu tumis hingga matang", "Sajikan bebek dengan sambal hijau", "Tambahkan lalapan sebagai pelengkap"]',
'Bebek goreng renyah dengan sambal ijo pedas segar.'),

(1, 'tahu_gejrot.jpg', 'Tahu Gejrot', 'Makan Malam', '30 Menit',
'["10 buah tahu pong (potong kecil)", "3 buah cabai rawit", "2 siung bawang merah", "1 siung bawang putih", "150 ml air asam jawa", "2 sdm gula merah (sisir)", "1/2 sdt garam"]',
'["Goreng tahu pong hingga kecokelatan, tiriskan", "Haluskan cabai, bawang merah, dan bawang putih", "Rebus air asam, gula merah, dan garam hingga mendidih, masukkan bumbu halus", "Siram tahu dengan kuah bumbu", "Sajikan tahu gejrot dalam mangkuk kecil"]',
'Tahu gejrot khas dengan kuah asam manis pedas.'),

(1, 'ikan_pesmol.jpg', 'Ikan Pesmol', 'Makan Malam', '45 Menit',
'["2 ekor ikan kembung (bersihkan)", "3 siung bawang putih", "5 butir bawang merah", "3 buah cabai merah besar (iris serong)", "2 lembar daun jeruk", "1 batang serai (memarkan)", "1 sdt garam", "1/2 sdt gula pasir", "200 ml air"]',
'["Goreng ikan hingga matang, tiriskan", "Tumis bawang putih dan bawang merah hingga harum", "Tambahkan cabai, daun jeruk, dan serai, aduk rata", "Masukkan air, garam, dan gula, lalu masukkan ikan", "Masak hingga bumbu meresap, sajikan"]',
'Ikan pesmol dengan bumbu kuning segar dan rempah.'),

(1, 'cumi_sambal_hijau.jpg', 'Cumi Sambal Hijau', 'Makan Malam', '45 Menit',
'["500 gram cumi (bersihkan)", "5 buah cabai hijau besar", "10 buah cabai rawit hijau", "5 butir bawang merah", "2 siung bawang putih", "1 buah tomat hijau", "1 sdt garam", "1/4 sdt gula pasir"]',
'["Rebus cumi sebentar, tiriskan", "Haluskan cabai, bawang merah, bawang putih, dan tomat", "Tumis bumbu hingga harum", "Masukkan cumi, tambahkan garam dan gula, masak hingga bumbu meresap", "Sajikan cumi dengan nasi hangat"]',
'Cumi sambal hijau dengan rasa pedas segar yang khas.'),

(1, 'nasi_uduk_komplit.jpg', 'Nasi Uduk Komplit', 'Makan Malam', '45 Menit',
'["2 gelas beras", "400 ml santan", "2 lembar daun salam", "1 batang serai (memarkan)", "1 sdt garam", "Ayam goreng", "Telur balado", "Sambal sebagai pelengkap", "Kerupuk", "Timun"]',
'["Cuci beras, masukkan ke dalam rice cooker bersama santan, daun salam, serai, dan garam", "Masak nasi hingga matang", "Goreng ayam hingga kecokelatan dan masak telur balado", "Sajikan nasi uduk dengan pelengkap dan sambal", "Tambahkan taburan bawang goreng di atas nasi"]',
'Nasi uduk komplit dengan lauk dan sambal pelengkap.');

-- Dessert
INSERT INTO Resep (ID_User, Gambar_Resep, Nama_Resep, Kategori, Waktu, Bahan, Langkah, Deskripsi) VALUES
(1, 'es_cendol_dawet.jpg', 'Es Cendol Dawet', 'Dessert', '30 Menit',
'["150 gram tepung hunkwe", "50 gram tepung beras", "700 ml air", "2 tetes pasta pandan", "Es batu secukupnya", "200 ml santan (rebus dengan 1 lembar daun pandan)", "150 gram gula merah (larutkan dengan air dan daun pandan)"]',
'["Campur tepung hunkwe, tepung beras, air, dan pasta pandan. Masak hingga mengental", "Cetak cendol menggunakan saringan, rendam dalam air es", "Sajikan cendol dengan santan, gula merah cair, dan es batu"]',
'Es cendol dawet segar dengan gula merah dan santan.'),

(1, 'pisang_goreng_madu.jpg', 'Pisang Goreng Madu', 'Dessert', '30 Menit',
'["5 buah pisang kepok (belah dua)", "100 gram tepung terigu", "1 sdm tepung beras", "1 sdm gula pasir", "1/2 sdt garam", "1 sdm madu", "150 ml air", "Minyak untuk menggoreng"]',
'["Campur tepung terigu, tepung beras, gula, garam, madu, dan air hingga adonan kental", "Celupkan pisang ke dalam adonan, lalu goreng hingga kuning keemasan", "Angkat dan sajikan hangat"]',
'Pisang goreng madu dengan tekstur renyah dan rasa manis.'),

(1, 'klepon.jpg', 'Klepon', 'Dessert', '45 Menit',
'["250 gram tepung ketan", "200 ml air hangat", "2 tetes pasta pandan", "Gula merah secukupnya (sisir halus)", "Kelapa parut kukus (untuk taburan)"]',
'["Campur tepung ketan dengan pasta pandan dan air, uleni hingga kalis", "Ambil sedikit adonan, isi dengan gula merah, bulatkan", "Rebus klepon hingga mengapung, tiriskan", "Gulingkan klepon ke kelapa parut"]',
'Klepon kenyal dengan isian gula merah dan taburan kelapa.'),

(1, 'es_pisang_ijo.jpg', 'Es Pisang Ijo', 'Dessert', '45 Menit',
'["5 buah pisang raja (kukus)", "100 gram tepung beras", "2 sdm tepung terigu", "300 ml santan", "2 tetes pasta pandan", "Sirup merah dan es batu secukupnya"]',
'["Campur tepung beras, tepung terigu, santan, dan pasta pandan. Masak hingga adonan kental", "Balut pisang dengan adonan hijau, kukus hingga matang", "Sajikan dengan sirup merah dan es batu"]',
'Es pisang ijo dengan balutan adonan hijau dan sirup manis.'),

(1, 'kolak_pisang_ubi.jpg', 'Kolak Pisang Ubi', 'Dessert', '30 Menit',
'["4 buah pisang kepok (potong-potong)", "200 gram ubi (potong dadu)", "500 ml santan", "150 gram gula merah (sisir halus)", "1 lembar daun pandan", "1/2 sdt garam"]',
'["Rebus ubi hingga setengah matang", "Masukkan santan, gula merah, daun pandan, dan garam. Aduk hingga gula larut", "Tambahkan pisang, masak hingga matang"]',
'Kolak pisang ubi dengan kuah santan manis dan legit.'),

(1, 'bubur_ketan_hitam.jpg', 'Bubur Ketan Hitam', 'Dessert', '1 Jam',
'["200 gram ketan hitam (rendam 4 jam)", "1 liter air", "150 gram gula pasir", "1/2 sdt garam", "200 ml santan"]',
'["Rebus ketan hitam dengan air hingga empuk", "Tambahkan gula dan garam, masak hingga kental", "Sajikan dengan santan"]',
'Bubur ketan hitam manis dan lembut dengan siraman santan.'),

(1, 'es_campur.jpg', 'Es Campur', 'Dessert', '30 Menit',
'["Kolang-kaling (iris tipis)", "Cincau (potong dadu)", "Nata de coco", "Alpukat (keruk)", "Kelapa muda (keruk)", "Sirup merah", "Susu kental manis", "Es serut"]',
'["Susun semua bahan dalam mangkuk", "Tambahkan sirup, susu kental manis, dan es serut", "Sajikan dingin"]',
'Es campur segar dengan aneka isian dan sirup manis.'),

(1, 'lapis_legit.jpg', 'Lapis Legit', 'Dessert', '2 Jam',
'["300 gram mentega", "250 gram gula pasir", "10 butir telur", "200 gram tepung terigu", "1 sdt vanili", "1 sdt bubuk kayu manis"]',
'["Kocok mentega dan gula hingga lembut", "Masukkan telur satu per satu sambil dikocok", "Tambahkan tepung, vanili, dan kayu manis", "Tuang adonan tipis-tipis, panggang lapis demi lapis hingga matang"]',
'Lapis legit dengan tekstur berlapis dan aroma kayu manis.'),

(1, 'serabi_kuah_kinca.jpg', 'Serabi Kuah Kinca', 'Dessert', '30 Menit',
'["200 gram tepung beras", "1 sdm tepung terigu", "300 ml santan", "1/2 sdt ragi instan", "150 gram gula merah", "200 ml air", "1 lembar daun pandan"]',
'["Campur tepung beras, tepung terigu, santan, dan ragi. Diamkan 1 jam", "Tuang adonan ke cetakan serabi, masak hingga matang", "Rebus gula merah, air, dan daun pandan untuk kuah"]',
'Serabi kuah kinca dengan rasa manis legit dan aroma pandan.'),

(1, 'kue_lumpur.jpg', 'Kue Lumpur', 'Dessert', '45 Menit',
'["200 gram kentang (kukus, haluskan)", "200 gram tepung terigu", "150 gram gula pasir", "3 butir telur", "500 ml santan", "1/2 sdt vanili", "Kismis untuk topping"]',
'["Campur kentang, gula, dan telur, kocok rata", "Tambahkan tepung, santan, dan vanili. Aduk hingga halus", "Tuang adonan ke cetakan, tambahkan kismis", "Panggang hingga matang dan kecokelatan"]',
'Kue lumpur lembut dengan topping kismis dan rasa manis.');

-- Resep Sayuran
INSERT INTO Resep (ID_User, Gambar_Resep, Nama_Resep, Kategori, Waktu, Bahan, Langkah, Deskripsi) VALUES
(1, 'terong_balado.jpg', 'Terong Balado', 'Resep Sayuran', '30 Menit', 
 '["2 buah terong ungu (400 gr)", "4 siung Baput", "7 siung bamer", "10 biji cabai merah", "9 buah cabe rawit (sesuai selera)", "2 buah tomat", "1/2 sdt garam", "1/2 sdt kaldu bubuk (royco/sedap)", "1/2 sdt terasi goreng", "3/4 siung bawang putih", "4/5 siung bawang merah", "10 biji cabai merah (sesuai selera)", "8 buah cabai rawit (sesuai selera)", "1 buah tomat", "secukupnya air, garam, penyedap, dan gula merah"]',
 '["Cuci bersih terong, potong memanjang/dadu", "Goreng terong sampai sedikit layu", "Bawang, cabai, tomat dicuci bersih lalu digoreng", "Setelah bawang, cabai dan tomat digoreng, ulek atau chopper lalu ditumis lagi sampai benar-benar matang", "Tambah sedikit air lalu masukkan bumbu penyedap dll, lalu masukkan terong, aduk rata sampai air berkurang dan bumbu meresap", "Angkat, sajikan"]',
 'Terong ungu yang digoreng hingga layu, kemudian dibaluri dengan bumbu balado pedas, menyajikan perpaduan rasa gurih dan pedas yang menggugah selera.'),

(1, 'sayur_sawi_tahu_bakso.jpg', 'Sayur Sawi Tahu Bakso', 'Resep Sayuran', '30 Menit', 
 '["6 lembar sawi putih (potong)", "2 siung bawang putih (cincang)", "1 buah tahu putih (potong kotak kecil)", "4 butir bakso (iris)", "1/2 sdt garam", "1/4 sdt lada bubuk", "1 sdt kaldu jamur"]',
 '["Tumis bawang putih dengan minyak, kemudian masukkan tahu dan bakso", "Setelah bawang harum dan tahu agak kecokelatan masukkan air, lalu sayur sawi", "Tambahkan garam, lada dan kaldu jamur. Tunggu hingga mendidih serta sawi lembut. Tes rasa, kalau sudah pas angkat dan sajikan hangat"]',
 'Sayur sawi yang dimasak bersama tahu dan bakso, disajikan dalam kuah gurih dengan tambahan lada dan kaldu jamur yang memberikan rasa lezat.'),

(1, 'tumis_kangkung_teri.jpg', 'Tumis Kangkung Teri', 'Resep Sayuran', '15 Menit', 
 '["1 ikat kangkung (petik daunnya)", "2 siung bawang putih (cincang)", "3 butir bawang merah (iris tipis)", "2 buah cabai merah (iris serong)", "50 gram teri goreng", "1/2 sdt garam", "1/4 sdt gula pasir", "1/4 sdt lada bubuk", "1 sdt saus tiram", "3 sdm minyak untuk menumis"]',
 '["Panaskan minyak, tumis bawang putih dan bawang merah hingga harum", "Masukkan cabai merah dan teri goreng, aduk hingga tercampur rata", "Tambahkan kangkung, aduk cepat hingga layu", "Bumbui dengan garam, gula, lada bubuk, dan saus tiram. Aduk rata", "Masak hingga kangkung matang namun tetap segar. Koreksi rasa", "Angkat dan sajikan selagi hangat"]',
 'Kangkung yang ditumis dengan teri goreng dan bumbu pedas, menghasilkan hidangan segar dengan rasa gurih dan pedas yang pas.'),

(1, 'sayur_bening_bayam.jpg', 'Sayur Bening Bayam', 'Resep Sayuran', '15 Menit', 
 '["1 ikat bayam (petik daunnya)", "1 buah wortel (iris tipis)", "2 siung bawang merah (iris tipis)", "1 siung bawang putih (geprek)", "1 liter air", "1/2 sdt garam", "1/4 sdt gula", "1 sdt kaldu jamur", "jagung"]',
 '["Rebus air hingga mendidih, masukkan bawang merah dan bawang putih", "Tambahkan wortel, masak hingga setengah matang", "Masukkan bayam, garam, gula, dan kaldu jamur", "Masak sebentar hingga bayam layu. Koreksi rasa dan angkat"]',
 'Sayur bening dengan bayam, wortel, dan jagung yang dimasak dalam kuah kaldu bening, memberikan rasa segar dan gurih.'),

(1, 'tumis_buncis_udang.jpg', 'Tumis Buncis Udang', 'Resep Sayuran', '30 Menit', 
 '["200 gram buncis (potong serong)", "100 gram udang (kupas)", "3 siung bawang putih (cincang)", "2 butir bawang merah (iris tipis)", "2 buah cabai merah (iris serong)", "1 sdm saus tiram", "1/2 sdt garam", "1/4 sdt lada bubuk"]',
 '["Tumis bawang putih dan bawang merah hingga harum", "Masukkan cabai dan udang, aduk hingga udang berubah warna", "Tambahkan buncis, aduk rata", "Masukkan saus tiram, garam, dan lada. Masak hingga buncis matang"]',
 'Buncis yang ditumis dengan udang, bawang putih, dan cabai, menghasilkan hidangan yang segar dan gurih, cocok sebagai lauk cepat saji.'),

(1, 'capcay_kuah.jpg', 'Capcay Kuah', 'Resep Sayuran', '30 Menit', 
 '["1/4 kol (iris kasar)", "100 gram wortel (iris tipis)", "100 gram brokoli", "50 gram jagung muda (iris serong)", "3 siung bawang putih (cincang)", "100 gram ayam (iris tipis)", "4 butir bakso (iris tipis)", "1 sdm saus tiram", "1/2 sdt garam", "1/4 sdt lada bubuk", "1 sdt kaldu ayam"]',
 '["Tumis bawang putih hingga harum, masukkan ayam dan bakso, tumis hingga matang", "Tambahkan sayuran, aduk hingga layu", "Tambahkan air, saus tiram, garam, lada, dan kaldu. Masak hingga mendidih dan sayuran matang"]',
 'Campuran sayuran seperti kol, wortel, dan brokoli dimasak dengan ayam dan bakso dalam kuah saus tiram yang gurih, menghasilkan hidangan yang lezat dan menyehatkan.'),

(1, 'sayur_lodeh.jpg', 'Sayur Lodeh', 'Resep Sayuran', '30 Menit', 
 '["1/4 buah labu siam (potong dadu)", "100 gram kacang panjang (potong 4 cm)", "1 buah terong (potong dadu)", "3 buah cabai merah (iris serong)", "3 siung bawang putih", "5 butir bawang merah", "2 lembar daun salam", "1 liter santan", "1/2 sdt garam", "1/4 sdt gula", "1 sdt kaldu bubuk"]',
 '["Tumis bawang merah, bawang putih, dan daun salam hingga harum", "Masukkan sayuran dan santan, aduk perlahan", "Tambahkan garam, gula, dan kaldu. Masak hingga sayuran matang dan kuah meresap"]',
 'Sayuran seperti labu siam, kacang panjang, dan terong dimasak dalam kuah santan dengan rempah khas Indonesia, menghasilkan hidangan yang gurih dan kaya rasa.'),

(1, 'tumis_toge_tahu.jpg', 'Tumis Toge Tahu', 'Resep Sayuran', '15 Menit', 
 '["200 gram tauge (cuci bersih)", "1 buah tahu (potong dadu)", "2 siung bawang putih (cincang)", "1 buah cabai merah (iris serong)", "1 sdm kecap asin", "1/2 sdt garam", "1/4 sdt lada"]',
 '["Goreng tahu hingga kecokelatan, angkat", "Tumis bawang putih dan cabai hingga harum", "Masukkan tauge dan tahu, tambahkan kecap asin, garam, dan lada. Aduk cepat dan angkat"]',
 'Toge dan tahu yang dimasak dengan bumbu sederhana, kecap asin, dan lada, menyajikan rasa gurih yang pas.'),

(1, 'sayur_asem.jpg', 'Sayur Asem', 'Resep Sayuran', '30 Menit', 
 '["1/4 labu siam (potong dadu)", "100 gram kacang panjang (potong)", "1 buah jagung manis (potong 3 bagian)", "1 buah tomat (potong)", "3 lembar daun salam", "2 cm lengkuas (geprek)", "1 sdm asam jawa", "1 liter air", "1/2 sdt garam", "1 sdt gula merah"]',
 '["Rebus air, daun salam, dan lengkuas hingga mendidih", "Masukkan sayuran, asam jawa, garam, dan gula merah. Masak hingga matang", "Koreksi rasa, angkat, dan sajikan"]',
 'Sayur asem dengan labu siam, kacang panjang, jagung manis, dan bumbu asam jawa yang segar, cocok disajikan sebagai hidangan penyejuk di hari panas.'),

(1, 'urap_sayur.jpg', 'Urap Sayur', 'Resep Sayuran', '30 Menit', 
 '["100 gram kacang panjang (potong 4 cm)", "100 gram tauge (cuci bersih)", "100 gram bayam (petik daunnya)", "1 buah wortel (iris korek api)", "1/2 butir kelapa parut", "3 lembar daun jeruk (iris halus)", "1/2 sdt garam", "1 sdt gula merah", "3 siung bawang putih", "5 butir bawang merah", "3 buah cabai merah", "1 cm kencur", "1/2 sdt terasi bakar"]',
 '["Rebus kacang panjang, tauge, bayam, dan wortel hingga matang, tiriskan", "Tumis bumbu halus hingga harum, lalu masukkan kelapa parut, daun jeruk, garam, dan gula merah. Aduk hingga merata", "Campurkan sayuran rebus dengan bumbu kelapa, aduk hingga tercampur rata", "Sajikan urap sebagai pendamping nasi"]',
 'Sayuran rebus seperti kacang panjang, tauge, dan bayam dicampur dengan kelapa parut berbumbu pedas, menghasilkan hidangan sehat dan lezat.');

-- Resep Daging
INSERT INTO Resep (ID_User, Gambar_Resep, Nama_Resep, Kategori, Waktu, Bahan, Langkah, Deskripsi) VALUES
(1, 'semur_daging.jpg', 'Semur Daging', 'Resep Daging', '1 Jam 30 Menit', 
 '["500 gram daging sapi (potong kotak)", "5 butir bawang merah (iris)", "3 siung bawang putih (iris)", "2 buah tomat (potong kecil)", "3 butir cengkeh", "1 batang kayu manis", "1 sdm kecap manis", "1/2 sdt pala bubuk", "1 sdt garam", "500 ml air"]',
 '["Tumis bawang merah dan bawang putih hingga harum", "Masukkan daging, tomat, cengkeh, dan kayu manis, aduk rata", "Tambahkan air, kecap manis, pala bubuk, dan garam", "Masak dengan api kecil hingga daging empuk dan kuah mengental", "Sajikan dengan nasi hangat dan taburan bawang goreng"]',
 'Daging sapi empuk dengan kuah kecap manis yang kental, dibumbui rempah aromatik seperti kayu manis dan cengkeh.'),

(1, 'sate_maranggi.jpg', 'Sate Maranggi', 'Resep Daging', '1 Jam', 
 '["500 gram daging sapi (potong dadu)", "3 sdm kecap manis", "2 sdm air asam jawa", "1 sdt garam", "1/2 sdt lada", "4 siung bawang putih", "6 butir bawang merah", "1 cm jahe", "1 sdt ketumbar"]',
 '["Haluskan bumbu, campur dengan kecap, air asam, garam, dan lada", "Lumuri daging dengan bumbu, diamkan 30 menit", "Tusuk daging pada tusukan sate", "Bakar hingga matang sambil diolesi sisa bumbu", "Sajikan dengan sambal kecap dan nasi hangat"]',
 'Sate daging sapi yang dibumbui kecap manis dan air asam jawa, dipanggang hingga matang sempurna.'),

(1, 'daging_rica_rica.jpg', 'Daging Rica-Rica', 'Resep Daging', '1 Jam', 
 '["500 gram daging sapi (iris tipis)", "5 buah cabai merah besar", "8 buah cabai rawit", "5 siung bawang merah", "3 siung bawang putih", "1 batang serai (memarkan)", "3 lembar daun jeruk", "1 sdt garam", "1/2 sdt gula"]',
 '["Haluskan cabai, bawang merah, dan bawang putih", "Tumis bumbu bersama serai dan daun jeruk hingga harum", "Masukkan daging, aduk hingga berubah warna", "Tambahkan garam dan gula, masak hingga daging empuk", "Sajikan dengan nasi dan lalapan"]',
 'Daging sapi iris tipis dimasak dengan bumbu rica pedas khas Sulawesi, cocok untuk pecinta makanan pedas.'),

(1, 'daging_lada_hitam.jpg', 'Daging Lada Hitam', 'Resep Daging', '45 Menit', 
 '["500 gram daging sapi (iris tipis)", "1 buah bawang bombay (iris panjang)", "3 siung bawang putih (cincang)", "1 sdt lada hitam tumbuk kasar", "3 sdm saus tiram", "2 sdm kecap manis", "1/2 sdt garam", "1/4 sdt gula"]',
 '["Tumis bawang putih dan bawang bombay hingga harum", "Masukkan daging, masak hingga berubah warna", "Tambahkan lada hitam, saus tiram, kecap manis, garam, dan gula", "Aduk rata dan masak hingga daging matang dan bumbu meresap", "Sajikan dengan nasi putih hangat"]',
 'Daging sapi dimasak dengan lada hitam dan saus tiram, memberikan rasa pedas dan gurih yang kaya.'),

(1, 'tongseng_daging_sapi.jpg', 'Tongseng Daging Sapi', 'Resep Daging', '1 Jam', 
 '["500 gram daging sapi (potong kecil)", "300 ml santan", "3 lembar daun salam", "2 batang serai (memarkan)", "1 buah tomat (potong kecil)", "5 buah cabai merah besar", "3 siung bawang putih", "5 butir bawang merah", "1 sdt garam", "1/2 sdt gula"]',
 '["Tumis bawang merah, bawang putih, dan cabai hingga harum", "Tambahkan daun salam dan serai, aduk rata", "Masukkan daging, tomat, dan santan, masak hingga mendidih", "Tambahkan garam dan gula, masak hingga daging empuk", "Sajikan tongseng dengan nasi hangat"]',
 'Daging sapi dimasak dengan santan, cabai, dan bumbu rempah, menyajikan rasa gurih pedas yang lezat.'),

(1, 'krengsengan_daging.jpg', 'Krengsengan Daging', 'Resep Daging', '1 Jam', 
 '["500 gram daging sapi (potong tipis)", "5 siung bawang merah (iris)", "3 siung bawang putih (iris)", "2 buah cabai merah besar (iris)", "2 sdm kecap manis", "1 sdt garam", "1/2 sdt gula", "1/2 sdt merica bubuk", "500 ml air"]',
 '["Tumis bawang merah, bawang putih, dan cabai hingga harum", "Masukkan daging, aduk hingga berubah warna", "Tambahkan kecap, garam, gula, dan merica, aduk rata", "Tuang air, masak hingga daging empuk dan bumbu meresap", "Sajikan dengan nasi hangat dan taburan bawang goreng"]',
 'Daging sapi dimasak dengan kecap manis dan rempah-rempah, menghasilkan kuah yang kental dan rasa yang manis pedas.'),

(1, 'dendeng_batokok.jpg', 'Dendeng Batokok', 'Resep Daging', '1 Jam 30 Menit', 
 '["500 gram daging sapi (iris tipis lebar)", "3 siung bawang putih", "5 butir bawang merah", "10 buah cabai merah keriting", "2 buah tomat", "1 sdt garam", "1/2 sdt gula"]',
 '["Rebus daging hingga empuk, lalu pipihkan dengan ulekan", "Goreng daging hingga kecokelatan dan kering", "Haluskan bawang, cabai, dan tomat, tumis hingga harum", "Tambahkan garam dan gula, aduk rata", "Siram bumbu di atas daging goreng dan sajikan"]',
 'Daging sapi goreng kering, dilumuri dengan bumbu halus cabai, bawang, dan tomat yang pedas gurih.'),

(1, 'bistik_daging_sapi.jpg', 'Bistik Daging Sapi', 'Resep Daging', '1 Jam', 
 '["500 gram daging sapi (iris tipis)", "1 buah bawang bombay (iris panjang)", "3 siung bawang putih (cincang)", "2 sdm saus tiram", "3 sdm kecap manis", "1 sdm margarin", "1 sdt lada hitam", "1/2 sdt garam"]',
 '["Tumis bawang putih dan bawang bombay dengan margarin hingga harum", "Masukkan daging dan masak hingga berubah warna", "Tambahkan saus tiram, kecap manis, lada hitam, dan garam", "Masak hingga daging matang dan bumbu meresap", "Sajikan dengan kentang goreng dan sayuran rebus"]',
 'Daging sapi dimasak dengan saus tiram dan kecap manis, disajikan dengan kentang goreng dan sayuran rebus.'),

(1, 'empal_gepuk.jpg', 'Empal Gepuk', 'Resep Daging', '1 Jam 30 Menit', 
 '["500 gram daging sapi (potong tebal)", "2 batang serai (memarkan)", "3 lembar daun salam", "500 ml air kelapa", "3 sdm gula merah", "1 sdt garam", "1/2 sdt ketumbar"]',
 '["Rebus daging bersama serai, daun salam, dan air kelapa hingga empuk", "Angkat dan pipihkan daging dengan ulekan", "Balur daging dengan ketumbar, garam, dan gula merah", "Goreng daging hingga kecokelatan", "Sajikan empal dengan nasi hangat dan sambal terasi"]',
 'Daging sapi rebus yang dipipihkan, kemudian digoreng hingga kecokelatan, disajikan dengan nasi dan sambal terasi.'),

(1, 'sop_iga_sapi.jpg', 'Sop Iga Sapi', 'Resep Daging', '2 Jam', 
 '["500 gram iga sapi", "2 liter air", "3 lembar daun salam", "2 batang serai (memarkan)", "3 cm jahe (memarkan)", "5 butir bawang merah (iris)", "3 siung bawang putih (iris)", "2 buah kentang (potong dadu)", "2 buah wortel (potong)", "1 sdt garam", "1/2 sdt lada bubuk"]',
 '["Rebus iga bersama daun salam, serai, dan jahe hingga empuk", "Tumis bawang merah dan bawang putih hingga harum, masukkan ke dalam kuah iga", "Tambahkan kentang dan wortel, masak hingga lunak", "Bumbui dengan garam dan lada, masak hingga matang", "Sajikan dengan taburan bawang goreng dan seledri"]',
 'Sup iga sapi dengan kuah kaldu yang kaya rasa, dilengkapi dengan sayuran seperti kentang dan wortel, sempurna untuk hidangan hangat.');

-- Resep Ayam
INSERT INTO Resep (ID_User, Gambar_Resep, Nama_Resep, Kategori, Waktu, Bahan, Langkah, Deskripsi) VALUES
(1, 'ayam_goreng_rempah.jpg', 'Ayam Goreng Rempah', 'Resep Ayam', '1 Jam', 
 '["1 ekor ayam (potong 8 bagian)", "3 batang serai (memarkan)", "4 lembar daun salam", "200 gram lengkuas parut", "500 ml air kelapa", "1 sdt garam", "1/2 sdt gula", "6 siung bawang putih", "8 butir bawang merah", "1 sdm ketumbar", "3 butir kemiri"]',
 '["Haluskan bumbu, tumis bersama lengkuas, serai, dan daun salam hingga harum", "Masukkan ayam, aduk hingga ayam berubah warna", "Tambahkan air kelapa, garam, dan gula, masak hingga air menyusut dan ayam empuk", "Goreng ayam hingga kecokelatan, sisihkan", "Goreng sisa bumbu lengkuas hingga kering dan taburkan di atas ayam"]',
 'Ayam goreng dengan taburan lengkuas renyah dan bumbu rempah yang gurih.'),

(1, 'ayam_rica_rica.jpg', 'Ayam Rica-Rica', 'Resep Ayam', '1 Jam', 
 '["1 ekor ayam (potong kecil)", "5 buah cabai merah besar", "8 buah cabai rawit", "6 siung bawang merah", "4 siung bawang putih", "2 batang serai (memarkan)", "3 lembar daun jeruk", "1 buah tomat", "1 sdt garam", "1/2 sdt gula"]',
 '["Haluskan cabai, bawang merah, bawang putih, dan tomat", "Tumis bumbu halus bersama serai dan daun jeruk hingga harum", "Masukkan ayam, aduk hingga berubah warna", "Tambahkan garam dan gula, masak hingga ayam matang dan bumbu meresap", "Sajikan dengan nasi hangat dan lalapan"]',
 'Ayam pedas gurih dengan bumbu rica khas Sulawesi yang meresap sempurna.'),

(1, 'ayam_bakar_taliwang.jpg', 'Ayam Bakar Taliwang', 'Resep Ayam', '1 Jam 30 Menit', 
 '["1 ekor ayam kampung (belah dua)", "5 buah cabai merah besar", "8 buah cabai rawit", "6 siung bawang merah", "4 siung bawang putih", "1 buah tomat", "2 sdm air asam jawa", "1 sdt garam", "2 sdm minyak untuk olesan"]',
 '["Haluskan cabai, bawang merah, bawang putih, dan tomat", "Tumis bumbu halus hingga harum, tambahkan air asam jawa dan garam", "Lumuri ayam dengan bumbu, diamkan 30 menit", "Bakar ayam sambil sesekali diolesi sisa bumbu hingga matang", "Sajikan dengan sambal dan plecing kangkung"]',
 'Ayam bakar khas Lombok dengan bumbu pedas dan aroma bakaran yang khas.'),

(1, 'opor_ayam.jpg', 'Opor Ayam', 'Resep Ayam', '1 Jam 30 Menit', 
 '["1 ekor ayam (potong 8 bagian)", "500 ml santan kental", "500 ml santan encer", "2 batang serai (memarkan)", "3 lembar daun salam", "4 butir kemiri (sangrai)", "1 sdt garam", "1/2 sdt gula", "6 siung bawang putih", "8 butir bawang merah", "2 cm kunyit", "1 cm jahe"]',
 '["Tumis bumbu halus, serai, dan daun salam hingga harum", "Masukkan ayam, aduk hingga ayam berubah warna", "Tambahkan santan encer, masak hingga ayam empuk", "Tuang santan kental, garam, dan gula, masak dengan api kecil", "Sajikan opor dengan ketupat dan sambal goreng kentang"]',
 'Ayam berkuah santan dengan rempah gurih, cocok disajikan dengan ketupat.'),

(1, 'ayam_pop.jpg', 'Ayam Pop', 'Resep Ayam', '1 Jam', 
 '["1 ekor ayam kampung (potong 4 bagian)", "500 ml air kelapa", "3 siung bawang putih (haluskan)", "2 lembar daun salam", "1 batang serai (memarkan)", "1 sdt garam"]',
 '["Rebus ayam bersama air kelapa, bawang putih, daun salam, dan serai hingga empuk", "Angkat ayam dan tiriskan", "Goreng ayam sebentar hingga bagian luar kering", "Sajikan ayam pop dengan sambal lado dan nasi putih", "Tambahkan lalapan sebagai pelengkap"]',
 'Ayam kampung gurih dengan air kelapa, digoreng sebentar dan disajikan dengan sambal.'),

(1, 'ayam_betutu.jpg', 'Ayam Betutu', 'Resep Ayam', '2 Jam', 
 '["1 ekor ayam kampung (utuh)", "5 siung bawang merah", "3 siung bawang putih", "5 buah cabai merah besar", "2 cm kunyit", "3 batang serai (memarkan)", "3 lembar daun salam", "2 sdm air asam jawa", "500 ml santan", "1 sdt garam", "1/2 sdt gula"]',
 '["Haluskan bawang merah, bawang putih, cabai, kunyit, dan sedikit garam", "Lumuri ayam dengan bumbu halus, serai, daun salam, dan air asam jawa. Diamkan 30 menit", "Bungkus ayam dengan daun pisang dan kukus selama 2 jam hingga empuk", "Setelah matang, panggang ayam sebentar hingga sedikit kecokelatan", "Sajikan dengan sambal dan nasi hangat"]',
 'Ayam utuh berbumbu khas Bali, dimasak lambat hingga bumbu meresap sempurna.'),

(1, 'ayam_saus_teriyaki.jpg', 'Ayam Saus Teriyaki', 'Resep Ayam', '45 Menit', 
 '["500 gram dada ayam fillet (potong dadu)", "3 sdm saus teriyaki", "1 sdm kecap manis", "1 sdt minyak wijen", "2 sdm minyak goreng", "2 siung bawang putih (cincang)", "1 batang daun bawang (iris halus)"]',
 '["Tumis bawang putih dengan minyak goreng hingga harum", "Masukkan ayam, masak hingga berubah warna", "Tambahkan saus teriyaki, kecap manis, dan minyak wijen, aduk rata", "Masak hingga saus menyusut dan ayam matang", "Sajikan dengan taburan daun bawang dan nasi hangat"]',
 'Dada ayam fillet dimasak dengan saus teriyaki manis, kecap manis, dan minyak wijen, disajikan dengan taburan daun bawang.'),

(1, 'ayam_cabe_ijo.jpg', 'Ayam Cabe Ijo', 'Resep Ayam', '1 Jam', 
 '["500 gram ayam (potong kecil-kecil)", "10 buah cabai hijau besar", "5 buah cabai rawit hijau", "5 siung bawang merah", "3 siung bawang putih", "1 sdt garam", "1/2 sdt gula", "2 lembar daun salam", "1 batang serai (memarkan)", "2 sdm minyak goreng"]',
 '["Haluskan cabai hijau, bawang merah, bawang putih", "Tumis bumbu halus bersama daun salam dan serai hingga harum", "Masukkan ayam, aduk hingga berubah warna", "Tambahkan garam dan gula, masak hingga ayam matang dan bumbu meresap", "Sajikan dengan nasi putih hangat"]',
 'Ayam dengan bumbu cabai hijau yang pedas gurih, disajikan dengan nasi hangat.'),

(1, 'ayam_kukus_jamur.jpg', 'Ayam Kukus Jamur', 'Resep Ayam', '1 Jam', 
 '["500 gram ayam (potong 8 bagian)", "200 gram jamur tiram (robek-robek)", "2 siung bawang putih (cincang)", "1 batang serai (memarkan)", "1 sdt garam", "1/2 sdt gula", "500 ml air kaldu ayam"]',
 '["Tumis bawang putih dan serai hingga harum", "Masukkan ayam, aduk hingga ayam berubah warna", "Tambahkan kaldu ayam, garam, dan gula, biarkan ayam mendidih", "Tambahkan jamur, masak hingga ayam dan jamur matang", "Sajikan ayam kukus jamur dengan nasi hangat"]',
 'Ayam kukus dengan jamur tiram, dimasak dalam kaldu ayam yang gurih, cocok untuk sajian sehat dan lezat.'),

(1, 'ayam_penyet.jpg', 'Ayam Penyet', 'Resep Ayam', '45 Menit', 
 '["500 gram ayam (potong 4 bagian)", "3 sdm tepung terigu", "2 sdm tepung maizena", "1 sdt garam", "1/2 sdt lada", "Minyak goreng untuk menggoreng", "6 buah cabai merah", "4 siung bawang putih", "3 butir tomat", "1 sdt garam", "1/2 sdt gula"]',
 '["Campur tepung terigu, maizena, garam, dan lada. Lumuri ayam dengan campuran tepung", "Goreng ayam hingga matang dan crispy", "Haluskan cabai, bawang putih, dan tomat untuk sambal", "Panaskan sedikit minyak, tumis sambal hingga harum", "Penyet ayam goreng dengan sambal, sajikan dengan nasi hangat"]',
 'Ayam goreng crispy dengan sambal pedas yang dihancurkan (penyet), disajikan dengan nasi hangat dan lalapan.');