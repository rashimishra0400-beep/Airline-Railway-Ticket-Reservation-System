\# Normalization – 1NF, 2NF and 3NF



\## Introduction



Normalization is a database design technique used to reduce data redundancy and improve data consistency. It divides large tables into smaller related tables and establishes relationships using keys.



The Airline \& Railway Ticket Reservation System is designed using normalization principles up to \*\*Third Normal Form (3NF)\*\*.



\---



\# First Normal Form (1NF)



A table is in \*\*1NF\*\* when:



\* Each column contains atomic values.

\* There are no repeating groups.

\* Each record is uniquely identifiable.



\### Application in this Project



The tables in the project store atomic values.



For example, the `PASSENGER` table stores one passenger's information in each row:



| PASSENGER\_ID | BOOKING\_ID | PASSENGER\_NAME | AGE | GENDER |

| ------------ | ---------- | -------------- | --- | ------ |

| 2001         | 1001       | Rashi Mishra   | 18  | Female |

| 2002         | 1001       | Gargi Verma    | 19  | Female |



Each field contains a single value and each passenger record has a unique `PASSENGER\_ID`.



Therefore, the tables satisfy \*\*1NF\*\*.



\---



\# Second Normal Form (2NF)



A table is in \*\*2NF\*\* when:



1\. It is already in 1NF.

2\. Every non-key attribute is fully dependent on the whole primary key.

3\. There is no partial dependency.



\### Application in this Project



The system uses separate tables for different entities such as:



\* Users

\* Admins

\* Trains

\* Flights

\* Bookings

\* Passengers

\* Payments

\* Cancellations

\* Train Seats

\* Flight Seats



For example, in `TRAIN\_SEAT`, the seat information is associated with a particular train. The combination `(TRAIN\_ID, SEAT\_NUMBER)` can uniquely identify a seat within a train.



Similarly, in `FLIGHT\_SEAT`, `(FLIGHT\_ID, SEAT\_NUMBER)` identifies a seat within a flight.



The attributes of these tables depend on the complete identifying key and not on only a part of a composite key.



Therefore, the design satisfies \*\*2NF\*\*.



\---



\# Third Normal Form (3NF)



A table is in \*\*3NF\*\* when:



1\. It is already in 2NF.

2\. There is no transitive dependency.

3\. Non-key attributes depend only on the key.



\### Application in this Project



The database separates related entities into different tables.



For example, administrator information is stored in the `ADMIN` table instead of repeatedly storing administrator details in the `TRAIN` and `FLIGHT` tables.



The `TRAIN` and `FLIGHT` tables store only the administrator reference:



`MANAGED\_BY → ADMIN(ADMIN\_ID)`



Similarly:



`BOOKING.USER\_ID → USERS(USER\_ID)`



`PASSENGER.BOOKING\_ID → BOOKING(BOOKING\_ID)`



`PAYMENT.BOOKING\_ID → BOOKING(BOOKING\_ID)`



`CANCELLATION.BOOKING\_ID → BOOKING(BOOKING\_ID)`



This prevents user, administrator, booking, and payment information from being unnecessarily repeated.



Therefore, the database design satisfies \*\*3NF\*\*.



\---



\# Normalization Summary



| Normal Form | Main Rule                             | Implementation in Project                                                             |

| ----------- | ------------------------------------- | ------------------------------------------------------------------------------------- |

| \*\*1NF\*\*     | Atomic values and no repeating groups | Each field stores a single value                                                      |

| \*\*2NF\*\*     | No partial dependency                 | Attributes depend on the complete identifying key                                     |

| \*\*3NF\*\*     | No transitive dependency              | Separate tables are used for users, admins, trains, flights, bookings, payments, etc. |



\---



\# Benefits of Normalization



1\. Reduces data redundancy.

2\. Prevents inconsistent data.

3\. Makes database maintenance easier.

4\. Improves data integrity.

5\. Reduces unnecessary duplication.

6\. Makes relationships between entities clear.

7\. Supports efficient database management.



\---



\# Conclusion



The Airline \& Railway Ticket Reservation System is organized into multiple related tables using primary keys and foreign keys. The database follows normalization principles up to \*\*3NF\*\*, which helps reduce redundancy, maintain consistency, and improve the overall database structure.



