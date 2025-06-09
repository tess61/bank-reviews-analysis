-- Create Banks table
CREATE TABLE Banks (
    bank_id SERIAL PRIMARY KEY,
    bank_name VARCHAR(100) NOT NULL UNIQUE
);

-- Create Reviews table
CREATE TABLE Reviews (
    review_id SERIAL PRIMARY KEY,
    bank_id INTEGER NOT NULL,
    review_text TEXT NOT NULL,
    rating INTEGER CHECK (rating BETWEEN 1 AND 5),
    review_date DATE NOT NULL,
    source VARCHAR(50) NOT NULL,
    sentiment_label VARCHAR(10),
    sentiment_score FLOAT,
    themes VARCHAR(500),
    FOREIGN KEY (bank_id) REFERENCES Banks(bank_id)
);

-- Insert bank names
INSERT INTO Banks (bank_name) VALUES ('CBE');
INSERT INTO Banks (bank_name) VALUES ('BOA');
INSERT INTO Banks (bank_name) VALUES ('Dashen');