
-- The data inputted in this project is not real-time data. It has been created solely for the purposes of testing the database and debugging. 
-- Any resemblance to actual events, persons, or entities is purely coincidental. 
-- This data is intended to validate the functionality and reliability of the database system under various scenarios. 
-- For accurate and real-time data, please refer to the appropriate sources or datasets.

show databases;
use church_records;

create table fundraising (
fund_id int auto_increment primary key,
event_name varchar (100),
date date,
amount_collected decimal (10, 2),
decription text
);

create table baptism (
baptism_id int auto_increment primary key,
first_name varchar(50) not null,
last_name varchar(50) not null,
date_of_birth date not null,
gender varchar (10) not null,
guardian_name varchar(50) not null,
godparents_name varchar(50) not null,
priest_name varchar(50) not null,
church_name varchar(50) not null,
address varchar(100)
);
INSERT INTO baptism (first_name, last_name, date_of_birth, gender, guardian_name, godparents_name, priest_name, church_name, address) VALUES
('Michael', 'Williams', '2011-03-10', 'Male', 'Linda Williams', 'David Wilson', 'Father Tom', 'Holy Family Church', 'Barcelona, Spain'),
('Sophia', 'Jones', '2013-11-30', 'Female', 'James Jones', 'Laura Taylor', 'Father Chris', 'St. Joseph\'s Church', 'Berlin, Germany'),
('Daniel', 'Brown', '2014-01-25', 'Male', 'Patricia Brown', 'Kevin White', 'Father Paul', 'Grace Church', 'Cairo, Egypt'),
('Olivia', 'Davis', '2010-07-14', 'Female', 'Charles Davis', 'Nancy Green', 'Father Luke', 'Trinity Church', 'Mumbai, India'),
('James', 'Miller', '2012-09-05', 'Male', 'Barbara Miller', 'George Black', 'Father Mark', 'St. Andrew\'s Church', 'Moscow, Russia'),
('Isabella', 'Garcia', '2013-04-18', 'Female', 'Joseph Garcia', 'Emma Hall', 'Father Steve', 'St. Michael\'s Church', 'Cape Town, South Africa'),
('Ethan', 'Martinez', '2011-12-12', 'Male', 'Maria Martinez', 'Sophia Young', 'Father David', 'St. Anne\'s Church', 'Kyoto, Japan'),
('Ava', 'Hernandez', '2014-06-30', 'Female', 'Thomas Hernandez', 'Megan King', 'Father Brian', 'St. Luke\'s Church', 'Mexico City, Mexico');


create table weddings (
wedding_id int auto_increment primary key,
bride_name varchar (50) not null,
groom_name varchar (50) not null,
date date,
priest_name varchar(50) not null,
church_name varchar(50) not null,
address varchar(100)
);

INSERT INTO weddings (bride_name, groom_name, date, priest_name, church_name, address) VALUES 
('Alice Johnson', 'Michael Smith', '2023-06-15', 'Father John', 'St. Mary\'s Church', 'New York City, USA'),
('Emma Brown', 'Liam Davis', '2023-07-20', 'Father Michael', 'Holy Cross Church', 'Paris, France'),
('Olivia Wilson', 'Noah Garcia', '2023-08-10', 'Father James', 'Grace Church', 'Tokyo, Japan'),
('Sophia Martinez', 'Lucas Rodriguez', '2023-09-05', 'Father David', 'First Baptist Church', 'London, UK'),
('Isabella Hernandez', 'Ethan Lee', '2023-10-12', 'Father Robert', 'St. Paul\'s Cathedral', 'Istanbul, Turkey'),
('Mia Lopez', 'Aiden Walker', '2023-11-18', 'Father Thomas', 'St. Joseph\'s Church', 'Beijing, China'),
('Charlotte Young', 'Jackson Hall', '2023-12-25', 'Father Daniel', 'St. Andrew\'s Church', '135 Birch St, Springfield'),
('Amelia King', 'Logan Wright', '2024-01-01', 'Father Matthew', 'St. Peter\'s Church', 'Sydney, Australia');

