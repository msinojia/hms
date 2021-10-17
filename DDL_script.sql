SET SEARCH_PATH TO hmst;

drop table if exists Patient cascade;
drop table if exists Patient_Phone cascade;
drop table if exists Treatment cascade;
drop table if exists Medicine_Prescribed cascade;
drop table if exists Medicine cascade;
drop table if exists Bill cascade;
drop table if exists Out_Patient_Treatment cascade;
drop table if exists In_Patient_Treatment cascade;
drop table if exists Relative cascade;
drop table if exists Room cascade;
drop table if exists Doctor cascade;
drop table if exists Nurse cascade;
drop table if exists Employee cascade;
drop table if exists Employee_Phone cascade;
drop table if exists Department cascade;
drop table if exists Room_Details cascade;
drop table if exists Nurse_Shift cascade;
drop table if exists Test_Log cascade;
drop table if exists Test_Type cascade;
drop table if exists Test_Machines cascade;
drop table if exists Blood_Test_Log cascade;
drop table if exists Urine_Test_Log cascade;
drop table if exists X_Ray_Log cascade;
drop table if exists Eye_Test_Log cascade;


create table Employee (
   Emp_ID        INTEGER      not null        ,
   E_Name        VARCHAR(70)  not null        ,
   E_Type        VARCHAR(15)  not null        ,
   Salary        DECIMAL(9,2) not null        ,
   E_DOB         DATE         not null        ,
   E_Email       VARCHAR(254) not null unique ,
   E_Street1     VARCHAR(50)  not null        ,
   E_Street2     VARCHAR(50)                  ,
   E_City        VARCHAR(189) not null        ,
   E_State       VARCHAR(50)  not null        ,
   E_Country     VARCHAR(90)  not null        ,
   Department_ID INTEGER                      ,
   Joining_Date  DATE         not null        ,
   Leaving_Date  DATE                         ,
   constraint pk_Employee primary key (Emp_ID)
)   ;


create table Department (
   DID        INTEGER     not null,
   D_Name     VARCHAR(50) not null,
   HOD        INTEGER     not null,
   Head_Since DATE        not null,
   constraint pk_Department primary key (DID),
   constraint fk_DepartmentEmployee foreign key (HOD) references Employee(Emp_ID) on delete cascade
)   ;

alter table Employee
add constraint fk_EmployeeDepartment 
foreign key (Department_ID) references Department(DID);

create table Employee_Phone (
   Emp_ID  INTEGER     not null,
   E_Phone VARCHAR(15) not null,
   constraint pk_Employee_Phone primary key (Emp_ID,E_Phone),
   constraint fk_Phone_Employee foreign key (Emp_ID) references Employee(Emp_ID) on delete cascade
)   ;

create table Nurse (
   Emp_ID          INTEGER     not null,
   N_Qualification VARCHAR(50) not null,
   N_Type          VARCHAR(30) not null,
   constraint pk_Nurse primary key (Emp_ID),
   constraint fk_NurseEmployee foreign key (Emp_ID) references Employee(Emp_ID) on delete cascade
)   ;

create table Doctor (
   Emp_ID             INTEGER      not null,
   Doc_Qualification  VARCHAR(50)  not null,
   Doc_Specialization VARCHAR      not null,--  Take value GENERAL if no particular specialization
   Consultation_Fee   DECIMAL(6,2) not null,
   constraint pk_Doctor primary key (Emp_ID),
   constraint fk_DoctorEmployee foreign key (Emp_ID) references Employee(Emp_ID) on delete cascade
)   ;

create table Room_Details (
   R_Type VARCHAR(20)  not null,
   R_Cost DECIMAL(6,2) not null,
   constraint pk_Room_Details primary key (R_Type)
)   ;

create table Room (
   Room_No SMALLINT    not null,
   Block   CHAR(1)     not null,
   R_Type  VARCHAR(20) not null,
   constraint pk_Room primary key (Room_No,Block),
   constraint fk_RoomDetails foreign key (R_Type) references Room_Details(R_Type) on delete cascade
)   ;

