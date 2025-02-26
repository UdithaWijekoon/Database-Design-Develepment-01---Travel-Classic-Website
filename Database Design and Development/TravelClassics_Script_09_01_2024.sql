--Task 06
--Create Travel Classics Database

-- Create Hotel table
CREATE TABLE HOTEL (
    hotel_id INT PRIMARY KEY,
    name VARCHAR(100),
    address VARCHAR(200),
    country VARCHAR(50),
    city VARCHAR(50),
    street VARCHAR(100),
    login_credentials VARCHAR(100),
    registration_status VARCHAR(50)
);
SELECT * FROM "hotel";

-- Insert records into Hotel table
INSERT INTO Hotel VALUES
(1, 'Hilton', '678 Senanayake Road', 'Sri Lanka', 'Colombo', 'Senanayake Road', 'hil321', 'Registered'),
(2, 'Paradise', '867 Dalada Veediya', 'Sri Lanka', 'Kandy', 'Dalada Veediya', 'Mart456', 'Registered'),
(3, 'Seaside Resort', '123 Ocean View St', 'United States', 'Miami', 'Ocean View St', 'SeasideLogin123', 'Registered'),
(4, 'Mountain Lodge', '456 Mountain Road', 'Canada', 'Banff', 'Mountain Road', 'MountainLodge456', 'Registered'),
(5, 'City Center Hotel', '789 Downtown Ave', 'United Kingdom', 'London', 'Downtown Ave', 'CityCenter789', 'Registered'),
(6, 'Lakeside Retreat', '101 Lakefront Drive', 'Australia', 'Sydney', 'Lakefront Drive', 'Lakeside101', 'Registered'),
(7, 'Alpine Chalet', '321 Ski Slope Trail', 'Switzerland', 'Zermatt', 'Ski Slope Trail', 'Alpine321', 'Registered'),
(8, 'Beachfront Inn', '555 Sandy Beach Blvd', 'Spain', 'Barcelona', 'Sandy Beach Blvd', 'Beachfront555', 'Registered'),
(9, 'Tropical Oasis Resort', '777 Palm Paradise St', 'Maldives', 'Male', 'Palm Paradise St', 'Tropical777', 'Registered'),
(10, 'Heritage Manor', '222 Historical Lane', 'Italy', 'Rome', 'Historical Lane', 'Heritage222', 'Registered'),
(11, 'Skyline Tower Hotel', '444 Skyscraper Ave', 'Japan', 'Tokyo', 'Skyscraper Ave', 'Skyline444', 'Registered'),
(12, 'Green Valley Lodge', '888 Nature Trail', 'New Zealand', 'Queenstown', 'Nature Trail', 'GreenValley888', 'Registered'),
(13, 'Riverside Retreat', '666 Riverbank Road', 'France', 'Paris', 'Riverbank Road', 'Riverside666', 'Registered'),
(14, 'Urban Hideaway', '777 Downtown Lane', 'Germany', 'Berlin', 'Downtown Lane', 'Urban777', 'Registered'),
(15, 'Coastal Vista Hotel', '999 Beachfront Highway', 'Australia', 'Gold Coast', 'Beachfront Highway', 'Coastal999', 'Registered');
SELECT * FROM "hotel";


-- Create Facility table
CREATE TABLE FACILITY (
    facility_id INT PRIMARY KEY,
    facility_name VARCHAR(100)
);
SELECT * FROM "facility";

-- Insert records into Facility table
INSERT INTO Facility VALUES
(1, 'Free Wi-Fi'),
(2, 'Parking'),
(3, 'Restaurant'),
(4, 'Spa'),
(5, 'Fitness Center'),
(6, 'Concierge Service'),
(7, 'Meeting Rooms'),
(8, 'Bar/Lounge'),
(9, 'Room Service'),
(10, 'Swimming Pool'),
(11, 'Business Center'),
(12, 'Pet-Friendly'),
(13, 'Airport Shuttle'),
(14, 'Childcare'),
(15, 'Laundry Services');
SELECT * FROM "facility";


-- Create ACCOMMODATION_OPTION table
CREATE TABLE ACCOMMODATION_OPTION (
    option_id INT PRIMARY KEY,
    option_name VARCHAR(100),
    hotel_id INT ,
	CONSTRAINT FK_HOTEL Foreign key (hotel_id)
	REFERENCES "hotel" (hotel_id)
);
SELECT * FROM "accommodation_option";


