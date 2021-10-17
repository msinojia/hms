create or replace function create_bill()
	returns trigger as $bill$
	declare
		doc_cost decimal(6,2);
    begin
		select consultation_fee into doc_cost from doctor where emp_id = NEW.doctor_assigned;
    	INSERT INTO bill SELECT new.treatment_id,	CURRENT_DATE,0,0,0, 0 ,0,false;
		UPDATE bill set consultation_cost = doc_cost where treatment_id = NEW.treatment_id;
        return new;
    end;
$bill$ LANGUAGE plpgsql;

drop trigger if exists bill on treatment; 

CREATE TRIGGER bill
AFTER INSERT ON treatment
		for each row EXECUTE PROCEDURE create_bill();
		
		
		
create or replace function update_bill()
	returns trigger as $bill$
    declare
    	med_cost decimal(9,2);
    begin
    	select m_cost into med_cost from medicine where medicine_name = NEW.medicine_name;
        update bill set medicine_cost = medicine_cost + med_cost*NEW.quantity where treatment_id = NEW.treatment_id;
        return new;
    end;
$bill$ LANGUAGE plpgsql;

drop trigger if exists bill on medicine_prescribed; 

CREATE TRIGGER bill
AFTER INSERT ON medicine_prescribed
		for each row EXECUTE PROCEDURE update_bill();
        
		
		
		
create or replace function update_test_bill()
	returns trigger as $bill$
    declare
    	t_cost decimal(9,2);
    begin
    	select cost into t_cost from test_type where test_name = NEW.test_type;
        update bill set tests_cost = tests_cost + t_cost where treatment_id = NEW.treatment_id;
        return new;
    end;
$bill$ LANGUAGE plpgsql;

drop trigger if exists bill on test_log; 

CREATE TRIGGER bill
AFTER INSERT ON test_log
		for each row EXECUTE PROCEDURE update_test_bill();
		
		
		
		
		
		
		

create or replace function calculate_bill()
	returns trigger as $bill$
	declare
		tot_cost decimal(10,2);
    begin
		update bill set total_cost = NEW.tests_cost + NEW.medicine_cost + NEW.room_cost + NEW.consultation_cost where 
        treatment_id = NEW.treatment_id and OLD.total_cost = NEW.total_cost;
        return new;
    end;
$bill$ LANGUAGE plpgsql;

drop trigger if exists bill on bill; 

CREATE TRIGGER bill
AFTER UPDATE ON bill
		for each row EXECUTE PROCEDURE calculate_bill();
        
		
		
		
		

		
		
		
		
create or replace function update_room_bill()
	returns trigger as $bill$
	declare
		m_type varchar(20);
        m_cost decimal(6,2);
        m_days integer;
    begin
    	select r_type into m_type from room where room_no = NEW.room_no and block = NEW.block; 
        select r_cost into m_cost from room_details where r_type = m_type;
        m_days :=  NEW.discharge_date::date - NEW.admission_date::date;
		update bill set room_cost = m_cost * m_days where 
        treatment_id = NEW.treatment_id and OLD.discharge_date IS NULL and NEW.discharge_date IS NOT NULL;
        return new;
    end;
$bill$ LANGUAGE plpgsql;

drop trigger if exists bill on in_patient_treatment; 

CREATE TRIGGER bill
AFTER UPDATE ON in_patient_treatment
		for each row EXECUTE PROCEDURE update_room_bill();




		
		

		