create table Test_Type (
   Test_Name VARCHAR(35)  not null,
   Cost      DECIMAL(7,2) not null,
   constraint pk_Test_Type primary key (Test_Name)
)   ;

create table Test_Machines (
   Test_Name VARCHAR(35) not null,
   Machine   VARCHAR(40) not null,
   constraint pk_Test_Machines primary key (Test_Name,Machine),
   constraint fk_TestMachinesType foreign key (Test_Name) references Test_Type(Test_Name) on delete cascade
)   ;

create table Medicine (
   Medicine_Name VARCHAR(50)  not null,
   M_Cost        DECIMAL(8,2) not null,
   M_Type        VARCHAR(20)  not null,
   constraint pk_Medicine primary key (Medicine_Name)
)   ;

create table Patient (
   Patient_ID  INTEGER      not null,
   P_Name      VARCHAR(70)  not null,
   P_Email     VARCHAR(254) 	    ,
   P_Gender    CHAR(1)      not null,
   Blood_Group VARCHAR(3)           ,
   P_DOB       DATE         not null,
   P_Street1   VARCHAR(50)  not null,
   P_Street2   VARCHAR(50)          ,
   P_City      VARCHAR(189) not null,
   P_State     VARCHAR(50)  not null,
   P_Country   VARCHAR(90)  not null,
   constraint pk_Patient primary key (Patient_ID)
)   ;

create table Treatment (
   Treatment_ID    INTEGER     not null,
   Patient_ID      INTEGER     not null,
   Disease_or_Injury  VARCHAR(60) not null,
   Doctor_Assigned INTEGER             ,
   Patient_Type    VARCHAR(11)         , --  Range of values: {IN_PATIENT, OUT_PATIENT}
   constraint pk_Treatment primary key (Treatment_ID),
   constraint fk_TreatmentPatient foreign key (Patient_ID) references Patient(Patient_ID) on delete cascade,
   constraint fk_TreatmentDoctor foreign key (Doctor_Assigned) references Doctor(Emp_ID) on delete cascade
)   ;

create table Test_Log (
   Test_ID      INTEGER     not null,
   Timestamp    TIMESTAMP   not null,
   Treatment_ID INTEGER     not null,
   Test_Type    VARCHAR(35) not null,
   constraint pk_Test_Log primary key (Test_ID),
   constraint fk_TestLogTreatment foreign key (Treatment_ID) references Treatment(Treatment_ID) on delete cascade,
   constraint fk_TestLogType foreign key (Test_Type) references Test_Type(Test_Name) on delete cascade
)   ;


create table Eye_Test_Log (
   Test_ID     INTEGER      not null,
   Sphere_OS   DECIMAL(4,2) not null,
   Sphere_OD   DECIMAL(4,2) not null,
   Axis        SMALLINT     not null,
   Cylinder_OS DECIMAL(4,2) not null,
   Cylinder_OD DECIMAL(4,2) not null,
   constraint pk_Eye_Test_Log primary key (Test_ID),
   constraint fk_Eye_TestLog foreign key (Test_ID) references Test_Log(Test_ID) on delete cascade
)   ;

create table X_Ray_Log (
   Test_ID    INTEGER      not null,
   Findings   VARCHAR(400) not null,
   Impression VARCHAR(100)  not null,
   constraint pk_X_Ray_Log primary key (Test_ID),
   constraint fk_Xray_TestLog foreign key (Test_ID) references Test_Log(Test_ID) on delete cascade
)   ;

create table Urine_Test_Log (
   Test_ID      INTEGER      not null,
   Colour       VARCHAR(15)  not null,
   Odour        VARCHAR(20)  not null,
   Fungus       BOOLEAN      not null,
   Sugar        BOOLEAN      not null,
   Blood        BOOLEAN      not null,
   Transparency VARCHAR(15)  not null,
   pH           DECIMAL(3,1) not null,
   constraint pk_Urine_Test_Log primary key (Test_ID),
   constraint fk_Urine_TestLog foreign key (Test_ID) references Test_Log(Test_ID) on delete cascade
)   ;

