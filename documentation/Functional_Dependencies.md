\# Functional Dependencies



\## 1. USERS Table



\*\*Functional Dependency:\*\*



`USER\_ID → FULL\_NAME, EMAIL, PHONE, PASSWORD, CREATED\_AT`



\*\*Explanation:\*\*

Each USER\_ID uniquely identifies one user and determines all the details of that user.



\---



\## 2. ADMIN Table



\*\*Functional Dependency:\*\*



`ADMIN\_ID → ADMIN\_NAME, EMAIL, PASSWORD`



\*\*Explanation:\*\*

Each ADMIN\_ID uniquely identifies one administrator and determines the administrator's details.



\---



\## 3. TRAIN Table



\*\*Functional Dependency:\*\*



`TRAIN\_ID → TRAIN\_NUMBER, TRAIN\_NAME, SOURCE, DESTINATION, DEPARTURE\_TIME, ARRIVAL\_TIME, TOTAL\_SEATS, FARE, MANAGED\_BY`



\*\*Explanation:\*\*

Each TRAIN\_ID uniquely identifies a train and determines all its details.



\---



\## 4. FLIGHT Table



\*\*Functional Dependency:\*\*



`FLIGHT\_ID → FLIGHT\_NUMBER, AIRLINE\_NAME, SOURCE, DESTINATION, DEPARTURE\_TIME, ARRIVAL\_TIME, TOTAL\_SEATS, FARE, MANAGED\_BY`



\*\*Explanation:\*\*

Each FLIGHT\_ID uniquely identifies a flight and determines all its details.



\---



\## 5. TRAIN\_SEAT Table



\*\*Functional Dependencies:\*\*



`SEAT\_ID → TRAIN\_ID, SEAT\_NUMBER, SEAT\_CLASS, SEAT\_STATUS`



`(TRAIN\_ID, SEAT\_NUMBER) → SEAT\_ID, SEAT\_CLASS, SEAT\_STATUS`



\*\*Explanation:\*\*

SEAT\_ID uniquely identifies a train seat. The combination of TRAIN\_ID and SEAT\_NUMBER also uniquely identifies a seat within a particular train.



\---



\## 6. FLIGHT\_SEAT Table



\*\*Functional Dependencies:\*\*



`SEAT\_ID → FLIGHT\_ID, SEAT\_NUMBER, SEAT\_CLASS, SEAT\_STATUS`



`(FLIGHT\_ID, SEAT\_NUMBER) → SEAT\_ID, SEAT\_CLASS, SEAT\_STATUS`



\*\*Explanation:\*\*

SEAT\_ID uniquely identifies a flight seat. The combination of FLIGHT\_ID and SEAT\_NUMBER uniquely identifies a seat within a particular flight.



\---



\## 7. BOOKING Table



\*\*Functional Dependency:\*\*



`BOOKING\_ID → PNR, USER\_ID, BOOKING\_TYPE, TRAIN\_ID, FLIGHT\_ID, BOOKING\_DATE, TOTAL\_AMOUNT, BOOKING\_STATUS`



\*\*Explanation:\*\*

Each BOOKING\_ID uniquely identifies a booking and determines all booking-related information.



Also:



`PNR → BOOKING\_ID, USER\_ID, BOOKING\_TYPE, TRAIN\_ID, FLIGHT\_ID, BOOKING\_DATE, TOTAL\_AMOUNT, BOOKING\_STATUS`



\*\*Explanation:\*\*

PNR is unique, so each PNR identifies exactly one booking.



\---



\## 8. PASSENGER Table



\*\*Functional Dependency:\*\*



`PASSENGER\_ID → BOOKING\_ID, PASSENGER\_NAME, AGE, GENDER, ID\_PROOF`



\*\*Explanation:\*\*

Each PASSENGER\_ID uniquely identifies one passenger record.



\---



\## 9. PAYMENT Table



\*\*Functional Dependencies:\*\*



`PAYMENT\_ID → BOOKING\_ID, PAYMENT\_DATE, PAYMENT\_METHOD, PAYMENT\_AMOUNT, PAYMENT\_STATUS, TRANSACTION\_ID`



`BOOKING\_ID → PAYMENT\_ID, PAYMENT\_DATE, PAYMENT\_METHOD, PAYMENT\_AMOUNT, PAYMENT\_STATUS, TRANSACTION\_ID`



`TRANSACTION\_ID → PAYMENT\_ID, BOOKING\_ID, PAYMENT\_DATE, PAYMENT\_METHOD, PAYMENT\_AMOUNT, PAYMENT\_STATUS`



\*\*Explanation:\*\*

PAYMENT\_ID, BOOKING\_ID, and TRANSACTION\_ID are unique in the PAYMENT table, so each can identify one payment record.



\---



\## 10. CANCELLATION Table



\*\*Functional Dependency:\*\*



`CANCELLATION\_ID → BOOKING\_ID, CANCELLATION\_DATE, REASON, REFUND\_AMOUNT`



\*\*Explanation:\*\*

Each CANCELLATION\_ID uniquely identifies one cancellation record.



Also:



`BOOKING\_ID → CANCELLATION\_ID, CANCELLATION\_DATE, REASON, REFUND\_AMOUNT`



\*\*Explanation:\*\*

BOOKING\_ID is unique in the CANCELLATION table, so one booking can have at most one cancellation record.



\---



\## Summary



Functional dependencies help identify how attributes in each table depend on the primary key or other candidate keys. They are useful for identifying redundancy and performing normalization up to \*\*1NF, 2NF, and 3NF\*\*.



