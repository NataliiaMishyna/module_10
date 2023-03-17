CREATE TABLE IF NOT EXISTS client(
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(200) NOT NULL,
	    CHECK(LENGTH(NAME)>2)
);

CREATE TABLE IF NOT EXISTS planet (
  id VARCHAR(10) PRIMARY KEY,
  name VARCHAR(500)
	    CHECK(LENGTH(NAME)>1)
	CONSTRAINT id_Only_Latin_and_Numbers
       CHECK (id NOT LIKE '%[^A-Z0-9]%'),
    CONSTRAINT id_upper
    check (upper(id) = id)
);

CREATE TABLE IF NOT EXISTS ticket (
  id INT PRIMARY KEY AUTO_INCREMENT,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  client_id INT,
  from_planet_id VARCHAR(10),
  to_planet_id VARCHAR(10),
  FOREIGN KEY (client_id) REFERENCES client(id),
  FOREIGN KEY (from_planet_id) REFERENCES planet(id),
  FOREIGN KEY (to_planet_id) REFERENCES planet(id)
);