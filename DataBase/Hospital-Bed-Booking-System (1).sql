create database if not exists hbbs;

use hbbs;

Create table if not exists Patient ( 
	Id BIGINT PRIMARY KEY,
    Name VARCHAR(25) NOT NULL,
    Age INT NOT NULL,
    Sex CHAR NOT NULL,
    Blood_grp VARCHAR(5) NOT NULL,
    Address VARCHAR(50),
    Hosp_id INT NOT NULL,
    Bed_no INT,
    Doc_id BIGINT,
    Priority VARCHAR(6) NOT NULL
);

Create table if not exists Bed (
	Num INT PRIMARY KEY,
    Availability VARCHAR(5) NOT NULL,
    Report_id INT
);

Create table if not exists Report (
	Report_id INT PRIMARY KEY,
    Patient_id BIGINT NOT NULL,
    Doctor VARCHAR(25) NOT NULL,
    FOREIGN KEY (Patient_id) REFERENCES Patient(Id)
);

Create table if not exists Status (
	Hosp_id INT PRIMARY KEY,
    Hosp_name VARCHAR(30) NOT NULL,
    Total_doctors INT NOT NULL,
    Total_beds INT NOT NULL,
    Beds_available INT NOT NULL,
    Date_of_record Date NOT NULL
);

Create table if not exists Fees (
	Patient_id BIGINT NOT NULL,
    No_of_days_admitted INT NOT NULL,
    Amount_due Decimal(10,2) NOT NULL,
    Primary Key (Patient_id),
    FOREIGN KEY (Patient_id) REFERENCES Patient(Id)
);

Create table if not exists Ratings (
	Hosp_id INT Primary Key,
    Rating Decimal(1,1),
    No_of_reviews INT,
    Foreign key (Hosp_id) references Status(Hosp_id)
);

Create table if not exists User (
	user_id BIGINT PRIMARY KEY,
	username VARCHAR(10) NOT NULL,
    Pass VARCHAR(16) NOT NULL
);

Create table if not exists Doctor (
	Doc_id BIGINT Primary Key,
    Doc_name VARCHAR(25),
    Spec VARCHAR(20)
);

Create table if not exists Tests (
	Test_id INT PRIMARY KEY,
    Test_name VARCHAR(20) NOT NULL,
    Cost Decimal(5,2) NOT NULL
);

INSERT into patient Values (1 , 'Rishabh' , 22 , 'M' , 'B+' , 'Shakurpur' , 25, 5, 22 , 'High');


    
drop database hbbs;



















	
    