-- Insert records into AccommodationOption table
INSERT INTO ACCOMMODATION_OPTION VALUES
(1, 'Standard Room', 1),
(2, 'Deluxe Room', 1),
(3, 'Suite', 1),
(4, 'Single Room', 2),
(5, 'Double Room', 2),
(6, 'Executive Suite', 2),
(7, 'Poolside Villa', 3),
(8, 'Ocean View Suite', 3),
(9, 'Family Room', 3),
(10, 'Mountain View Chalet', 4),
(11, 'Luxury Tent', 4),
(12, 'Presidential Suite', 4),
(13, 'Cottage', 5),
(14, 'Bungalow', 5),
(15, 'Penthouse', 5);
SELECT * FROM "accommodation_option";


-- Create Room table
CREATE TABLE ROOM (
    room_id INT PRIMARY KEY,
    hotel_id INT,
	CONSTRAINT FK_HOTEL Foreign key (hotel_id)
	REFERENCES "hotel" (hotel_id),
	option_id INT,
	CONSTRAINT FK_ACCOMMODATION_OPTION Foreign key (option_id)
	REFERENCES "accommodation_option" (option_id),
    room_description VARCHAR(200),
    conditions VARCHAR(200),
    price DECIMAL(10, 2)
);
SELECT * FROM "room";

-- Insert records into Room table
INSERT INTO Room VALUES
(1, 1, 1, 'Double Room', 'Non AC, Double Bed ', 100.00),
(2, 1, 2, 'AC Double Room', 'AC, TV, Double Bed', 120.00),
(3, 1, 1, 'Standard Double Room', 'Double bed, TV, ensuite bathroom', 150.00),
(4, 1, 1, 'Deluxe Suite', 'King-size bed, living area, sea view', 300.00),
(5, 2, 2, 'Single Room', 'Single bed, desk, shared bathroom', 80.00),
(6, 2, 2, 'Executive Room', 'Queen-size bed, work area, city view', 180.00),
(7, 3, 3, 'Standard Twin Room', 'Two single beds, balcony', 120.00),
(8, 3, 3, 'Family Suite', 'Multiple rooms, kitchenette, garden view', 250.00),
(9, 4, 4, 'Ocean View Room', 'Double bed, private balcony, ocean view', 200.00),
(10, 4, 4, 'Presidential Suite', 'Spacious suite, luxury amenities', 500.00),
(11, 5, 5, 'Standard Queen Room', 'Queen-size bed, city view', 140.00),
(12, 5, 5, 'Luxury Duplex', 'Two floors, Jacuzzi, panoramic view', 400.00),
(13, 6, 6, 'Budget Single Room', 'Economical single bed option', 70.00),
(14, 6, 6, 'Premium Double Room', 'Double bed, modern amenities', 160.00),
(15, 7, 7, 'Rooftop Suite', 'Exclusive suite, private terrace', 280.00);
SELECT * FROM "room";


-- Create Traveler table
CREATE TABLE TRAVELER (
    traveler_id INT PRIMARY KEY,
    name VARCHAR(100),
    address VARCHAR(200),
    email VARCHAR(100),
    country VARCHAR(50),
    registration_date DATE
);
SELECT * FROM "traveler";

-- Insert records into Traveler table
INSERT INTO Traveler VALUES
(1, 'Jayasena Kodithuwakku', 'Kandy Road, Kandy', 'jayasena@gmail.com', 'Sri Lanka', '2023-01-01'),
(2, 'Amarabandu Roopasinghe', 'Colombo 07, Colombo', 'amarabandu@gmail.com', 'Sri Lanka', '2023-01-02'),
(3, 'John Doe', '123 Main Street, Anytown', 'john@example.com', 'USA', '2023-03-10'),
(4, 'Emily Smith', '456 Elm Street, Another Town', 'emily@gmail.com', 'Canada', '2023-04-05'),
(5, 'Carlos Gonzalez', '789 Oak Street, Some City', 'carlos@gmail.com', 'Spain', '2023-05-20'),
(6, 'Sophie Brown', '101 Pine Street, Different City', 'sophie@gmail.com', 'UK', '2023-06-15'),
(7, 'Luis Ramirez', '222 Cedar Street, New Place', 'luis@gmail.com', 'Mexico', '2023-07-30'),
(8, 'Anna Wang', '333 Maple Street, Elsewhere', 'anna@gmail.com', 'China', '2023-08-25'),
(9, 'Mia Patel', '444 Birch Street, Faraway City', 'mia@gmail.com', 'India', '2023-09-10'),
(10, 'Hiroshi Tanaka', '555 Walnut Street, Distant Town', 'hiroshi@gmail.com', 'Japan', '2023-10-05'),
(11, 'Isabella Rossi', '666 Pineapple Street, Remote Place', 'isabella@gmail.com', 'Italy', '2023-11-20'),
(12, 'Mohammed Ali', '777 Cherry Street, Nearby City', 'mohammed@gmail.com', 'Egypt', '2023-12-15'),
(13, 'Olivia Fernandez', '888 Lemon Street, Local Town', 'olivia@gmail.com', 'Argentina', '2024-01-30'),
(14, 'Lin Chen', '999 Grape Street, Hometown', 'lin@gmail.com', 'China', '2024-02-25'),
(15, 'Lucas Silva', '123 Orange Street, My City', 'lucas@gmail.com', 'Brazil', '2024-03-10');
SELECT * FROM "traveler";


