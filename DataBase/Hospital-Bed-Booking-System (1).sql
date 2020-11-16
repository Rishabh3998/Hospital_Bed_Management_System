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
    Priority VARCHAR(20) NOT NULL
);

Create table if not exists Bed (
	Num INT PRIMARY KEY,
    Hosp_id bigint NOT NULL,
    Availability VARCHAR(10) NOT NULL,
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
    Rating Decimal(2,1),
    No_of_reviews bigint,
    Foreign key (Hosp_id) references Status(Hosp_id)
);


Create table if not exists Doctor (
	Doc_id BIGINT Primary Key,
    Doc_name VARCHAR(25),
    Spec VARCHAR(20)
);


INSERT into patient 
	Values
    (1 , 'Rishabh Kumar' , 22 , 'M' , 'B+' , 'Pitampura' , 25, 15, 232 , 'High'),
    (2 , 'Navneet Priyadarshi' , 20 , 'M' , 'A+' , 'Noida' , 22, 25, 242 , 'Medium'),
    (3 , 'Rishabh Gautam' , 21 , 'M' , 'AB-' , 'Shakarpur' , 28, 55, 252 , 'Low'),
    (4 , 'Rishabh Vishwakarma' , 22 , 'M' , 'B+' , 'Seelampur' , 25, 355, 262 , 'High'),
    (5 , 'Varun Kapoor' , 25 , 'M' , 'AB-' , 'Noida' , 35, 95, 722 , 'Low'),
    (6 , 'Mohammad Sabih' , 5 , 'M' , 'O' , 'Janakpuri' , 65, 65, 2 , 'Low'),
    (7 , 'Mohit Kumar' , 8 , 'M' , 'A+' , 'Dwarka' , 45, 35, 292 , 'Low'),
    (8 , 'Rahul Jaiswal' , 26 , 'M' , 'B+' , 'Noida' , 895, 75, 352 , 'High'),
    (9 , 'Parth Sharma' , 18 , 'M' , 'B+' , 'Pitampura' , 555, 99, 562 , 'High'),
    (10 , 'Rohit Verma' , 10 , 'M' , 'A+' , 'Sri Nagar' , 2755, 255, 222 , 'High');
    
INSERT into Bed
	Values
    (1 ,20, 'Vacant' , 0),
    (2 ,205, 'Occupied' , 2055),
    (105 ,20, 'Occupied' , 3055),
    (201 ,205, 'Occupied' , 3054),
    (219 ,205, 'Occupied' , 4077),
    (3 ,207, 'Occupied' , 2056),
    (4 ,258, 'Vacant' , 0),
    (304 ,20, 'Vacant' , 0),
    (615 ,325, 'Occupied' , 5480),
    (698 ,325, 'Vacant' , 0),
    (314 ,207, 'Occupied' , 1054),
    (545 ,207, 'Occupied' , 2544),
    (5 ,275, 'Occupied' , 2057),
    (424 ,258, 'Vacant' , 0),
    (457 ,258, 'Occupied' , 5777),
    (6 ,325, 'Vacant' , 0);

INSERT into Report
	Values
    (2055 , 1 , 'Rishabh'),
    (2056 , 2 , 'Josh Blake'),
    (2057 , 3 , 'John'),
    (2058 , 4 , 'Navneet'),
    (2059 , 5 , 'Vansh sharma'),
    (2060 , 6 , 'Tony Deltore');    

INSERT into Status
	Values
    (325 , 'City Hospital' ,116 ,1024,526, '2019-07-25'),
    (205 , 'Fortis' ,526 ,2500,1354, '2019-04-15'),
    (207 , 'BLK Hospital' ,425 ,800,300, '2017-10-27'),
    (258 , 'HBC Hospital' ,125 ,925,400, '2015-07-15'),
    (275 , 'Amar Leela Hospital' ,95 ,1500,205, '2018-4-25'),
    (20 , 'Aditya Hospitals' , 106 ,1800,600, '2019-12-18');    
  
INSERT into Fees
	Values
    (1 , '10' , 18000),
    (2 , '5' , 25000),
    (3 , '15' , 26520),
    (7 , '7' , 19051),
    (9 , '3' , 10250),
    (5 , '18' , 10520),
    (4 , '2' , 3050),
    (6 , '7' , 5020),
    (8 , '11' , 7090),
    (10 , '13' , 5460);

INSERT into Ratings
	Values
    (20 , 4.2 , 50),
    (205 , 4.8 , 205),
    (207 , 3.9 , 213),
    (258 , 4.1 , 60),
    (275 , 3.8 , 29),
    (325 , 5 , 100);



INSERT into Doctor
	Values
    (1001 , 'John' , 'MBBS'),
    (1002 , 'Tony' , 'MBBS'),
    (1003 , 'Josh' , 'MBBS'),
    (1004 , 'Johnny' , 'MBBS'),
    (1005 , 'Gourav' , 'MBBS'),
    (1006 , 'Saurabh' , 'MBBS');

drop database hbbs;



















	
    