/* Методи класу Since_work */
-- DROP TYPE PSince_work FORCE;
CREATE OR REPLACE TYPE BODY Since_work AS 
    
       
    
/* Процедура зміни значень атрибутів */
MEMBER PROCEDURE fill_Since_work(p_since_work_id NUMBER, p_documents_id VARCHAR, p_information_id NUMBER)
IS
BEGIN
UPDATE Since_work SET documents_id = p_documents_id  VARCHAR, information_id = p_information_id NUMBER, advices = p_advices NUMBER
WHERE since_work_id = p_since_work_id;
SELF.documents_id  := p_documents_id , SELF.information := p_information, SELF.advices := p_advices
END fillPersonaldata;

/* Функції отримання значень атрибутів */
/* get_personaldata_id */
MEMBER FUNCTION get_since_work_id
RETURN NUMBER 
IS
BEGIN
RETURN SELF.since_work_id;
END get_since_work_id;
        
/* get_group_of_muscules*/
MEMBER FUNCTION get_information
RETURN NUMBER 
IS
BEGIN
RETURN SELF.information;
END get_information;

/* Процедура виводу на екран значень атрибутів */
MEMBER PROCEDURE display 
IS
BEGIN 
dbms_output.put_line('since_work_id: ' || since_work_id);
dbms_output.put_line('information: ' || information);
dbms_output.put_line('documents: ' || documents);
dbms_output.put_line('advices: ' || advices);  
END display;
END; 
/