-- Create Reservation table
CREATE TABLE Reservation (
    reservation_id INT PRIMARY KEY,
	traveler_id INT,
	CONSTRAINT FK_TRAVELER Foreign key (traveler_id)
	REFERENCES "traveler" (traveler_id),
	hotel_id INT,
	CONSTRAINT FK_HOTEL Foreign key (hotel_id)
	REFERENCES "hotel" (hotel_id),
    reservation_date DATE,
    duration INT,
    number_of_guests INT,
    payment_status VARCHAR(50)
);
SELECT * FROM "reservation";

-- Insert records into Reservation table
INSERT INTO Reservation VALUES
(1, 4, 2, '2023-02-01', 5, 2, 'Paid'),
(2, 12, 4, '2023-02-15', 3, 1, 'Pending'),
(3, 7, 7, '2023-03-10', 7, 2, 'Pending'),
(4, 1, 8, '2023-04-05', 4, 1, 'Paid'),
(5, 13, 9, '2023-05-20', 3, 2, 'Pending'),
(6, 9, 6, '2023-06-15', 5, 3, 'Paid'),
(7, 10, 5, '2023-07-01', 2, 1, 'Paid'),
(8, 15, 1, '2023-08-10', 6, 2, 'Pending'),
(9, 2, 3, '2023-09-05', 3, 1, 'Paid'),
(10, 5, 10, '2023-10-15', 4, 2, 'Paid'),
(11, 6, 11, '2023-11-20', 5, 3, 'Pending'),
(12, 3, 2, '2023-12-01', 6, 2, 'Paid'),
(13, 8, 13, '2024-01-10', 7, 3, 'Pending'),
(14, 11, 14, '2024-02-05', 4, 1, 'Paid'),
(15, 14, 1, '2024-03-20', 3, 2, 'Paid');
SELECT * FROM "reservation";


-- Create Transaction table
CREATE TABLE Transaction (
    transaction_id INT PRIMARY KEY,
	reservation_id INT,
	CONSTRAINT FK_RESERVATION Foreign key (reservation_id)
	REFERENCES "reservation" (reservation_id),
    transaction_date DATE,
    transaction_time TIME,
    amount DECIMAL(10, 2)
);
SELECT * FROM "transaction";

-- Insert records into Transaction table
INSERT INTO Transaction VALUES
(1, 1, '2023-02-01', '10:00:00', 50.00),
(2, 6, '2023-02-15', '11:30:00', 60.00),
(3, 5, '2023-02-20', '09:45:00', 75.00),
(4, 3, '2023-03-05', '14:20:00', 110.00),
(5, 9, '2023-03-12', '11:00:00', 90.00),
(6, 7, '2023-03-18', '08:30:00', 120.00),
(7, 4, '2023-03-25', '10:15:00', 95.00),
(8, 2, '2023-04-02', '13:45:00', 130.00),
(9, 8, '2023-04-10', '12:00:00', 80.00),
(10, 10, '2023-04-18', '16:30:00', 100.00),
(11, 13, '2023-04-25', '09:00:00', 70.00),
(12, 12, '2023-05-01', '10:45:00', 85.00),
(13, 11, '2023-05-08', '15:20:00', 95.00),
(14, 15, '2023-05-15', '12:30:00', 105.00),
(15, 14, '2023-05-22', '08:15:00', 110.00);
SELECT * FROM "transaction";


