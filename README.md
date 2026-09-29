\# Airline \& Railway Ticket Reservation System



\## 📌 Project Overview



The \*\*Airline \& Railway Ticket Reservation System\*\* is a DBMS project designed to manage railway and airline ticket reservations.



The system stores and manages information related to users, administrators, trains, flights, seats, bookings, passengers, payments, and cancellations.



The project demonstrates important \*\*Database Management System concepts\*\*, including:



\* Relational database design

\* Primary and foreign keys

\* Functional dependencies

\* Normalization up to 3NF

\* SQL queries

\* Joins

\* Aggregate functions

\* GROUP BY and HAVING

\* ORDER BY

\* Database views

\* Data insertion, modification and deletion



\---



\## 🎯 Objectives



The main objectives of this project are:



1\. To design a structured reservation database.

2\. To allow users to store and manage booking information.

3\. To manage train and flight details.

4\. To maintain passenger and seat information.

5\. To store payment and cancellation details.

6\. To demonstrate SQL queries and database operations.

7\. To apply normalization techniques to reduce data redundancy.



\---



\## 🛠️ Technologies Used



\* \*\*Database:\*\* Oracle Database

\* \*\*Platform:\*\* Oracle Live SQL

\* \*\*Language:\*\* SQL

\* \*\*Documentation:\*\* Markdown

\* \*\*Database Concepts:\*\* ER Model, Functional Dependencies, Keys and Normalization



\---



\## 🗂️ Database Tables



The project contains the following 10 tables:



| Table          | Purpose                                    |

| -------------- | ------------------------------------------ |

| `USERS`        | Stores registered user information         |

| `ADMIN`        | Stores administrator information           |

| `TRAIN`        | Stores train details                       |

| `FLIGHT`       | Stores flight details                      |

| `TRAIN\_SEAT`   | Stores train seat information              |

| `FLIGHT\_SEAT`  | Stores flight seat information             |

| `BOOKING`      | Stores train and flight booking details    |

| `PASSENGER`    | Stores passenger information               |

| `PAYMENT`      | Stores payment details                     |

| `CANCELLATION` | Stores cancellation and refund information |



\---



\## 🔑 Key Relationships



The major relationships in the database are:



\* An \*\*Admin\*\* can manage trains and flights.

\* A \*\*User\*\* can make bookings.

\* A \*\*Booking\*\* can contain passenger details.

\* A \*\*Booking\*\* can have payment information.

\* A \*\*Booking\*\* can have cancellation information.

\* A \*\*Train\*\* has multiple seats.

\* A \*\*Flight\*\* has multiple seats.

\* A \*\*Booking\*\* can be associated with either a train or a flight.



\---



\## 👁️ Database Views



Three views are created in the project:



\### 1. BOOKING\_SUMMARY



Displays important booking information along with the user's name.



\### 2. TRAIN\_DETAILS



Displays train number, name, source, destination, timings and fare.



\### 3. FLIGHT\_DETAILS



Displays flight number, airline, source, destination, timings and fare.



\---



\## 📊 SQL Operations Demonstrated



The project demonstrates:



\* SELECT queries

\* INSERT operations

\* UPDATE operations

\* DELETE operations

\* INNER JOIN

\* LEFT JOIN

\* Aggregate functions such as `SUM()`, `AVG()`, `MAX()` and `COUNT()`

\* `GROUP BY`

\* `HAVING`

\* `ORDER BY`

\* Multi-table queries

\* Database views



\---



\## 📐 Database Design



\### Functional Dependencies



Functional dependencies for all major tables are documented in:



`documentation/Functional\_Dependencies.md`



\### Keys



Primary keys, candidate keys, alternate keys and foreign keys are documented in:



`documentation/Keys.md`



\### Normalization



The database design follows normalization principles up to:



\* 1NF

\* 2NF

\* 3NF



Details are available in:



`documentation/Normalization\_1NF\_2NF\_3NF.md`



\---



\## 🖼️ ER Diagram



The Entity Relationship Diagram is available at:



`documentation/ER\_Diagram.png`



\---



\## 📸 Screenshots



Database execution screenshots are available in the:



`screenshots/`



folder.



They demonstrate table creation, views, train and flight information, seat availability, bookings, payments, cancellations and SQL query outputs.



\---



\## 📁 Project Structure



```text

Airline\_Railway\_Ticket\_Reservation\_System

│

├── database

│   ├── 01\_create\_tables.sql

│   ├── 02\_insert\_data.sql

│   ├── 03\_queries.sql

│   └── 04\_views.sql

│

├── documentation

│   ├── Functional\_Dependencies.md

│   ├── Keys.md

│   ├── Normalization\_1NF\_2NF\_3NF.md

│   └── ER\_Diagram.png

│

├── screenshots

│   ├── 01\_all\_tables.png

│   ├── 02\_booking\_summary.png

│   ├── 03\_train\_details.png

│   ├── 04\_flight\_details.png

│   ├── 05\_train\_search.png

│   ├── 06\_available\_train\_seats.png

│   ├── 07\_available\_flight\_seats.png

│   ├── 08\_booking\_passenger\_details.png

│   ├── 09\_user\_bookings.png

│   ├── 10\_complete\_booking.png

│   ├── 11\_payment\_details.png

│   ├── 12\_cancellation\_refund.png

│   ├── 13\_total\_booking\_amount.png

│   ├── 14\_average\_booking\_amount.png

│   ├── 15\_highest\_booking\_amount.png

│   ├── 16\_booking\_type\_count.png

│   ├── 17\_booking\_amount\_order.png

│   ├── 18\_booking\_having.png

│   └── 19\_high\_value\_bookings.png

│

└── README.md

```



\---



\## 🚀 How to Run



1\. Open \*\*Oracle Live SQL\*\*.

2\. Execute `01\_create\_tables.sql` to create the database tables.

3\. Execute `02\_insert\_data.sql` to insert the sample records.

4\. Execute `03\_queries.sql` to test different SQL operations.

5\. Execute `04\_views.sql` to create the database views.



> \*\*Note:\*\* The sample data is intended for academic/demo purposes.



\---



\## 🎓 Academic Project



\*\*Project:\*\* Airline \& Railway Ticket Reservation System

\*\*Subject:\*\* Database Management System (DBMS)



This project was developed to demonstrate practical implementation of relational database concepts using Oracle SQL.



