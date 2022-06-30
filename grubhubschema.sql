CREATE TABLE users (
    id serial PRIMARY KEY,
    email varchar(255),
    username varchar(255),
    password varchar(255)
);

CREATE TABLE orders (
    id serial PRIMARY KEY,
    user_id REFERENCES users (id),
    timestamp varchar(255)
);

CREATE TABLE menuItems(
    id serial PRIMARY KEY,
    restaurant_id REFERENCES restaurants (id),
    name varchar(255),
    price varchar(255)
);

CREATE TABLE orderMenuItem (
    order_id REFERENCES orders (id),
    menu_item_id REFERENCES menuItems (id),
    quantity int
);

CREATE TABLE restaurants (
    id serial PRIMARY KEY,
    name varchar(255)
);