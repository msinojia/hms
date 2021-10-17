SET SEARCH_PATH TO HOSPITAL_TEST;

INSERT INTO employee VALUES(1,'John Monroe','Doctor',115000,'1985-05-12','dp123@gmail.com','Daiict','Near Reliance Chowkdi','Gandhinagar','Gujarat','India',NULL,'2011-05-12',NULL);
INSERT INTO employee VALUES(2,'Stan Lee','Doctor',2250000,'1934-01-28','dp2123@gmail.com','Daiict','Near Reliance Chowkdi','Gandhinagar','Gujarat','India',NULL,'1985-01-28','2018-12-21');
INSERT INTO employee VALUES(3,'Becky Harza','Doctor',1234500,'1938-09-21','dliugb@gmail.com','Cost Avenue','German Town','Gandhinagar','Gujarat','India',NULL,'2005-09-21',NULL);
INSERT INTO employee VALUES(4,'Bojack Horseman','Doctor',2500000,'1946-12-15','secreteriat1@gmail.com','New BEL Road','80 Feet Road','Bangalore','Karnataka','India',NULL,'1981-03-17',NULL);
INSERT INTO employee VALUES(11,'Dolly','Nurse',8346,'1945-11-23','yahoo@gmail.com','3110 Rainy Day Drive','Belmont','Massachusetts','California','USA',NULL,'1975-11-23',NULL);
INSERT INTO employee VALUES(12,'Hester Lee','Nurse', 17346,'1961-01-29','gmail@yahoo.com','7311 Roosevelt Road','Independence','Kansas','California','USA',NULL,'1991-01-29',NULL);
INSERT INTO employee VALUES(13,'Christina Clark','Nurse',6247,'1975-10-03','meghy@gmail.com','Marie Street','Richmond','Massachusetts','California','UK',NULL,'2015-11-23',NULL);
INSERT INTO employee VALUES(14,'Suresh Prajapati','Nurse',5559,'1980-08-10','prajap69@gmail.com','Near Cosmopolitan Club','Old Airport Road','Bangalore','Karnataka','India',NULL,'1996-01-23',NULL);
INSERT INTO employee VALUES(18,'Charles Mcintyre','Pharmacist',4765,'1935-03-23','amypie@gmail.com','3043 Irish Lane','Janes Ville','Detroit','Dublin','Ireland',NULL,'1987-12-23',NULL);
INSERT INTO employee VALUES(21,'Leon Garcia','Ward Boy',247,'1923-04-15','armyspy@derep.com','6555 Five Points','Baltimore','Maryland','Washington DC','USA',NULL,'1956-01-23',NULL);
INSERT INTO employee VALUES(22,'Joseph Nayle','Ward Boy',478,'1962-07-20','dayrep@joseph.com','595 Rhode Island','Washington','District Columbia','Indiana','USA',NULL,'1999-06-10',NULL);
INSERT INTO employee VALUES(23,'Mike Hand','Ward Boy',684,'1947-06-15','rhyta@keaton.com','4050 Kill Dear Drive','Suffolk','Virginia','Texas','USA',NULL,'1956-02-13',NULL);
	
INSERT INTO department VALUES (1,'Cardiology',1,'2012-05-12');
INSERT INTO department VALUES(2,'Ophthalmology',3,'2016-05-14');
INSERT INTO department VALUES(3,'Gynaecology',3,'2017-01-21');
INSERT INTO department VALUES(4,'Nursing',12,'2014-09-12');
INSERT INTO department VALUES(5,'Pharmacy',14,'2016-09-12');
INSERT INTO department VALUES(6,'Cleaner ',22,'2015-03-23');


UPDATE employee SET department_id = 1 WHERE emp_id = 1;
UPDATE employee SET department_id = 2 WHERE emp_id = 2;
UPDATE employee SET department_id = 3 WHERE emp_id = 3;
UPDATE employee SET department_id = 2 WHERE emp_id = 4;
UPDATE employee SET department_id = 4 WHERE emp_id = 11;
UPDATE employee SET department_id = 4 WHERE emp_id = 12;
UPDATE employee SET department_id = 4 WHERE emp_id = 13;
UPDATE employee SET department_id = 4 WHERE emp_id = 14;
UPDATE employee SET department_id = 5 WHERE emp_id = 18;
UPDATE employee SET department_id = 6 WHERE emp_id = 21;
UPDATE employee SET department_id = 6 WHERE emp_id = 22;
UPDATE employee SET department_id = 6 WHERE emp_id = 23;

