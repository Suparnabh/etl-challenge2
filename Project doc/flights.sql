CREATE TABLE airports(
   AIRPORT_CODE VARCHAR NOT NULL PRIMARY KEY,
   AIRPORT VARCHAR NOT NULL,
   CITY VARCHAR,
   STATE VARCHAR,
   COUNTRY VARCHAR,
   LATITUDE DECIMAL,
   LONGITUDE DECIMAL
);

CREATE TABLE airlines(
   AIRLINE_CODE VARCHAR NOT NULL PRIMARY KEY,
   AIRLINE VARCHAR NOT NULL
);

CREATE TABLE modflights(
FLIGHT_ID INT NOT NULL PRIMARY KEY,
YEAR INT,
MONTH INT,
DAY INT,
DAY_OF_WEEK INT,
AIRLINE_CODE VARCHAR NOT NULL,
FLIGHT_NUMBER INT,
TAIL_NUMBER VARCHAR,
ORIGIN_AIRPORT_CODE VARCHAR NOT NULL,
DESTINATION_AIRPORT_CODE VARCHAR NOT NULL,
SCHEDULED_DEPARTURE INT,
DEPARTURE_TIME DECIMAL,
DEPARTURE_DELAY DECIMAL,
TAXI_OUT DECIMAL,
WHEELS_OFF DECIMAL,
SCHEDULED_TIME DECIMAL,
ELAPSED_TIME DECIMAL,
	
	
AIR_TIME DECIMAL,
DISTANCE DECIMAL,
WHEELS_ON DECIMAL,
TAXI_IN DECIMAL,
SCHEDULED_ARRIVAL DECIMAL,
ARRIVAL_TIME DECIMAL,
ARRIVAL_DELAY DECIMAL,
DIVERTED INT,
CANCELLED INT,
FOREIGN KEY (AIRLINE_CODE) REFERENCES airlines(AIRLINE_CODE),
FOREIGN KEY (ORIGIN_AIRPORT_CODE) REFERENCES airports(AIRPORT_CODE),
FOREIGN KEY (DESTINATION_AIRPORT_CODE) REFERENCES airports(AIRPORT_CODE)
);

SELECT * FROM modflights;

DROP TABLE modflights;