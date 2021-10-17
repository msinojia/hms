drop type if exists room_type cascade;

create type room_type as (
    room_no smallint,
    block char(1)
);


create or replace function find_empty_room(m_type varchar(20))
	returns room_type as $BODY$
    declare
    	foundRoom room_type;
    	m_room room%ROWTYPE;
        isAlloted boolean;
        tr in_patient_treatment%ROWTYPE;
    begin
    	FOR m_room in select * from room where r_type = m_type LOOP
        	isAlloted = false;
        	FOR tr in select * from in_patient_treatment where room_no = m_room.room_no and block = m_room.block LOOP
            	IF tr.discharge_date IS NULL THEN
                	isAlloted := true;
                END IF;
            END LOOP;
   
            IF isAlloted = false THEN
                foundRoom.room_no := m_room.room_no;
                foundRoom.block := m_room.block;
            	RETURN foundRoom;
            END IF;
        END LOOP;
        RAISE NOTICE 'Room unavailable';
        RETURN NULL; 
end $BODY$ language plpgsql;



		