INSERT INTO employee_phone VALUES(2,9631452412);
INSERT INTO employee_phone VALUES(3,9941452412);
INSERT INTO employee_phone VALUES(3,9941454442);
INSERT INTO employee_phone VALUES(1,9541452412);
INSERT INTO employee_phone VALUES(1,9421452412);
INSERT INTO employee_phone VALUES(4,9011077804);
INSERT INTO employee_phone VALUES(11,9611352412);
INSERT INTO employee_phone VALUES(12,9441452992);
INSERT INTO employee_phone VALUES(12,8541452412);
INSERT INTO employee_phone VALUES(13,8321452417);
INSERT INTO employee_phone VALUES(14,8241452412);
INSERT INTO employee_phone VALUES(14,9141452412);
INSERT INTO employee_phone VALUES(18,9754618399);
INSERT INTO employee_phone VALUES(21,9451452412);
INSERT INTO employee_phone VALUES(22,9541452412);
INSERT INTO employee_phone VALUES(22,9541452447);
INSERT INTO employee_phone VALUES(23,9641452412);

INSERT INTO nurse VALUES(11,'Associate','Cardiology');
INSERT INTO nurse VALUES(12,'Bachelor','Gynaecology');
INSERT INTO nurse VALUES(13,'Master','Pharmacy');
INSERT INTO nurse VALUES(14,'Master','Ophthalmology');

INSERT INTO doctor VALUES(1,'MBBS','Cardiology',500);
INSERT INTO doctor VALUES(2,'MD','Ophthalmology',2000);
INSERT INTO doctor VALUES(3,'MBBS','Gynaecology',1000);
INSERT INTO doctor VALUES(4,'MD','Ophthalmology',850);

INSERT INTO room_details VALUES('Deluxe',500);
INSERT INTO room_details VALUES('VIP',700);
INSERT INTO room_details VALUES('Regular',200);
INSERT INTO room_details VALUES('Emergency',350);

INSERT INTO room VALUES(1,'A','Deluxe');
INSERT INTO room VALUES(2,'A','Deluxe');
INSERT INTO room VALUES(3,'A','Deluxe');
INSERT INTO room VALUES(4,'A','Deluxe');
INSERT INTO room VALUES(5,'A','Deluxe');
INSERT INTO room VALUES(6,'A','Deluxe');
INSERT INTO room VALUES(7,'A','Deluxe');
INSERT INTO room VALUES(8,'A','VIP');
INSERT INTO room VALUES(9,'A','VIP');
INSERT INTO room VALUES(10,'A','VIP');
INSERT INTO room VALUES(11,'A','VIP');
INSERT INTO room VALUES(12,'A','VIP');
INSERT INTO room VALUES(13,'A','VIP');
INSERT INTO room VALUES(14,'A','VIP');
INSERT INTO room VALUES(1,'B','Regular');
INSERT INTO room VALUES(2,'B','Regular');
INSERT INTO room VALUES(3,'B','Regular');
INSERT INTO room VALUES(4,'B','Regular');
INSERT INTO room VALUES(5,'B','Regular');
INSERT INTO room VALUES(6,'B','Regular');
INSERT INTO room VALUES(7,'B','Regular');
INSERT INTO room VALUES(8,'B','Regular');
INSERT INTO room VALUES(9,'B','Regular');
INSERT INTO room VALUES(10,'B','Regular');
INSERT INTO room VALUES(11,'B','Regular');
INSERT INTO room VALUES(12,'B','Regular');
INSERT INTO room VALUES(13,'B','Regular');
INSERT INTO room VALUES(14,'B','Regular');
INSERT INTO room VALUES(15,'B','Regular');
INSERT INTO room VALUES(16,'B','Regular');
INSERT INTO room VALUES(17,'B','Regular');
INSERT INTO room VALUES(18,'B','Regular');
INSERT INTO room VALUES(19,'B','Regular');
INSERT INTO room VALUES(20,'B','Regular');
INSERT INTO room VALUES(21,'B','Regular');
INSERT INTO room VALUES(22,'B','Regular');
INSERT INTO room VALUES(1,'C','Emergency');
INSERT INTO room VALUES(2,'C','Emergency');
INSERT INTO room VALUES(3,'C','Emergency');
INSERT INTO room VALUES(4,'C','Emergency');
INSERT INTO room VALUES(5,'C','Emergency');
INSERT INTO room VALUES(6,'C','Emergency');
INSERT INTO room VALUES(7,'C','Emergency');
INSERT INTO room VALUES(8,'C','Emergency');
INSERT INTO room VALUES(9,'C','Emergency');
INSERT INTO room VALUES(10,'C','Emergency');



INSERT INTO test_type VALUES('Blood',300);
INSERT INTO test_type VALUES('Urine',200);
INSERT INTO test_type VALUES('Eye',200);
INSERT INTO test_type VALUES('X-ray',400);



INSERT INTO test_machines VALUES ('Blood', 'Hematology Analyzer');
INSERT INTO test_machines VALUES ('Urine','Urinalysis Machine');
INSERT INTO test_machines VALUES('Urine','PH meter');
INSERT INTO test_machines VALUES('X-ray','X-ray Generator');
INSERT INTO test_machines VALUES('X-ray','X-ray Detector');
INSERT INTO test_machines VALUES('Eye','Eye Test Machine');