create table confirmations (
confirm_id int auto_increment primary key,
first_name varchar(50) not null,
last_name varchar(50) not null,
date date,
priest_name varchar(50) not null,
church_name varchar(50) not null,
address varchar(100)
);
INSERT INTO confirmations (first_name, last_name, date, priest_name, church_name, address) VALUES 
('Ethan', 'Thomas', '2023-03-10', 'Father Brown', 'Holy Cross Church', 'Port Ramona'),
('Lucas', 'Wilson', '2023-04-05', 'Father Wilson', 'Grace Church', 'Mississippi'),
('David', 'Johnson', '2023-05-12', 'Father Taylor', 'Trinity Church', 'Michigan'),
('Sarah', 'Williams', '2023-06-18', 'Father Anderson', 'Faith Church', 'Metropolis'),
('James', 'Jones', '2023-07-25', 'Father Thomas', 'Hope Church', 'Rhode Island'),
('Laura', 'Garcia', '2023-08-30', 'Father Martinez', 'Peace Church', 'Wyoming'),
('Daniel', 'Martinez', '2023-09-14', 'Father Lee', 'Joy Church', 'Oregon');


create table ordinations (
ordination_id int auto_increment primary key,
candidate_first_name varchar(50) not null,
candidate_last_name varchar(50) not null,
date date,
OrdinationType varchar(50) check (OrdinationType in('Priest', 'Bishop')),
location varchar(100)
);

INSERT INTO ordinations (candidate_first_name, candidate_last_name, date, OrdinationType, location) VALUES 
('Michael', 'Johnson', '2023-03-10', 'Priest', 'Embu county'),
('Emily', 'Davis', '2023-04-05', 'Bishop', 'Nairobi county'),
('William', 'Brown', '2023-05-12', 'Priest', 'Mombasa'),
('Olivia', 'Jones', '2023-06-18', 'Bishop', 'Vatican city'),
('James', 'Garcia', '2023-07-25', 'Priest', 'Diani Parish'),
('Sophia', 'Martinez', '2023-08-30', 'Bishop', 'Nyanza Local Church'),
('Benjamin', 'Hernandez', '2023-09-15', 'Priest', 'Kasarani Stadium'),
('Isabella', 'Lopez', '2023-10-22', 'Bishop', 'Turkana county');

create table burials (
burial_id int auto_increment primary key,
deceased_first_name varchar(50) not null,
deceased_last_name varchar(50) not null,
date_of_birth date not null,
date_of_burial date,
officiant_priest varchar(50) not null,
church_name varchar(50) not null,
address varchar(100),
family_contact varchar(50),
burial_location varchar(100)
);

INSERT INTO burials (deceased_first_name, deceased_last_name, date_of_birth, date_of_burial, officiant_priest, church_name, address, family_contact, burial_location) VALUES
('Alice', 'Johnson', '1975-05-15', '2023-02-20', 'Father Brown', 'Holy Cross Church', '456 Oak St, Springfield', 'Tom Johnson', 'Cemetery B'),
('Michael', 'Williams', '1990-03-30', '2023-03-15', 'Father Davis', 'Grace Church', '789 Pine St, Springfield', 'Sarah Williams', 'Cemetery C'),
('Emily', 'Jones', '1985-07-25', '2023-04-05', 'Father Wilson', 'First Baptist Church', '321 Maple St, Springfield', 'Mark Jones', 'Cemetery D'),
('David', 'Garcia', '1965-11-11', '2023-05-12', 'Father Martinez', 'St. Joseph\'s Church', '654 Cedar St, Springfield', 'Laura Garcia', 'Cemetery E'),
('Sophia', 'Martinez', '1995-09-09', '2023-06-18', 'Father Lee', 'St. Paul\'s Church', '987 Birch St, Springfield', 'James Martinez', 'Cemetery F'),
('James', 'Hernandez', '1982-12-12', '2023-07-22', 'Father Taylor', 'St. Andrew\'s Church', '135 Walnut St, Springfield', 'Linda Hernandez', 'Cemetery G'),
('Olivia', 'Lopez', '1978-04-04', '2023-08-30', 'Father Clark', 'St. Peter\'s Church', '246 Spruce St, Springfield', 'Robert Lopez', 'Cemetery H'),
('William', 'Gonzalez', '1992-10-10', '2023-09-15', 'Father Hall', 'St. Luke\'s Church', '357 Fir St, Springfield', 'Patricia Gonzalez', 'Cemetery I'),
('Isabella', 'Wilson', '1988-06-06', '2023-10-25', 'Father Young', 'St. Mark\'s Church', '468 Cherry St, Springfield', 'Charles Wilson', 'Cemetery J');









