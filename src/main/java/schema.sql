CREATE TABLE role (
       id INTEGER PRIMARY KEY,
       name VARCHAR(55) UNIQUE NOT NULL
);


CREATE TABLE IF NOT EXISTS "user" (
       id SERIAL PRIMARY KEY,
       user_name VARCHAR(55) NOT NULL,
       email VARCHAR(55) NOT NULL,
       password VARCHAR(255) NOT NULL
);


CREATE TABLE IF NOT EXISTS orders (
       id SERIAL PRIMARY KEY,
       data DATE NOT NULL,
       user_id INTEGER REFERENCES "user"(id)
);


CREATE TABLE IF NOT EXISTS items (
       id SERIAL PRIMARY KEY,
       name VARCHAR(255) NOT NULL UNIQUE,
       price DECIMAL(10,2) NOT NULL,
       manufacturer VARCHAR(255),
       product_code VARCHAR(255)
);


CREATE TABLE IF NOT EXISTS order_items (
       id SERIAL PRIMARY KEY,
       order_id INTEGER REFERENCES orders(id),
       items_id INTEGER REFERENCES items(id),
       quantity INTEGER NOT NULL
);


ALTER TABLE "user"
    ADD COLUMN
        role_id INTEGER REFERENCES role(id);