INSERT INTO medicine VALUES('Med1',5,'Capsule');
INSERT INTO medicine VALUES('Med2',3,'Tablet');
INSERT INTO medicine VALUES('Med3',100,'Injection');
INSERT INTO medicine VALUES('Med4',10,'Drops');
INSERT INTO medicine VALUES('Med5',70,'Syrup');
INSERT INTO medicine VALUES('Med6',10.5,'Capsule');
INSERT INTO medicine VALUES('Med7',15,'Capsule');
INSERT INTO medicine VALUES('Med8',12.5,'Capsule');
INSERT INTO medicine VALUES('Med9',16,'Capsule');
INSERT INTO medicine VALUES('Med10',150,'Injection');
INSERT INTO medicine VALUES('Med11',250,'Injection');
INSERT INTO medicine VALUES('Med12',60,'Injection');
INSERT INTO medicine VALUES('Med13',100,'Syrup');
INSERT INTO medicine VALUES('Med14',120,'Syrup');
INSERT INTO medicine VALUES('Med15',10,'Drops');
INSERT INTO medicine VALUES('Med16',60,'Drops');
INSERT INTO medicine VALUES('Med17',5,'Capsule');



INSERT INTO patient VALUES(1,'Prashant Ajagavakar','TheOldGamer@gmail.com','M','O+','1995-02-13','Opp Lady Ratan Tower','Opp Lady Ratan Tower, Dc Road, Worli',' Mumbai','Maharashtra','India');
INSERT INTO patient VALUES(2,'Navin Upalekar','Heavy@gmail.com','M','AB-','1996-12-12','8 , nd Main, Hal rd Stage','New Thippasandra','Bangalore','Karnataka','India');
INSERT INTO patient VALUES(3,'Cyavana Dhavale','sHandsome@gmail.com','M','A+','2001-02-23','108 /b, Level , Dewan Centre, S V Rd','Jogeshwari(w)','Mumbai','Maharashtra','India');
INSERT INTO patient VALUES(4,'Rishu Pandey','pAberrant@gmail.com','M','B-','1986-04-12','60 /, Indl Suburb, Next Govt Soap Factory','beside Yeshw,Yeshwanthpur','Bangalore','Karnataka','India');
INSERT INTO patient VALUES(5,'Daas Achaval','pGentle@gmail.com','M','B+','1978-05-15','29 nd Floor, , Sonawala Building',' Bank Street, Fort','Bangalore','Karnataka','India');
INSERT INTO patient VALUES(6,'Abhinav Shevade','pUncovered@gmail.com','M','O-','1985-02-15','221,baker street',NULL,'Bangalore','Karnataka','India');
INSERT INTO patient VALUES(7,'Katyayana Thakre','cSlippery@gmail.com','M','AB+','1994-04-25','222,Daiict','Infocity','Gandhinagar','Gujarat','India');
INSERT INTO patient VALUES(8,'Sandracottos Limbu','cDefiant@gmail.com','M','A-','1996-06-24','E-401 HOR_MEN','Infocity','Gandhinagar','Gujarat','India');
INSERT INTO patient VALUES(9,'Ashtavakra Nan','cEvanescent@gmail.com','M','B+','1986-04-30','12,B suneri','Iscon','Ahmedabad','Gujarat','India');
INSERT INTO patient VALUES(10,'Vinay Lata','patientx@gmail.com','M','B-','1935-02-27','14, Apartment','Sanand','Bangalore','Karnataka','India');
INSERT INTO patient VALUES(11,'Neha Choraghad','fullmetal@gmail.com','F','A-','1998-04-30','220,Baker Street',NULL,'Bangalore','Karnataka','India');
INSERT INTO patient VALUES(12,'Lia Jadhav','alchemist@gmail.com','F',NULL,'1975-03-04','221,Baker Street',NULL,'Mumbai','Maharashtra','India');
INSERT INTO patient VALUES(13,'Sambridhi Bhatavadekar','abx12@gmail.com','F','A-','1964-01-01','Near Ram Temple',NULL,'Jamnagar','Gujarat','India');
INSERT INTO patient VALUES(14,'Sarojini Padhya','saroji@gmail.com','F','B-','2002-04-23','D-404 HOR-MEN','Daiict','Mumbai','Maharashtra','India');
INSERT INTO patient VALUES(15,'Madri Tamhanakar','madri12@gmail.com','F','O+','2003-04-23','12,Navarngapura Society',NULL,'Surendranagar','Gujarat','India');
INSERT INTO patient VALUES(16,'Lia Thakre','liatha@gmail.com','F','AB+','2002-04-12','29 nd Floo , Sonawala Building',NULL,'Surendranagar','Gujarat','India');
INSERT INTO patient VALUES(17,'Rushpa Bhaumik','rushpa12@gmail.com','F','AB-','1986-12-14','30 nd Floor, Sonawala Building',NULL,'Bangalore','Karnataka','India');
INSERT INTO patient VALUES(18,'Versha Dhavale','versha45@gmail.com','F','O+','1979-04-12','9 , nd Main, Hal rd Stage',NULL,'Bangalore','Karnataka','India');
INSERT INTO patient VALUES(19,'Chamunda Parikh','parikh@gmail.com','F','B+','1987-12-12','10 nd Floor, , Sonawala Building','','Mumbai','Maharashtra','India');
INSERT INTO patient VALUES(20,'Nagini Shrivastav','nagini14@gmail.com','F','B+','1986-04-12','221,Baker Street','Sherlock Society','Gandhinagar','Gujarat','India');



