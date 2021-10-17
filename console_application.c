#include<stdio.h>
#include<time.h>
#include <stdlib.h>
#include<pgtypes_date.h>
#include<ecpglib.h>
#include<ecpgtype.h>
#include<sqlda.h>

void executeQuery1();
void executeQuery2();
void executeQuery3();


EXEC SQL BEGIN DECLARE SECTION;
int p_id;
char p_dob[10];
date p_dob1;
char p_name[70], p_email[254], p_gender[1], p_blood_gp[3], p_street1[50], p_street2[50];
char p_city[189], p_state[50], p_country[90];

int pid2, did2, tid2;
char des2[60];

int tid3, rno3;
char rtype[20], block3[1];
date adm3;
EXEC SQL END DECLARE SECTION;


int main(){
  EXEC SQL CONNECT TO "201601122@10.100.71.21" USER "201601122" USING "Darshan@7077";
  EXEC SQL set search_path to hospital_test;

  int choice;

  while(true){
    printf("What would you like to do?\n");
    printf("1. Register a new patient\n");
    printf("2. New Treatment (for registered patients)\n");
    printf("3. Admit a patient\n");
    printf("4. Exit\n");
    printf("\nEnter your choice number: ");
    scanf("%d", &choice);

    switch(choice){
      case 1:
        executeQuery1();
        break;

      case 2:
        executeQuery2();
        break;

      case 3:
        executeQuery3();
        break;

      case 4:
        exit(0);

      default:
        printf("\n\nInvalid Input.\n");
        printf("Write a number between 1 to 4.\n\n");
    }

    printf("\n\n");
  }

}


void executeQuery1(){
  printf("Enter patient details:\n");

  printf("Name: ");
  scanf("%s", p_name);

  printf("Email: ");
  scanf("%s", p_email);

  printf("Gender: ");
  scanf("%s", p_gender);

  printf("Blood Group: ");
  scanf("%s", p_blood_gp);

  printf("DOB: ");
  scanf("%s", p_dob);

  printf("Street Line 1: ");
  scanf("%s", p_street1);

  printf("Street Line 2: ");
  scanf("%s", p_street2);

  printf("City: ");
  scanf("%s", p_city);

  printf("State: ");
  scanf("%s", p_state);

  printf("Country: ");
  scanf("%s", p_country);

  EXEC SQL select count(*) into :p_id from patient;
  p_id++;

  //EXEC SQL SELECT PGTYPESdate_from_asc(:p_dob, NULL) INTO :p_dob1;
  EXEC SQL SELECT to_date('1999-01-02', 'YYYY-MM-DD') INTO :p_dob1;

  EXEC SQL INSERT INTO patient VALUES (:p_id, :p_name, :p_email, :p_gender, :p_blood_gp, :p_dob1, :p_street1, :p_street2, :p_city, :p_state, :p_country);
  EXEC SQL COMMIT;


  EXEC SQL WHENEVER SQLERROR SQLPRINT;
  if(sqlca.sqlcode == 0){
    printf("Patient added successfully.\n");
    printf("For future reference, Patient_ID alloted is: %d\n", p_id);
  }

}



void executeQuery2(){
  printf("Patient ID: ");
  scanf("%d", &pid2);

  char temp;
  scanf("%c", &temp);

  printf("Disease / Injury: ");
  scanf("%[^\n]*c", des2);

  printf("Doctor ID: ");
  scanf("%d", &did2);

  EXEC SQL select count(*) into :tid2 from treatment;
  tid2++;

  EXEC SQL INSERT INTO treatment VALUES (:tid2, :pid2, :des2, :did2, NULL);
  EXEC SQL COMMIT;

  EXEC SQL WHENEVER SQLERROR SQLPRINT;
  if(sqlca.sqlcode == 0){
    printf("Treatment added successfully.\n For future reference, TID is: %d\n", tid2);
  }
}


void executeQuery3(){
  printf("Treatment ID: ");
  scanf("%d", &tid3);

  printf("Type of Room: ");
  scanf("%s", rtype);

  EXEC SQL SELECT room_no, block INTO :rno3, :block3 FROM find_empty_room(:rtype);
  EXEC SQL SELECT now()::date INTO :adm3;

  EXEC SQL INSERT INTO in_patient_treatment VALUES (:tid3, :adm3, NULL, :rno3, :block3);
  EXEC SQL COMMIT;

  EXEC SQL WHENEVER SQLERROR SQLPRINT;
  if(sqlca.sqlcode == 0){
    printf("Room alloted successfully.\nBlock: %s, Room: %d", block3, rno3);
  }
}
