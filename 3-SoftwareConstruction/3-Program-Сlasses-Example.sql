/* Створення об'єктного типу (класу) Consumer */
CREATE OR REPLACE TYPE Consumer AS OBJECT (
consumer_id NUMBER(4), -- N користувача 
consumer_name VARCHAR(20), -- ім'я користувача
consumer_surname VARCHAR(20), -- прізвище користувача
consumer_age INTEGER, -- вік користувача
consumer_place VARCHAR(25), -- міце користувача
consumer_email_address VARCHAR(25), -- пошта користувача
    	NOT FINAL MEMBER PROCEDURE display
) NOT FINAL 
/

/* Cтворення об'єктного типу (класу) Admin, що успадковує об'єктний тип Consumer */
CREATE OR REPLACE TYPE Psychologist UNDER User (
   admin_id INTEGER, -- id адміну
	admin_name VARCHAR(25), -- ім'я адміну
	admin_surname VARCHAR(25), -- прізвище адміну
	consumer_id INTEGER, -- номер користувача
	admin_expirience INTEGER, -- стаж (в роках) адміна
  work INTEGER -- назва наукової роботи
	/* перевизначення методу-процедури класу Consumer */
    	OVERRIDING MEMBER PROCEDURE display 
);
/

/* Створення об'єктного типу (клас) Thermometr */
cleanser_id -- N виміру
cleanser_place VARCHAR(25), -- місце, де проводяться очищення повітря
	cleanser_date DATE -- день, коли проводяться очищення повітря
  /* конструктор екземплярів об'єктів класів.
       	Вхідні параметри:
	   1) cleanser_date - дата очищення
	   умова 1) якщо в таблиці cleanser вже існує вказана дата,
	   створюється екземпляр класу на основі даних таблиці,
	   інакше в таблиці cleanser створюється новий рядок з одночасним
	   створюється екземпляр класу 
	 Вихідний параметр - екземпляр обєкту класу */
    	CONSTRUCTOR FUNCTION cleanser(cleanser_date_DATE)
        	RETURN SELF AS RESULT,
		/* Процедура зміни значення атрибутів */
		MEMBER PROCEDURE set_Date_(cleanser_id NUMBER, cleanser_date_DATE),
    		/* Функції отримання значень атрибутів */
		MEMBER FUNCTION get_cleanser_id RETURN NUMBER,
		MEMBER FUNCTION get_Date_ RETURN DATE,
    	/* Процедура виводу на екран значень атрибутів */
    	MEMBER PROCEDURE display
  	/* Процедура виводу на екран значень атрибутів */
    	MEMBER PROCEDURE display
); 

/* Створення об'єктного типу (клас) Training_plans */
-- DROP TYPE since_work FORCE;
CREATE OR REPLACE TYPE since_work AS OBJECT (
  since_work_id INTEGER, -- id роботи
    advices INTEGER -- поради адміна
    /* Процедура виводу на екран значень атрибутів */
    	MEMBER PROCEDURE display
); 
    	
-- show errors;

/* Створення об'єктного типу (класу) Advices */
CREATE OR REPLACE TYPE Advices AS OBJECT (
    	advice_id INTEGER, -- N списку змін індикаторів
	food TEXT, -- показник їжі користувача
	air TEXT, -- показник вологості повітря
	information TEXT -- інформація
	/* Процедура виводу на екран значень атрибутів */
    	MEMBER PROCEDURE display
); 
/