INSERT INTO treatment VALUES(1,1,'Arm Fracture',1,'OUT');
INSERT INTO treatment VALUES(2,2,'Kidney Stones',2,'IN');
INSERT INTO treatment VALUES(3,3,'Leg Fracture',1,'OUT');
INSERT INTO treatment VALUES(4,4,'Breast Cancer',3,'IN');
INSERT INTO treatment VALUES(5,5,'Fever',3,'OUT');
INSERT INTO treatment VALUES(6,6,'Lung Infection',4,'IN');
INSERT INTO treatment VALUES(7,7,'Stomach Upset',1,'OUT');
INSERT INTO treatment VALUES(8,8,'Pancreatic Lossure',2,'IN');
INSERT INTO treatment VALUES(9,9,'Blisters on Skin',2,'OUT');
INSERT INTO treatment VALUES(10,10,'Car Accident',4,'IN');
INSERT INTO treatment VALUES(11,11,'Swallowed Coin',1,'OUT');
INSERT INTO treatment VALUES(12,12,'Internal Beeding',1,'IN');
INSERT INTO treatment VALUES(13,13,'Neck Bleeding',2,'OUT');
INSERT INTO treatment VALUES(14,14,'Finger Cut',1,'IN');
INSERT INTO treatment VALUES(15,15,'Fever',3,'OUT');
INSERT INTO treatment VALUES(16,16,'Gunshot Wound',1,'IN');
INSERT INTO treatment VALUES(17,17,'Arm Fracture',1,'OUT');
INSERT INTO treatment VALUES(18,18,'Car Accident',4,'IN');
INSERT INTO treatment VALUES(19,19,'Fever',3,'OUT');
INSERT INTO treatment VALUES(20,20,'Breast Cancer',3,'IN');
INSERT INTO treatment VALUES(21,2,'Glass Shards in Leg',2,'IN');
INSERT INTO treatment VALUES(22,5,'Skin Scraping',3,'OUT');
INSERT INTO treatment VALUES(23,17,'Stomach Upset',1,'OUT');
INSERT INTO treatment VALUES(24,18,'Lung Infection',4,'IN');
INSERT INTO treatment VALUES(25,10,'Hemorrhage',4,'IN');
INSERT INTO treatment VALUES(26,7,'Leg Fracture',1,'OUT');
INSERT INTO treatment VALUES(27,7,'Dengue',1,'OUT');
INSERT INTO treatment VALUES(28,1,'Jaundice',1,'OUT');
INSERT INTO treatment VALUES(29,13,'Dengue',2,'OUT');
INSERT INTO treatment VALUES(30,4,'Malaria',3,'IN');



INSERT INTO test_log VALUES(1,timestamp '2014-11-09 10:21:10',1,'Blood'); 
INSERT INTO test_log VALUES(2,timestamp '2014-09-11 11:04:01',1,'Urine');
INSERT INTO test_log VALUES(3,timestamp '2014-12-14 12:20:20',2,'X-ray');
INSERT INTO test_log VALUES(4,timestamp '2014-01-15 05:05:05',2,'Urine'); 
INSERT INTO test_log VALUES(5,timestamp '2015-03-04 01:10:10',5,'Blood');
INSERT INTO test_log VALUES(6,timestamp '2015-10-29 16:14:12',5,'Eye');
INSERT INTO test_log VALUES(7,timestamp '2015-10-29 16:20:10',6,'Eye');
INSERT INTO test_log VALUES(8,timestamp '2015-10-29 12:10:23',7,'Blood');
INSERT INTO test_log VALUES(9,timestamp '2016-10-29 12:25:20',8,'Urine');
INSERT INTO test_log VALUES(10,timestamp '2016-10-29 13:26:20',9,'X-ray');
INSERT INTO test_log VALUES(11,timestamp '2016-10-29 12:01:02',10,'Eye');
INSERT INTO test_log VALUES(12,timestamp '2016-10-29 10:20:10',11,'Blood');
INSERT INTO test_log VALUES(13,timestamp '2017-10-29 16:12:13',12,'X-ray');
INSERT INTO test_log VALUES(14,timestamp '2017-10-29 14:12:26',12,'X-ray');
INSERT INTO test_log VALUES(15,timestamp '2017-10-29 12:14:16',12,'Eye');
INSERT INTO test_log VALUES(16,timestamp '2017-10-29 02:03:12',13,'Blood');
INSERT INTO test_log VALUES(17,timestamp '2018-10-29 02:03:01',15,'Urine');
INSERT INTO test_log VALUES(18,timestamp '2018-10-29 14:16:12',17,'Eye');
INSERT INTO test_log VALUES(19,timestamp '2018-10-29 12:16:10',19,'X-ray');
INSERT INTO test_log VALUES(20,timestamp '2018-10-29 17:15:12',20,'Urine');
INSERT INTO test_log VALUES(21,timestamp '2018-10-30 18:15:12',21,'Blood');
INSERT INTO test_log VALUES(22,timestamp '2018-10-30 12:18:12',22,'Eye');
INSERT INTO test_log VALUES(23,timestamp '2018-10-29 11:25:32',23,'Blood');
INSERT INTO test_log VALUES(24,timestamp '2018-10-29 22:15:27',24,'Urine');
INSERT INTO test_log VALUES(25,timestamp '2018-10-30 19:45:52',25,'Urine');
INSERT INTO test_log VALUES(26,timestamp '2018-10-31 17:35:02',26,'Eye');
INSERT INTO test_log VALUES(27,timestamp '2018-10-31 08:05:55',27,'Blood');
INSERT INTO test_log VALUES(28,timestamp '2018-10-28 19:09:36',28,'X-ray');
INSERT INTO test_log VALUES(29,timestamp '2018-10-28 17:15:12',29,'Urine');
INSERT INTO test_log VALUES(30,timestamp '2018-10-30 17:15:12',30,'Blood');


