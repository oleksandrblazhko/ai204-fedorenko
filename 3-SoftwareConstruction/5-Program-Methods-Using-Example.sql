/* Приклади роботи з класом Consumer */
DECLARE
   cons1 Consumer;
BEGIN 
    cons1:= NEW Consumer (2, Arthur, , Kumichenko, 24, cabinet32, Kumichenko21@gmail.com);
dbms_output.put_line('consumer_id: ' || consumer_id);
dbms_output.put_line('consumer_name: ' || consumer_name);
dbms_output.put_line('consumer_surname: ' || consumer_surname);
dbms_output.put_line('consumer_age: ' || consumer_age);
dbms_output.put_line('consumer_place: ' || consumer_place);  
dbms_output.put_line('consumer_email_address: ' || consumer_email_address);

    cons1.display();
END;
/


/* Приклад роботи з класами Consumer, Cleanser */
DECLARE 
    cons1 Consumer;
    cleanser1 Cleanser;
BEGIN 
    cons1:= Consumer(2, Arthur, , Kumichenko, 24, cabinet32, Kumichenko21@gmail.com;
    cleanser1:= Cleanser(4, cabinet32, TO_DATE('11.03.2022','DD/MM/YYYY'), cons1);
    ins1.display();
END;
/

/* Приклад роботи з класами Consumer, Cleanser, Admin */
DECLARE 
   ad1 Admin;
   pd1 Personal_data;
   ins1 Insomnia;
BEGIN
    ad1:= Admin(4, Sasha, Ortuda, 2, 10, 9);
    cons1:= Consumer(3,TO_DATE('11.03.2022','DD/MM/YYYY'), Tokareva, Marina, Borisova, Bad, Bad, 2, tr1);
    cleanser1:= Cleanser(4, cabinet32, TO_DATE('11.03.2022','DD/MM/YYYY'), cleanser1);
    cleanser1.display(); 
END;
/
