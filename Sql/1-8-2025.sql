CREATE TABLE kannada_movie (
    id INT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    release_date DATE,
    ticket_price DECIMAL(8,2),
    duration TIME,
    language VARCHAR(35) DEFAULT 'Kannada' CHECK (language = 'Kannada'),
    rating DECIMAL(3,1),
    actor_name VARCHAR(30),
    producer_name VARCHAR(30),
    director_name VARCHAR(30),
    budget DECIMAL(12,2),
    collection DECIMAL(12,2),
    platform_release_date DATETIME,
    no_of_screens INT
);