CREATE DATABASE relationdb6;
USE relationdb6;

CREATE TABLE Consumer ( -- опис користувача
	consumer_id INTEGER, -- id користувача
	consumer_name VARCHAR(25), -- ім'я користувача
	consumer_surname VARCHAR(25), -- прізвище співробітника
	consumer_age INTEGER, -- вік співробітника
	consumer_email_address VARCHAR(25)
);

-- обмеження первинного ключа
ALTER TABLE Consumer ADD CONSTRAINT cons_pk
	PRIMARY KEY (consumer_id);
	

	
	
-- обмеження вмісту стовпчиків таблиці
ALTER TABLE Consumer ADD CONSTRAINT consumer_age_range
	CHECK (consumer_age between 18 and 80);
	
ALTER TABLE Consumer ADD CONSTRAINT consumer_id_range
	CHECK (consumer_id>0);

    
CREATE TABLE Cleanser ( -- опис термометру
	Cleanser_id VARCHAR(25),
	Cleanser_date DATE -- день, коли проводяться очищення температури
	);

-- обмеження первинного ключа
ALTER TABLE Cleanser ADD CONSTRAINT cleanser_pk
	PRIMARY KEY (cleanser_id);

	
CREATE TABLE Administrator ( -- опис адміністратора
	trainer_id INTEGER, -- id адміністратора
	trainer_name VARCHAR(25), -- ім'я адміністратора
	trainer_surname VARCHAR(25), -- прізвище адміністратора
	consumer_id INTEGER, -- номер клієнта
	trainer_expirience INTEGER, -- стаж (в роках) адміністратора
    Since_work INTEGER -- наукова робота
);

-- обмеження первинного ключа
ALTER TABLE Administrator ADD CONSTRAINT administrator_pk
	PRIMARY KEY (Since_work);
	

	
-- обмеження вмісту стовпчиків таблиці
ALTER TABLE Administrator ADD CONSTRAINT Since_work
	CHECK (plans between 1 and 50);


CREATE TABLE Since_work ( -- опис наукової роботи
	Documents_id INTEGER, -- id документів
	informations_id VARCHAR(20), -- назва документів
    advices INTEGER -- поради адміністратора
);

-- обмеження первинного ключа
ALTER TABLE Training_plans ADD CONSTRAINT training_plans_pk
	PRIMARY KEY (training_plans_id);
	


-- обмеження вмісту стовпчиків таблиці
ALTER TABLE Training_plans ADD CONSTRAINT advice_range
	CHECK (advices>0);

	
CREATE TABLE Advices ( -- опис порад
	advice_id INTEGER, -- N списку змін індикаторів
	Documents TEXT, -- документація
	informations TEXT, -- інформація
);

-- обмеження первинного ключа
ALTER TABLE Advices ADD CONSTRAINT advice_pk
	PRIMARY KEY (advice_id);


-- обмеження зовнішніх ключів
ALTER TABLE Consumer ADD CONSTRAINT cons_city_fk
	FOREIGN KEY (consumer_city)
	REFERENCES cleanser_id (cleanser_id);

ALTER TABLE Since_work ADD CONSTRAINT since_work_fk
	FOREIGN KEY (work)
	REFERENCES Since_work (since_work_id);	

ALTER TABLE Administrator ADD CONSTRAINT consumer_fk
	FOREIGN KEY (consumer_id)
	REFERENCES Consumer (consumer_id);

ALTER TABLE Since_work ADD CONSTRAINT work_advices_fk
	FOREIGN KEY (advices)
	REFERENCES Advices (advice_id);
	
ALTER TABLE Consumer ADD CONSTRAINT consumer_email_template
    CHECK (REGEXP_LIKE (consumer_email_address, '[A-z0-9._%-]+@[A-z0-9._%-]+\.[A-z]{2,4}'))