-- Create TravelReport table
CREATE TABLE TravelReport (
    report_id INT PRIMARY KEY,
	traveler_id INT,
	CONSTRAINT FK_TRAVELER Foreign key (traveler_id)
	REFERENCES "traveler" (traveler_id),
    destination_country VARCHAR(50),
    destination_location VARCHAR(100),
    report_title VARCHAR(100),
    report_description VARCHAR(200)
);
SELECT * FROM "travelreport";

-- Insert records into TravelReport table
INSERT INTO TravelReport VALUES
(1, 1, 'France', 'Paris', 'Exploring Paris', 'Spent a week exploring the beautiful city of Paris. Visited the Eiffel Tower, Louvre Museum, and enjoyed French cuisine.'),
(2, 1, 'Italy', 'Rome', 'Historical Rome', 'Visited Rome and explored its rich history. Saw the Colosseum, Vatican City, and enjoyed the local culture.'),
(3, 2, 'Japan', 'Tokyo', 'Tokyo Adventure', 'Traveled to Tokyo, experienced the bustling city life, visited Shibuya Crossing, and tried various Japanese foods.'),
(4, 2, 'Spain', 'Barcelona', 'Barcelona Beaches', 'Relaxed in Barcelona, visited the beautiful beaches, explored the Gothic Quarter, and tasted authentic Spanish paella.'),
(5, 3, 'United States', 'New York City', 'Big Apple Experience', 'Explored NYC, visited Times Square, Central Park, Statue of Liberty, and enjoyed the Broadway shows.'),
(6, 3, 'Australia', 'Sydney', 'Sydney Adventure', 'Visited Sydney, saw the Opera House, Bondi Beach, and enjoyed the scenic views.'),
(7, 4, 'Greece', 'Athens', 'Ancient Athens', 'Explored historical landmarks in Athens, including the Acropolis, Parthenon, and ancient ruins.'),
(8, 4, 'Thailand', 'Bangkok', 'Bangkok Exploration', 'Visited Bangkok, experienced the vibrant street life, enjoyed Thai street food, and visited temples.'),
(9, 5, 'Egypt', 'Cairo', 'Egyptian Wonders', 'Explored the pyramids of Giza, Sphinx, and Egyptian museums in Cairo.'),
(10, 5, 'Brazil', 'Rio de Janeiro', 'Rio Carnival', 'Attended the Rio Carnival, enjoyed the vibrant atmosphere, samba music, and stunning beaches.'),
(11, 6, 'England', 'London', 'London Calling', 'Visited London, saw Buckingham Palace, Tower Bridge, and explored the British Museum.'),
(12, 6, 'China', 'Beijing', 'Beijing Adventure', 'Visited the Great Wall of China, Forbidden City, and explored traditional Chinese culture.'),
(13, 7, 'Canada', 'Vancouver', 'Vancouver Nature', 'Explored Vancouvers nature, visited Stanley Park, and enjoyed the scenic beauty.'),
(14, 7, 'Germany', 'Berlin', 'Berlin History', 'Visited Berlin, explored historical sites, Berlin Wall, and experienced the citys art scene.'),
(15, 8, 'South Africa', 'Cape Town', 'Cape Town Beauty', 'Explored Cape Town, visitedTable Mountain, Robben Island, andenjoyedlocal cuisines.');
SELECT * FROM "travelreport";


--CREATING HOTEL_FACILITY MIDDLE TABLE

CREATE TABLE "hotel_facility"(
    hotel_id INT,
	facility_id INT,
	CONSTRAINT FK_HOTEL FOREIGN KEY(hotel_id) REFERENCES
	"hotel"(hotel_id) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT FK_FACILITY FOREIGN KEY(facility_id) REFERENCES
	"facility"(facility_id) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT PK_STU_SUB PRIMARY KEY(hotel_id,facility_id)
);
SELECT * FROM "hotel_facility";

INSERT INTO Hotel_facility (hotel_id, facility_id) VALUES
(1, 1), 
(1, 2), 
(2, 1), 
(2, 3), 
(3, 2), 
(4, 1), 
(4, 2), 
(4, 3), 
(5, 1), 
(5, 3), 
(6, 2), 
(6, 3), 
(7, 1), 
(8, 2), 
(9, 3); 
SELECT * FROM "hotel_facility";



--Task 07

--SQL queries for List of Travelers of a particular location 

SELECT * FROM "traveler"
WHERE country = 'USA'; 

SELECT * FROM "traveler"
WHERE country = 'China'; 

SELECT * FROM "traveler"
WHERE address = 'Colombo 07, Colombo';

