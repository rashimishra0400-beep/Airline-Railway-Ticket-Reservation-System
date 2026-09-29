-- 1. Display all available trains

SELECT TRAIN_ID,
       TRAIN_NUMBER,
       TRAIN_NAME,
       SOURCE,
       DESTINATION,
       DEPARTURE_TIME,
       ARRIVAL_TIME,
       FARE
FROM TRAIN;
-- 2. Search trains by source and destination

SELECT TRAIN_NUMBER,
       TRAIN_NAME,
       SOURCE,
       DESTINATION,
       FARE
FROM TRAIN
WHERE SOURCE = 'Bhopal'
AND DESTINATION = 'Delhi';
-- 3. Display all available flights

SELECT FLIGHT_ID,
       FLIGHT_NUMBER,
       AIRLINE_NAME,
       SOURCE,
       DESTINATION,
       DEPARTURE_TIME,
       ARRIVAL_TIME,
       FARE
FROM FLIGHT;
-- 4. Search flights by source and destination

SELECT FLIGHT_NUMBER,
       AIRLINE_NAME,
       SOURCE,
       DESTINATION,
       FARE
FROM FLIGHT
WHERE SOURCE = 'Delhi'
AND DESTINATION = 'Mumbai';
-- 5. Display available seats for a train

SELECT TS.SEAT_ID,
       TS.SEAT_NUMBER,
       TS.SEAT_CLASS,
       TS.SEAT_STATUS,
       T.TRAIN_NUMBER,
       T.TRAIN_NAME
FROM TRAIN_SEAT TS
JOIN TRAIN T
ON TS.TRAIN_ID = T.TRAIN_ID
WHERE TS.SEAT_STATUS = 'AVAILABLE';
-- 6. Display available seats for a flight

SELECT FS.SEAT_ID,
       FS.SEAT_NUMBER,
       FS.SEAT_CLASS,
       FS.SEAT_STATUS,
       F.FLIGHT_NUMBER,
       F.AIRLINE_NAME
FROM FLIGHT_SEAT FS
JOIN FLIGHT F
ON FS.FLIGHT_ID = F.FLIGHT_ID
WHERE FS.SEAT_STATUS = 'AVAILABLE';
-- 7. View booking details using PNR

SELECT B.PNR,
       B.BOOKING_TYPE,
       B.BOOKING_DATE,
       B.TOTAL_AMOUNT,
       B.BOOKING_STATUS,
       P.PASSENGER_NAME,
       P.AGE,
       P.GENDER
FROM BOOKING B
JOIN PASSENGER P
ON B.BOOKING_ID = P.BOOKING_ID
WHERE B.PNR = 'TRN10001';
-- 8. Display all bookings of a user

SELECT U.FULL_NAME,
       B.PNR,
       B.BOOKING_TYPE,
       B.TOTAL_AMOUNT,
       B.BOOKING_STATUS,
       B.BOOKING_DATE
FROM USERS U
JOIN BOOKING B
ON U.USER_ID = B.USER_ID
WHERE U.USER_ID = 101;
-- 9. Display complete booking information

SELECT B.PNR,
       U.FULL_NAME,
       B.BOOKING_TYPE,
       T.TRAIN_NAME,
       F.AIRLINE_NAME,
       B.TOTAL_AMOUNT,
       B.BOOKING_STATUS
FROM BOOKING B
JOIN USERS U
ON B.USER_ID = U.USER_ID
LEFT JOIN TRAIN T
ON B.TRAIN_ID = T.TRAIN_ID
LEFT JOIN FLIGHT F
ON B.FLIGHT_ID = F.FLIGHT_ID;
-- 10. Display payment details for bookings

SELECT B.PNR,
       U.FULL_NAME,
       P.PAYMENT_METHOD,
       P.PAYMENT_AMOUNT,
       P.PAYMENT_STATUS,
       P.TRANSACTION_ID
FROM PAYMENT P
JOIN BOOKING B
ON P.BOOKING_ID = B.BOOKING_ID
JOIN USERS U
ON B.USER_ID = U.USER_ID;
-- 11. Display cancelled bookings and refund details

SELECT B.PNR,
       U.FULL_NAME,
       C.CANCELLATION_DATE,
       C.REASON,
       C.REFUND_AMOUNT
FROM CANCELLATION C
JOIN BOOKING B
ON C.BOOKING_ID = B.BOOKING_ID
JOIN USERS U
ON B.USER_ID = U.USER_ID;
-- 12. Calculate total booking amount

SELECT SUM(TOTAL_AMOUNT) AS TOTAL_BOOKING_AMOUNT
FROM BOOKING;
-- 13. Calculate average booking amount

SELECT AVG(TOTAL_AMOUNT) AS AVERAGE_BOOKING_AMOUNT
FROM BOOKING;
-- 14. Find the highest booking amount

SELECT MAX(TOTAL_AMOUNT) AS HIGHEST_BOOKING_AMOUNT
FROM BOOKING;
-- 15. Count bookings by type

SELECT BOOKING_TYPE,
       COUNT(*) AS TOTAL_BOOKINGS
FROM BOOKING
GROUP BY BOOKING_TYPE;
-- 16. Display bookings in descending order of amount

SELECT PNR,
       BOOKING_TYPE,
       TOTAL_AMOUNT,
       BOOKING_STATUS
FROM BOOKING
ORDER BY TOTAL_AMOUNT DESC;
-- 17. Find booking types having at least 2 bookings

SELECT BOOKING_TYPE,
       COUNT(*) AS TOTAL_BOOKINGS
FROM BOOKING
GROUP BY BOOKING_TYPE
HAVING COUNT(*) >= 2;
-- 18. Display users whose booking amount is greater than 1000

SELECT U.FULL_NAME,
       B.PNR,
       B.BOOKING_TYPE,
       B.TOTAL_AMOUNT,
       P.PAYMENT_METHOD
FROM USERS U
JOIN BOOKING B
ON U.USER_ID = B.USER_ID
JOIN PAYMENT P
ON B.BOOKING_ID = P.BOOKING_ID
WHERE B.TOTAL_AMOUNT > 1000
ORDER BY B.TOTAL_AMOUNT DESC;