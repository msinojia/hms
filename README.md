# Hospital Management System
A console application to solve the use cases of a hospital such as registration of patients, tracking their details, lab tests, billing, availability of hospital resources/staff.

## ER Diagram
[Click here](https://github.com/msinojia/hms/blob/main/ER_diagram.pdf) to view the ER diagram for this system. The key features are:

- Details of every visit by a patient, and if it was an in-patient or out-patient visit.
- Doctor and nurses who treated the patient.
- Details of room alloted (and which rooms are available), treatment given, tests taken (including test results), medicines provided, and the bill for the treatment with status of payment.
- Other staff details and their department.

## Other Diagrams

- [Normalization](https://github.com/msinojia/hms/blob/main/normalization.pdf): Dependency of each field on others and proving how it satisfies the BCNF criteria.
- [Relational Model](https://github.com/msinojia/hms/blob/main/relational_model.pdf): Details of all the tables in the DB (such as fields, PK/FK, data types) and the dependency between them.

## SQL Scripts
- [DDL script](https://github.com/msinojia/hms/blob/main/DDL_script.sql): SQL script to create tables.
- [Insert script](https://github.com/msinojia/hms/blob/main/insert_script.sql): To insert some sample data for testing.
- [Stored procedures](https://github.com/msinojia/hms/blob/main/stored_procedures.sql): Procedure to find an empty room that is available to be alloted.
- [Triggers](https://github.com/msinojia/hms/blob/main/triggers.sql): Update the treatment bill automatically whenever a chargable action is performed (eg. booking an appointment, taking a test, medicine, room allotment, etc.)

## How to run the application
- Create a database and run DDL and insert scripts (linked above) for initialization.
- Run the [console application](https://github.com/msinojia/hms/blob/main/console_application.c) (C language code) in terminal to start the application, and follow the instructions to perform operations such as patient registration, creating a treatment, etc.
