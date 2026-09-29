\# Keys



\## 1. USERS



\* \*\*Primary Key:\*\* `USER\_ID`

\* \*\*Candidate Key:\*\* `USER\_ID`, `EMAIL`

\* \*\*Alternate Key:\*\* `EMAIL`



`USER\_ID` uniquely identifies each user. `EMAIL` is also unique, so it can act as a candidate key.



\---



\## 2. ADMIN



\* \*\*Primary Key:\*\* `ADMIN\_ID`

\* \*\*Candidate Key:\*\* `ADMIN\_ID`, `EMAIL`

\* \*\*Alternate Key:\*\* `EMAIL`



`ADMIN\_ID` uniquely identifies each administrator. `EMAIL` is also unique.



\---



\## 3. TRAIN



\* \*\*Primary Key:\*\* `TRAIN\_ID`

\* \*\*Candidate Key:\*\* `TRAIN\_ID`, `TRAIN\_NUMBER`

\* \*\*Alternate Key:\*\* `TRAIN\_NUMBER`

\* \*\*Foreign Key:\*\* `MANAGED\_BY` → `ADMIN(ADMIN\_ID)`



`TRAIN\_NUMBER` is unique and can also uniquely identify a train.



\---



\## 4. FLIGHT



\* \*\*Primary Key:\*\* `FLIGHT\_ID`

\* \*\*Candidate Key:\*\* `FLIGHT\_ID`, `FLIGHT\_NUMBER`

\* \*\*Alternate Key:\*\* `FLIGHT\_NUMBER`

\* \*\*Foreign Key:\*\* `MANAGED\_BY` → `ADMIN(ADMIN\_ID)`



`FLIGHT\_NUMBER` is unique and can also uniquely identify a flight.



\---



\## 5. TRAIN\_SEAT



\* \*\*Primary Key:\*\* `SEAT\_ID`

\* \*\*Candidate Key:\*\* `SEAT\_ID`, `(TRAIN\_ID, SEAT\_NUMBER)`

\* \*\*Foreign Key:\*\* `TRAIN\_ID` → `TRAIN(TRAIN\_ID)`



The combination of `TRAIN\_ID` and `SEAT\_NUMBER` uniquely identifies a seat within a train.



\---



\## 6. FLIGHT\_SEAT



\* \*\*Primary Key:\*\* `SEAT\_ID`

\* \*\*Candidate Key:\*\* `SEAT\_ID`, `(FLIGHT\_ID, SEAT\_NUMBER)`

\* \*\*Foreign Key:\*\* `FLIGHT\_ID` → `FLIGHT(FLIGHT\_ID)`



The combination of `FLIGHT\_ID` and `SEAT\_NUMBER` uniquely identifies a seat within a flight.



\---



\## 7. BOOKING



\* \*\*Primary Key:\*\* `BOOKING\_ID`

\* \*\*Candidate Key:\*\* `BOOKING\_ID`, `PNR`

\* \*\*Alternate Key:\*\* `PNR`

\* \*\*Foreign Keys:\*\*



&#x20; \* `USER\_ID` → `USERS(USER\_ID)`

&#x20; \* `TRAIN\_ID` → `TRAIN(TRAIN\_ID)`

&#x20; \* `FLIGHT\_ID` → `FLIGHT(FLIGHT\_ID)`



`PNR` is unique and can uniquely identify a booking.



\---



\## 8. PASSENGER



\* \*\*Primary Key:\*\* `PASSENGER\_ID`

\* \*\*Foreign Key:\*\* `BOOKING\_ID` → `BOOKING(BOOKING\_ID)`



`PASSENGER\_ID` uniquely identifies each passenger record.



\---



\## 9. PAYMENT



\* \*\*Primary Key:\*\* `PAYMENT\_ID`

\* \*\*Candidate Key:\*\* `PAYMENT\_ID`, `BOOKING\_ID`, `TRANSACTION\_ID`

\* \*\*Alternate Keys:\*\* `BOOKING\_ID`, `TRANSACTION\_ID`

\* \*\*Foreign Key:\*\* `BOOKING\_ID` → `BOOKING(BOOKING\_ID)`



`BOOKING\_ID` is unique because the system allows one payment record per booking.



\---



\## 10. CANCELLATION



\* \*\*Primary Key:\*\* `CANCELLATION\_ID`

\* \*\*Candidate Key:\*\* `CANCELLATION\_ID`, `BOOKING\_ID`

\* \*\*Alternate Key:\*\* `BOOKING\_ID`

\* \*\*Foreign Key:\*\* `BOOKING\_ID` → `BOOKING(BOOKING\_ID)`



`BOOKING\_ID` is unique in the cancellation table, allowing at most one cancellation record for a booking.



\---



\# Key Definitions



\### Primary Key



A primary key uniquely identifies each record in a table. It cannot contain duplicate or NULL values.



\### Candidate Key



A candidate key is an attribute or set of attributes that can uniquely identify a record and can potentially be selected as the primary key.



\### Alternate Key



A candidate key that is not selected as the primary key is called an alternate key.



\### Foreign Key



A foreign key is an attribute that references the primary key of another table. It establishes a relationship between tables.



