--Create tables
DROP TABLE IF EXISTS workers
CREATE TABLE workers
(
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    phone VARCHAR(12) NOT NULL
);

DROP TABLE IF EXISTS clients
CREATE TABLE clients
(
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone VARCHAR(12) NOT NULL
);

DROP TABLE IF EXISTS services
CREATE TABLE services
(
    id SERIAL PRIMARY KEY,
    description TEXT NOT NULL,
    amount INT NOT NULL
);

DROP TABLE IF EXISTS deals
CREATE TABLE deals
(
    id SERIAL PRIMARY KEY,
    client_id INT NOT NULL,
    worker_id INT NOT NULL,
    date TIMESTAMP NOT NULL,
    service_id INT NOT NULL
);

--Insert test data
INSERT INTO workers (
    first_name,
    last_name,
    email,
    phone
)
VALUES ('Anton', 'Podash', 'apodash01@gmail.com', '380502238434'),
('Igor', 'Lytvyn', 'lytvyn@gmail.com', '380951445462');

INSERT INTO clients (
    first_name,
    last_name,
    phone
)
VALUES ('Vasyl', 'Bogdanov', '380501234567'),
('Mykola', 'Petrov', '380505467789'),
('Valerii', 'Konoplia', '380992236574');

INSERT INTO services (
    description,
    amount
)
VALUES ('Description about 1st service', 2400);

INSERT INTO deals(
    client_id,
    worker_id,
    date,
    service_id
)
VALUES (2, 1, '2020-12-15', 1),
(3, 1, '2020-12-23', 1),
(1, 2, '2020-12-27', 1);