INSERT INTO client (name) VALUES
('Taras'),
('Ivan'),
('Lesia'),
('Mark'),
('John'),
('Jade'),
('Tony'),
('Stark'),
('Stas'),
('Sreck');

INSERT INTO planet (id, name) VALUES
('MARS', 'Mars'),
('VEN', 'Venus'),
('JUP', 'Jupiter'),
('EAR', 'Earth'),
('SAT', 'Saturn');

INSERT INTO ticket (created_at, client_id, from_planet_id, to_planet_id) VALUES
('2022-01-01 00:00:00', 1, 'MARS', 'VEN'),
('2022-02-01 00:00:00', 2, 'VEN', 'MARS'),
('2022-02-01 00:00:00', 3, 'EAR', 'JUP'),
('2022-02-01 00:00:00', 4, 'JUP', 'MARS'),
('2022-02-01 00:00:00', 5, 'EAR', 'MARS'),
('2022-02-01 00:00:00', 6, 'SAT', 'MARS'),
('2022-02-01 00:00:00', 7, 'VEN', 'JUP'),
('2022-02-01 00:00:00', 8, 'VEN', 'SAT'),
('2022-02-01 00:00:00', 9, 'JUP', 'MARS'),
('2022-02-01 00:00:00', 10, 'VEN', 'MARS'),
('2022-02-01 00:00:00', 2, 'JUP', 'EAR');