SELECT * FROM "traveler"
WHERE address = 'Kandy Road, Kandy';

SELECT * FROM "traveler"
WHERE country = 'Sri Lanka';



--SQL queries for Sum of transactions received with in a given duration of a particular hotel 

SELECT Hotel.name AS hotel_name, SUM(Transaction.amount) AS total_amount
FROM Transaction
INNER JOIN Reservation ON Transaction.reservation_id = Reservation.reservation_id
INNER JOIN Hotel ON Reservation.hotel_id = Hotel.hotel_id
WHERE Hotel.hotel_id = 1 -- Replace DesiredHotelID 
  AND Transaction.transaction_date BETWEEN '2023-02-01' AND '2023-05-22' -- Replace Start_Date and End_Date with desired date range
GROUP BY Hotel.name;

SELECT Hotel.name AS hotel_name, SUM(Transaction.amount) AS total_amount
FROM Transaction
INNER JOIN Reservation ON Transaction.reservation_id = Reservation.reservation_id
INNER JOIN Hotel ON Reservation.hotel_id = Hotel.hotel_id
WHERE Hotel.hotel_id = 2 -- Replace DesiredHotelID 
  AND Transaction.transaction_date BETWEEN '2023-03-01' AND '2023-05-22' -- Replace Start_Date and End_Date with desired date range
GROUP BY Hotel.name;



--SQL queries for List of hotels and its room availability  

SELECT H.hotel_id, H.name AS hotel_name, COUNT(R.room_id) AS available_rooms
FROM Hotel H
LEFT JOIN Room R ON H.hotel_id = R.hotel_id
GROUP BY H.hotel_id, H.name;



--Task 08
--Test Cases

--Test Case 1.1: add and remove a new column
ALTER TABLE Traveler
ADD phone_number int;
SELECT * FROM "traveler";

--1.2Updating the table by Adding records for created column
UPDATE Traveler
SET phone_number = '0716758596' 
WHERE traveler_id = 1;
SELECT * FROM "traveler";

UPDATE Traveler
SET phone_number = '0776776556' 
WHERE traveler_id = 2;
SELECT * FROM "traveler";

--1.1 Remove a column From a Table
ALTER TABLE Traveler  
DROP phone_number;
SELECT * FROM "traveler";


--Test Case 2.1: Add and delete new records
--Make a new reservation With correct data and incorrect data

--This is Correct Data
INSERT INTO Reservation (reservation_id, traveler_id, hotel_id, reservation_date, duration, number_of_guests, payment_status)
VALUES (16, 10, 15, '2024-01-10', 4, 2, 'Pending');
SELECT * FROM "reservation";

DELETE FROM Reservation
WHERE reservation_id = 16;
SELECT * FROM "reservation";

--2.2 This is incorrect data. We will expecting the Error massage"Hotel ID does not exist"
INSERT INTO Reservation (reservation_id, traveler_id, hotel_id, reservation_date, duration, number_of_guests, payment_status)
VALUES (16, 10, 20, '2024-01-10', 4, 2, 'Pending');
SELECT * FROM "reservation";


--Test Case 3: Validate multiple reservations by the same traveler

-- First reservation for traveler_id = 1
INSERT INTO Reservation (reservation_id, traveler_id, hotel_id, reservation_date, duration, number_of_guests, payment_status)
VALUES (16, 1, 1, '2024-02-15', 5, 2, 'Pending');
SELECT * FROM "reservation";

-- Second reservation for traveler_id = 1
INSERT INTO Reservation (reservation_id, traveler_id, hotel_id, reservation_date, duration, number_of_guests, payment_status)
VALUES (17, 1, 2, '2024-03-20', 3, 1, 'Pending');
SELECT * FROM "reservation";


--Test Case 4: Verify Retrieval of Hotel Information with Available Rooms

SELECT H.hotel_id, H.name AS hotel_name, COUNT(R.room_id) AS available_rooms
FROM Hotel H
RIGHT JOIN Room R ON H.hotel_id = R.hotel_id
GROUP BY H.hotel_id, H.name;


--Test Case 5: Retrieve a list of travelers along with their reservation details

SELECT T.traveler_id, T.name AS traveler_name, T.country, R.reservation_id, R.hotel_id, R.reservation_date
FROM Traveler T
FULL JOIN Reservation R ON T.traveler_id = R.traveler_id;


-- Meta data queries

SELECT * FROM information_schema.tables;
SELECT * FROM information_schema.tables
WHERE table_schema='public';