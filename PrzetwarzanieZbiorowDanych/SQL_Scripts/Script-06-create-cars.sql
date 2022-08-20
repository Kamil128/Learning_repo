create table cars
(
	car_id Integer Primary key,
	producer varchar(30),
	model varchar(30),
	year integer,
	horse_power integer,
	price_per_day integer
);

CREATE TABLE clients
(
client_id INTEGER PRIMARY KEY,
name VARCHAR(30),
surname VARCHAR(30),
address TEXT,
city VARCHAR(30)
);

CREATE TABLE bookings
(
booking_id INTEGER PRIMARY KEY,
client_id INTEGER,
car_id INTEGER,
start_date DATE,
end_date DATE,
total_amount INTEGER
);
