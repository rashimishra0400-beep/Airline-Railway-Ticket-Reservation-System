-- =========================================
-- AIRLINE & RAILWAY TICKET RESERVATION SYSTEM
-- DATABASE VIEWS
-- =========================================


-- 1. Complete Booking Summary

CREATE VIEW BOOKING_SUMMARY AS
SELECT B.PNR,
       U.FULL_NAME,
       B.BOOKING_TYPE,
       B.TOTAL_AMOUNT,
       B.BOOKING_STATUS,
       B.BOOKING_DATE
FROM BOOKING B
JOIN USERS U
ON B.USER_ID = U.USER_ID;


-- 2. Train Details View

CREATE VIEW TRAIN_DETAILS AS
SELECT TRAIN_NUMBER,
       TRAIN_NAME,
       SOURCE,
       DESTINATION,
       DEPARTURE_TIME,
       ARRIVAL_TIME,
       FARE
FROM TRAIN;


-- 3. Flight Details View

CREATE VIEW FLIGHT_DETAILS AS
SELECT FLIGHT_NUMBER,
       AIRLINE_NAME,
       SOURCE,
       DESTINATION,
       DEPARTURE_TIME,
       ARRIVAL_TIME,
       FARE
FROM FLIGHT;