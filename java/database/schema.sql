BEGIN TRANSACTION;

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS restaurant;

CREATE TABLE users (
	user_id SERIAL,
	username varchar(50) NOT NULL UNIQUE,
	password_hash varchar(200) NOT NULL,
	role varchar(50) NOT NULL,
	CONSTRAINT PK_user PRIMARY KEY (user_id)
);
CREATE TABLE restaurant (
    restaurant_id SERIAL,
    name varchar(100) NOT NULL,
    type varchar(100) NOT NULL,
    address varchar(200) NOT NULL,
    hours varchar(200) NOT NULL,
    phone_number varchar(20),
    stars numeric,
    img_url varchar(600),
    takeout boolean,
    delivery boolean,
    website varchar(600),
    reviews varchar(600),
    popup_trigger boolean,
    menu varchar(800),
    price_range varchar(10),
    CONSTRAINT PK_restaurant PRIMARY KEY (restaurant_id)
);

CREATE TABLE event(
event_id SERIAL,
event_name varchar(50),
link varchar(50),
create_time BIGINT NOT NULL,
expire_time BIGINT NOT Null,
user_id int,
CONSTRAINT PK_event PRIMARY KEY (event_id),
CONSTRAINT FK_user_event FOREIGN KEY(user_id) REFERENCES users(user_id),
CONSTRAINT UQ_link UNIQUE (link)
);

CREATE TABLE rank(
total_rank int DEFAULT 0,
event_id int,
restaurant_id int,
CONSTRAINT FK_event_rank FOREIGN KEY(event_id) REFERENCES event (event_id),
CONSTRAINT FK_restaurant_rank FOREIGN KEY(restaurant_id) REFERENCES restaurant(restaurant_id)



);

COMMIT TRANSACTION;
