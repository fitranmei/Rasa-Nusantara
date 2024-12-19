CREATE TABLE users (
    ID_User INT AUTO_INCREMENT PRIMARY KEY,
    Gambar_User VARCHAR(255) NOT NULL,
    name VARCHAR(100) UNIQUE DEFAULT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(255) NOT NULL
);

INSERT INTO users (name, email, password) VALUES 
(
    "RasaNusantara",
    "rasanusantara@gmail.com",
    "password123"
);