INSERT INTO eye_test_log VALUES(6,0.25,0.75,005,0.25,0.45);
INSERT INTO eye_test_log VALUES(7,-1.30,-1.56,120,-0.85,-1.25);
INSERT INTO eye_test_log VALUES(11,-2.56,-2.88,140,3.52,3.81);
INSERT INTO eye_test_log VALUES(15,3.56,3.89,110,-2.32,-2.89);
INSERT INTO eye_test_log VALUES(18,-4.23,-4.89,058,2.5,2.75);
INSERT INTO eye_test_log VALUES(22,-4.05,-4.67,130,-2.15,-2.72);
INSERT INTO eye_test_log VALUES(26,1.23,2.08,95,3.25,3.75);


INSERT INTO urine_test_log VALUES(2,'YELLOW','odor',TRUE,FALSE,FALSE,TRUE,4.5);
INSERT INTO urine_test_log VALUES(4,'DARK YELLOW','odorless',TRUE,TRUE,TRUE,FALSE,3.9);
INSERT INTO urine_test_log VALUES(9,'MILD YELLOW','odor',FALSE,TRUE,FALSE,TRUE,2.6);
INSERT INTO urine_test_log VALUES(17,'CRIMSON','odor',TRUE,FALSE,TRUE,FALSE,7.7);
INSERT INTO urine_test_log VALUES(20,'YELLOW','odorless',TRUE,TRUE,FALSE,TRUE,3.6);
INSERT INTO urine_test_log VALUES(24,'YELLOW','odorless',TRUE,FALSE,TRUE,TRUE,5.5);
INSERT INTO urine_test_log VALUES(25,'DARK YELLOW','odor',FALSE,TRUE,FALSE,FALSE,6.3);
INSERT INTO urine_test_log VALUES(29,'YELLOW','odorless',TRUE,TRUE,FALSE,FALSE,4.9);



INSERT INTO blood_test_log VALUES(1,'B+',14,6000,5000000,300000,179);
INSERT INTO blood_test_log VALUES(5,'O-',14.5,5500,4500000,240000,202);
INSERT INTO blood_test_log VALUES(8,'A+',16,4300,5800000,450000,195);
INSERT INTO blood_test_log VALUES(12,'B+',12.3,6500,6000000,180000,183); 
INSERT INTO blood_test_log VALUES(16,'B-',17.6,8000,4900000,350000,211);
INSERT INTO blood_test_log VALUES(21,'O-',16.6,8500,5000000,370000,181);
INSERT INTO blood_test_log VALUES(23,'AB+',13.8,7000,6200000,260000,194);
INSERT INTO blood_test_log VALUES(27,'A-',14.2,6400,3900000,190000,177);
INSERT INTO blood_test_log VALUES(30,'O+',15.9,4400,4300000,420000,200);