create table Blood_Test_Log (
   Test_ID        INTEGER      not null,
   Blood_Group    VARCHAR(3)   not null,
   Haemoglobin    DECIMAL(3,1) not null,
   WBC_Count      INTEGER      not null,
   RBC_Count      INTEGER      not null,
   Platelet_Count INTEGER      not null,
   Cholestrol     INTEGER      not null,
   constraint pk_Blood_Test_Log primary key (Test_ID),
   constraint fk_Blood_TestLog foreign key (Test_ID) references Test_Log(Test_ID) on delete cascade
)   ;

create table In_Patient_Treatment (
   Treatment_ID   INTEGER  not null,
   Admission_Date DATE     not null,
   Discharge_Date DATE             ,
   Room_No        SMALLINT not null,
   Block          CHAR(1)  not null,
   constraint pk_In_Patient primary key (Treatment_ID),
   constraint fk_In_PatientTreatment foreign key (Treatment_ID) references Treatment(Treatment_ID) on delete cascade,
   constraint fk_In_PatientRoom foreign key (Room_No, Block) references Room(Room_No, Block) on delete cascade
)   ;

create table Nurse_Shift (
   Treatment_ID INTEGER   not null,
   Emp_ID       INTEGER   not null,
   Start_Time   TIMESTAMP not null,
   End_Time     TIMESTAMP         ,
   constraint pk_Nurse_Shift primary key (Treatment_ID,Emp_ID,Start_time),
   constraint fk_NurseShiftInPatient foreign key (Treatment_ID) references In_Patient_Treatment(Treatment_ID) on delete cascade,
   constraint fk_NurseShift_Nurse foreign key (Emp_ID) references Nurse(Emp_ID) on delete cascade
)   ;

create table Relative (
   Treatment_ID INTEGER     not null,
   R_Name       VARCHAR(70) not null,
   Relation     VARCHAR(20) not null,
   R_Phone      VARCHAR(15) not null,
   constraint pk_Relative primary key (Treatment_ID),
   constraint fk_RelativeInPatient foreign key (Treatment_ID) references In_Patient_Treatment(Treatment_ID) on delete cascade
)   ;

create table Out_Patient_Treatment (
   Treatment_ID INTEGER not null,
   Visit_Date   DATE    not null,
   constraint pk_Out_Patient primary key (Treatment_ID),
   constraint fk_Out_PatientTreatment foreign key (Treatment_ID) references Treatment(Treatment_ID) on delete cascade
)   ;


create table Bill(
   Treatment_ID      INTEGER       not null,
   Bill_Date         DATE                  ,
   Tests_Cost        DECIMAL(9,2)          ,
   Medicine_Cost     DECIMAL(9,2)          ,
   Room_Cost         DECIMAL(9,2)          ,
   Consultation_Cost DECIMAL(6,2)          ,
   Total_Cost        DECIMAL(10,2) not null,
   is_paid				 BOOLEAN			   ,
   constraint pk_Bill_Paid primary key (Treatment_ID,Bill_Date),
   constraint fk_BillTreatment foreign key (Treatment_ID) references Treatment(Treatment_ID) on delete cascade
)   ;

create table Medicine_Prescribed (
   Treatment_ID  INTEGER     not null,
   Medicine_Name VARCHAR(50) not null,
   Quantity      SMALLINT    not null,
   constraint pk_Medicine_Prescribed primary key (Treatment_ID,Medicine_Name),
   constraint fk_MedPrescribedTreatment foreign key (Treatment_ID) references Treatment(Treatment_ID) on delete cascade,
   constraint fk_MedPrescribedMedicine foreign key (Medicine_Name) references Medicine(Medicine_Name) on delete cascade
)   ;


create table Patient_Phone (
   Patient_ID INTEGER     not null,
   P_Phone    VARCHAR(15) not null,
   constraint pk_Patient_Phone primary key (Patient_ID,P_Phone),
   constraint fk_PhonePatient foreign key (Patient_ID) references Patient(Patient_ID) on delete cascade
)   ;