INSERT INTO x_ray_log VALUES(3,'Radiographic examination of the cervical spine demonstrates no evidence of acute fracture, 
dislocation or osseous destruction. The atlantodental interval is within the normal accepted range. 
Viewed coronally bony alignment is unremarkable. Viewed sagittally the normal cervical lordosis is well maintained. 
Overall bone density is adequate.','No radiographic evidence of acute fracture, vertebral instability or 
intervertebral foraminal encroachment.');

INSERT INTO x_ray_log VALUES(10,'The sacroiliac joints are 
within normal limits. The psoas shadows are symmetrical and there is no evidence of soft tissue 
masses or calcification appreciated. Bowel is normal in contour and content. No organomegaly is 
observed.','No radiographic evidence of acute fracture, pars defect or vertebral instability. ');

INSERT INTO x_ray_log VALUES(13,'The trachea is midline and appears to deviate. The hila and mediastinal structures are normal. 
The costophrenic and cardiophrenic angles are sharp but have fluid. The hemidiaphragm are normal and the
 partially visualized abdominal structures are unremarkable. The heart is of normal size and shape. 
The lung fields are well aerated and vascularized. There is some evidence of a pulmonary mass or infiltrate.',
'There is present radiographic evidence of pulmonary disease.');

INSERT INTO x_ray_log VALUES(14,'Radiographic examination of the thoracic spine demonstrates no evidence of acute fracture, dislocation 
or osseous destruction. Viewed coronally and sagittally bony alignment is within normal limits. 
The soft tissue structures including the partially visualized lungs and abdomen are within normal limits.',
'No radiographic evidence of acute fracture or osseous abnormality.');

INSERT INTO x_ray_log VALUES(19,'No visible lines and tubes. Lungs are well defined and clear. No pleural effusion or pneumothorax.
The cardiomediastinal silhouette is normal.','Clear lungs without evidence of pneumonia.');

INSERT INTO x_ray_log VALUES(28,'Radiographic examination of the thoracic spine demonstrates no evidence of acute fracture, dislocation 
or osseous destruction. Viewed coronally and sagittally bony alignment is not within normal limits. 
The soft tissue structures including the partially visualized lungs and abdomen are well outside the normal limits.','Radiographic evidence of acute fracture or osseous abnormality is present.');




INSERT INTO in_patient_treatment VALUES(2,'2014-09-11',NULL,12,'A');
INSERT INTO in_patient_treatment VALUES(4,'2014-01-15',NULL,19,'B');
INSERT INTO in_patient_treatment VALUES(6,'2015-10-28',NULL,3,'C');
INSERT INTO in_patient_treatment VALUES(8,'2015-10-30',NULL,9,'A');
INSERT INTO in_patient_treatment VALUES(10,'2016-10-29',NULL,1,'A');
INSERT INTO in_patient_treatment VALUES(12,'2016-10-28',NULL,5,'B');
INSERT INTO in_patient_treatment VALUES(14,'2017-10-28',NULL,7,'C');
INSERT INTO in_patient_treatment VALUES(16,'2017-10-29',NULL,14,'B');
INSERT INTO in_patient_treatment VALUES(18,'2018-10-31',NULL,9,'C');
INSERT INTO in_patient_treatment VALUES(20,'2018-10-29',NULL,8,'A');
INSERT INTO in_patient_treatment VALUES(22,'2018-10-30',NULL,4,'C');
INSERT INTO in_patient_treatment VALUES(24,'2018-10-29',NULL,11,'A');
INSERT INTO in_patient_treatment VALUES(26,'2018-11-07',NULL,16,'B');
INSERT INTO in_patient_treatment VALUES(28,'2018-11-13',NULL,18,'B');
INSERT INTO in_patient_treatment VALUES(30,'2018-11-06',NULL,10,'A');

UPDATE in_patient_treatment SET discharge_date = '2014-10-01' WHERE treatment_id = 2;
UPDATE in_patient_treatment SET discharge_date = '2014-04-11' WHERE treatment_id = 4;
UPDATE in_patient_treatment SET discharge_date = '2015-12-12' WHERE treatment_id = 6;
UPDATE in_patient_treatment SET discharge_date = '2016-01-08' WHERE treatment_id = 8;
UPDATE in_patient_treatment SET discharge_date = '2016-10-31' WHERE treatment_id = 10;
UPDATE in_patient_treatment SET discharge_date = '2016-12-01' WHERE treatment_id = 12;
UPDATE in_patient_treatment SET discharge_date = '2018-02-14' WHERE treatment_id = 14;
UPDATE in_patient_treatment SET discharge_date = '2017-11-26' WHERE treatment_id = 16;
UPDATE in_patient_treatment SET discharge_date = '2018-11-13' WHERE treatment_id = 18;
UPDATE in_patient_treatment SET discharge_date = '2018-11-02' WHERE treatment_id = 20;
UPDATE in_patient_treatment SET discharge_date = '2018-11-05' WHERE treatment_id = 22;
UPDATE in_patient_treatment SET discharge_date = '2018-12-15' WHERE treatment_id = 24;
UPDATE in_patient_treatment SET discharge_date = '2018-11-09' WHERE treatment_id = 26;


INSERT INTO relative VALUES(2,'Prashant Ajagavakar','Father',9665815747);
INSERT INTO relative VALUES(4,'Darshan Patel','Brother',9765815741);
INSERT INTO relative VALUES(6,'Prashant Ajagavakar','Father',9865815741);
INSERT INTO relative VALUES(8,'Anil Roy','Father',9665815721);
INSERT INTO relative VALUES(10,'Daas Achaval','Father',9665815731);
INSERT INTO relative VALUES(12,'Rushpa Bhaumik','Sister',9665815736);
INSERT INTO relative VALUES(14,'Lia Roy','Sister',9765815741);
INSERT INTO relative VALUES(16,'Aarya Startk','Mother',9865815741);
INSERT INTO relative VALUES(18,'Kalpana Shrivastav','Mother',9465815741);
INSERT INTO relative VALUES(20,'Madri Tamhanakar','Father',9164815741);
INSERT INTO relative VALUES(22,'Prashant Ajagavakar','Father',9645815441);
INSERT INTO relative VALUES(24,'Kantilal Patel','Father',9614815771);
INSERT INTO relative VALUES(26,'Madri Tamhanakar','Sister',9614815721);
INSERT INTO relative VALUES(28,'Umang Patel','Father',9665815741);
INSERT INTO relative VALUES(30,'Prashant Ajagavakar','Brother',9565815741);



INSERT INTO out_patient_treatment VALUES(1,'2014-11-09');
INSERT INTO out_patient_treatment VALUES(3,'2014-12-14');
INSERT INTO out_patient_treatment VALUES(5,'2015-03-04');
INSERT INTO out_patient_treatment VALUES(7,'2015-10-29');
INSERT INTO out_patient_treatment VALUES(9,'2016-10-29');
INSERT INTO out_patient_treatment VALUES(11,'2016-10-29');
INSERT INTO out_patient_treatment VALUES(13,'2017-10-29');
INSERT INTO out_patient_treatment VALUES(15,'2017-10-29');
INSERT INTO out_patient_treatment VALUES(17,'2018-10-29');
INSERT INTO out_patient_treatment VALUES(19,'2018-10-29');
INSERT INTO out_patient_treatment VALUES(21,'2018-10-30');
INSERT INTO out_patient_treatment VALUES(23,'2018-10-29');
INSERT INTO out_patient_treatment VALUES(25,'2018-10-30');
INSERT INTO out_patient_treatment VALUES(27,'2018-10-31');
INSERT INTO out_patient_treatment VALUES(29,'2018-10-28');


	
INSERT INTO medicine_prescribed VALUES(1,'Med1',10);
INSERT INTO medicine_prescribed VALUES(1,'Med2',2);
INSERT INTO medicine_prescribed VALUES(1,'Med5',5);
INSERT INTO medicine_prescribed VALUES(2,'Med6',10);
INSERT INTO medicine_prescribed VALUES(3,'Med5',3);
INSERT INTO medicine_prescribed VALUES(3,'Med7',6);
INSERT INTO medicine_prescribed VALUES(4,'Med6',10);
INSERT INTO medicine_prescribed VALUES(5,'Med9',4);
INSERT INTO medicine_prescribed VALUES(6,'Med12',6);
INSERT INTO medicine_prescribed VALUES(6,'Med2',7);
INSERT INTO medicine_prescribed VALUES(7,'Med9',8);
INSERT INTO medicine_prescribed VALUES(8,'Med10',9);
INSERT INTO medicine_prescribed VALUES(9,'Med12',10);
INSERT INTO medicine_prescribed VALUES(10,'Med2',12);
INSERT INTO medicine_prescribed VALUES(10,'Med6',13);
INSERT INTO medicine_prescribed VALUES(11,'Med2',14);
INSERT INTO medicine_prescribed VALUES(12,'Med6',15);
INSERT INTO medicine_prescribed VALUES(13,'Med15',1);
INSERT INTO medicine_prescribed VALUES(14,'Med14',10);
INSERT INTO medicine_prescribed VALUES(14,'Med13',12);
INSERT INTO medicine_prescribed VALUES(15,'Med7',14);
INSERT INTO medicine_prescribed VALUES(16,'Med6',15);
INSERT INTO medicine_prescribed VALUES(17,'Med8',8);
INSERT INTO medicine_prescribed VALUES(18,'Med13',9);
INSERT INTO medicine_prescribed VALUES(19,'Med2',10);
INSERT INTO medicine_prescribed VALUES(20,'Med10',16);
INSERT INTO medicine_prescribed VALUES(21,'Med16',10);



INSERT INTO patient_phone VALUES(1,9631452412);
INSERT INTO patient_phone VALUES(2,9941452412);
INSERT INTO patient_phone VALUES(3,9941454442);
INSERT INTO patient_phone VALUES(4,9541452412);
INSERT INTO patient_phone VALUES(5,9421452412);
INSERT INTO patient_phone VALUES(6,9611352412);
INSERT INTO patient_phone VALUES(7,9441452992);
INSERT INTO patient_phone VALUES(8,8541452412);
INSERT INTO patient_phone VALUES(9,8321452417);
INSERT INTO patient_phone VALUES(10,8241452412);
INSERT INTO patient_phone VALUES(11,9141452412);
INSERT INTO patient_phone VALUES(12,9451452412);
INSERT INTO patient_phone VALUES(13,9541452412);
INSERT INTO patient_phone VALUES(14,9541452447);
INSERT INTO patient_phone VALUES(15,9641452412);
INSERT INTO patient_phone VALUES(16,9631452412);
INSERT INTO patient_phone VALUES(17,9941452412);
INSERT INTO patient_phone VALUES(18,9941454442);
INSERT INTO patient_phone VALUES(19,9541452412);
INSERT INTO patient_phone VALUES(20,9421452412);



INSERT INTO nurse_shift VALUES(26,11,timestamp '2018-11-07 08:00:00',timestamp '2018-11-07 20:00:00');
INSERT INTO nurse_shift VALUES(26,12,timestamp '2018-11-07 20:00:00',timestamp '2018-11-08 08:00:00');
INSERT INTO nurse_shift VALUES(26,11,timestamp '2018-11-08 08:00:00',timestamp '2018-11-08 20:00:00');
INSERT INTO nurse_shift VALUES(26,13,timestamp '2018-11-08 20:00:00',timestamp '2018-11-09 08:00:00');
INSERT INTO nurse_shift VALUES(26,11,timestamp '2018-11-09 08:00:00',timestamp '2018-11-09 20:00:00');
INSERT INTO nurse_shift VALUES(28,14,timestamp '2018-11-13 09:00:00',timestamp '2018-11-13 21:00:00');
INSERT INTO nurse_shift VALUES(28,13,timestamp '2018-11-13 21:00:00',timestamp '2018-11-14 09:00:00');
INSERT INTO nurse_shift VALUES(28,14,timestamp '2018-11-14 09:00:00',timestamp '2018-11-14 21:00:00');
INSERT INTO nurse_shift VALUES(30,12,timestamp '2018-11-06 08:00:00',timestamp '2018-11-06 20:00:00');
INSERT INTO nurse_shift VALUES(30,14,timestamp '2018-11-06 20:00:00',timestamp '2018-11-07 08:00:00');
INSERT INTO nurse_shift VALUES(30,13,timestamp '2018-11-07 08:00:00',timestamp '2018-11-07 20:00:00');
INSERT INTO nurse_shift VALUES(30,14,timestamp '2018-11-07 20:00:00',timestamp '2018-11-08 08:00:00');
INSERT INTO nurse_shift VALUES(30,12,timestamp '2018-11-08 08:00:00',timestamp '2018-11-08 20:00:00');
INSERT INTO nurse_shift VALUES(30,14,timestamp '2018-11-08 20:00:00',timestamp '2018-11-09 08:00:00');
INSERT INTO nurse_shift VALUES(30,12,timestamp '2018-11-09 08:00:00',timestamp '2018-11-09 20:00:00');



UPDATE bill SET is_paid = TRUE WHERE treatment_id = 1;
UPDATE bill SET is_paid = TRUE WHERE treatment_id = 2;
UPDATE bill SET is_paid = TRUE WHERE treatment_id = 3;
UPDATE bill SET is_paid = TRUE WHERE treatment_id = 4;
UPDATE bill SET is_paid = TRUE WHERE treatment_id = 5;
UPDATE bill SET is_paid = TRUE WHERE treatment_id = 6;
UPDATE bill SET is_paid = TRUE WHERE treatment_id = 7;
UPDATE bill SET is_paid = TRUE WHERE treatment_id = 8;
UPDATE bill SET is_paid = TRUE WHERE treatment_id = 9;
UPDATE bill SET is_paid = TRUE WHERE treatment_id = 10;
UPDATE bill SET is_paid = TRUE WHERE treatment_id = 11;
UPDATE bill SET is_paid = TRUE WHERE treatment_id = 12;
UPDATE bill SET is_paid = TRUE WHERE treatment_id = 13;
UPDATE bill SET is_paid = TRUE WHERE treatment_id = 14;
UPDATE bill SET is_paid = TRUE WHERE treatment_id = 15;
UPDATE bill SET is_paid = TRUE WHERE treatment_id = 16;
UPDATE bill SET is_paid = TRUE WHERE treatment_id = 17;
UPDATE bill SET is_paid = TRUE WHERE treatment_id = 18;
UPDATE bill SET is_paid = TRUE WHERE treatment_id = 19;
UPDATE bill SET is_paid = TRUE WHERE treatment_id = 20;
UPDATE bill SET is_paid = TRUE WHERE treatment_id = 21;
UPDATE bill SET is_paid = TRUE WHERE treatment_id = 22;
UPDATE bill SET is_paid = TRUE WHERE treatment_id = 23;
UPDATE bill SET is_paid = TRUE WHERE treatment_id = 24;
UPDATE bill SET is_paid = TRUE WHERE treatment_id = 25;
UPDATE bill SET is_paid = TRUE WHERE treatment_id = 26;
