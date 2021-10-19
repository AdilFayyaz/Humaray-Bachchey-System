/*=====================================================================SQL Codes=============================================================================================*/
//---------------------------------------------------------------------TABLE CREATION AND INSERTION-----------------------------------------------------------------

Alter session set nls_date_format = 'dd/mm/yyyy' ;
/*Guardian*/
drop table Guardian cascade constraints;
CREATE TABLE Guardian (
	Guardian_ID VARCHAR2(5),
	Name VARCHAR2(50),
	Gender VARCHAR2(2),
	CNIC VARCHAR2(20) UNIQUE
);
Alter table Guardian add constraints
pk_Guardian PRIMARY KEY(Guardian_ID);

drop sequence gid;
CREATE SEQUENCE gid
/
drop trigger g_id_trigger;
CREATE OR REPLACE TRIGGER g_id_trigger
    BEFORE INSERT ON Guardian FOR EACH ROW
    BEGIN
        SELECT 'G' || TO_CHAR(gid.NEXTVAL,'fm00')
        INTO   :new.Guardian_ID
        FROM   DUAL;
    END g_id_trigger;
    /


INSERT ALL 
	INTO Guardian(Name,Gender,CNIC) VALUES
    ('Batool Jafari','F','61101-768273-3')
	INTO Guardian(Name,Gender,CNIC) VALUES
    ('Rafay Rashed','M','61101-234523-5')
	INTO Guardian(Name,Gender,CNIC) VALUES
    ('Gal Gadot','F','61101-234565-4')
	INTO Guardian(Name,Gender,CNIC) VALUES
    ('Tim Parker','M','42405-545554-4')
	INTO Guardian(Name,Gender,CNIC) VALUES
    ('Lindy James','F','61101-445454-4')
	INTO Guardian(Name,Gender,CNIC) VALUES
    ('Samantha Yan','F','42403-468765-5')
	INTO Guardian(Name,Gender,CNIC) VALUES
    ('Kate Jen','F','42409-994949-4')
	INTO Guardian(Name,Gender,CNIC) VALUES
    ('Saral Gilani','F','42407-628484-9')
	INTO Guardian(Name,Gender,CNIC) VALUES
    ('Maimona Khan','F','61101-345434-4')
	INTO Guardian(Name,Gender,CNIC) VALUES
    ('Kanwal Niazi','F','42409-384999-3')
	INTO Guardian(Name,Gender,CNIC) VALUES
    ('Saad Aftab','M','42409-839845-4')
	INTO Guardian(Name,Gender,CNIC) VALUES
    ('Ashar Ahmed','M','61101-345435-3')
	INTO Guardian(Name,Gender,CNIC) VALUES
    ('Syed Raahim','M','42409-384398-8')
	INTO Guardian(Name,Gender,CNIC) VALUES
    ('Fahad Nasir','M','44013-895999-4')
	INTO Guardian(Name,Gender,CNIC) VALUES
    ('Hasan Mahmood','M','44019-389345-9')
	INTO Guardian(Name,Gender,CNIC) VALUES
    ('Kim Muller','F','61101-667755-5')
	INTO Guardian(Name,Gender,CNIC) VALUES
    ('Quan Tran','M','44010-088938-9')
	INTO Guardian(Name,Gender,CNIC) VALUES
    ('Saheel Qureshi','M','42408-498489-9')
	INTO Guardian(Name,Gender,CNIC) VALUES
    ('Kaitlyn Megan','F','61101-676763-4')
	INTO Guardian(Name,Gender,CNIC) VALUES
    ('Jenna Park','F','44013-454444-4')
select * from dual;

/*Guardian_History*/
drop table Guardian_History cascade constraints;
create table Guardian_History (
	Guardian_ID VARCHAR2(5),
	Date_of_Change Date,
	Address VARCHAR2(50),
	Email VARCHAR2(20),
	Contact VARCHAR2(20)
);
alter table Guardian_History add constraints
pk_guardian_history PRIMARY KEY (Guardian_ID,Date_of_Change);

alter table Guardian_History add constraints
fk_guardian_history FOREIGN KEY (Guardian_ID) REFERENCES
Guardian(Guardian_ID);

INSERT ALL
	INTO Guardian_History VALUES
    ('G01','10/03/2019','H#B-5,Street 5, E-10,Islamabad','batss@gmail.com','0332-7373281')
	INTO Guardian_History VALUES
    ('G01','10/05/2020','H#B-5,Street 5, E-10,Islamabad','emailbat@gmail.com','0334-2442421')
	INTO Guardian_History VALUES
    ('G02','10/05/2020','H#B-4,Street 5, E-10,Islamabad','rafayrr@gmail.com','0343-4232222')
	INTO Guardian_History VALUES
    ('G02','11/12/2020','H#A-10,Street 15, F-11,Islamabad','rafayrr@gmail.com','0343-4232222')
	INTO Guardian_History VALUES
    ('G02','31/12/2020','H#A-10,Street 15, F-11,Islamabad','R1r23@gmail.com','0332-3239482')
	INTO Guardian_History VALUES
    ('G03','1/01/2019','H#F-6,Street 8, Chaklala,RWP','galgad@gmail.com','0337-8278827')
	INTO Guardian_History VALUES
    ('G04','2/02/2020','H#P-8,Street 202,DHA, Islamabad','timy@gmail.com','0311-2434343')
	INTO Guardian_History VALUES
    ('G05','12/12/2020','H#A-62,Street 4, Chaklala,RWP','Lindd32@gmail.com','0344-5483833')
	INTO Guardian_History VALUES
    ('G06','7/08/2019','H#A-1,Street 34,DHA, Islamabad','sammy@gmail.com','0317-7727273')
	INTO Guardian_History VALUES
    ('G07','4/03/2019','H#P-8,Street 7,DHA, Islamabad','katess@yahoo.com','0333-1231235')
	INTO Guardian_History VALUES
    ('G08','12/12/2020','H#B-10,Street 1, E-11,Islamabad','saralgg@gmail.com','0335-6789492')
	INTO Guardian_History VALUES
    ('G09','31/05/2020','H#X-23,Street 7,DHA, Islamabad','maimaim@yahoo.com','0334-9094445')
	INTO Guardian_History VALUES
    ('G10','1/10/2020','H#M-90,Street 23, Chaklala,RWP','kanwalzz@yahoo.com','0336-5478902')
	INTO Guardian_History VALUES
    ('G10','2/10/2020','H#M-90,Street 23, Chaklala,RWP','kanwalzz@yahoo.com','0336-5478202')
	INTO Guardian_History VALUES
    ('G11','3/09/2019','H#G-9,Street 70,DHA, Islamabad','sadboi@gmail.com','0335-6229003')
	INTO Guardian_History VALUES
    ('G12','4/05/2020','H#P-85,Street 71,DHA, Islamabad','usher@gmail.com','0334-1234532')
	INTO Guardian_History VALUES
    ('G13','5/05/2020','H#B-11,Street 2, E-7,Islamabad','smzen@gmail.com','0333-4989831')
	INTO Guardian_History VALUES
    ('G14','17/06/2019','H#P-23,Street 7,DHA, Islamabad','tofs@hotmail.com','0339-9939993')
	INTO Guardian_History VALUES
    ('G15','4/03/2019','H#P-8,Street 7,DHA, Islamabad','hasss@gmail.com','0345-6464615')
	INTO Guardian_History VALUES
    ('G16','17/06/2019','H#J-21,Street 14, Chaklala,RWP','Kimy_t@gmail.com','0333-3333317')
	INTO Guardian_History VALUES
    ('G17','2/02/2020','H#P-1,Street 45,DHA, Islamabad','QGTran@gmail.com','0333-3646669')
	INTO Guardian_History VALUES
    ('G18','12/12/2020','H#R-23,Street 8, Chaklala,RWP','Sahil@gmail.com','0334-3334349')
	INTO Guardian_History VALUES
    ('G19','5/05/2020','H#P-43,Street 9,DHA, Islamabad','twokate@gmail.com','0358-5858859')
	INTO Guardian_History VALUES
    ('G20','11/12/2020','H#F-1,Street 10,DHA, Islamabad','Jennass@hotmail.com','0343-8888384')
	INTO Guardian_History VALUES
    ('G20','12/12/2020','H#F-2,Street 10,DHA, Islamabad','Jens@hotmail.com','0343-8888384')
	INTO Guardian_History VALUES
    ('G20','13/12/2020','H#F-1,Street 10,DHA, Islamabad','Jennass@hotmail.com','0343-8778384')
	select * from dual;



/*Student Table*/
drop table Student cascade constraints;
CREATE TABLE  Student (
    Student_ID VARCHAR2(6),
    Name VARCHAR2(20),
    Gender VARCHAR2(2),
    DOB DATE,
    image_link VARCHAR2(20) ,
    signup_date DATE,
    CNIC VARCHAR2(20) UNIQUE
);
Alter table Student add constraints
pk_Student PRIMARY KEY(Student_ID);

drop sequence stid;
CREATE SEQUENCE stid
/
drop trigger s_id_trigger;
CREATE OR REPLACE TRIGGER s_id_trigger
    BEFORE INSERT ON Student FOR EACH ROW
    BEGIN
        SELECT 'ST' || TO_CHAR(stid.NEXTVAL,'fm0000')
        INTO   :new.Student_ID
        FROM   DUAL;
    END s_id_trigger;
    /

Alter session set nls_date_format='dd/mm/yyyy';
INSERT ALL 
	INTO Student(Name,Gender,DOB,image_link,signup_date,CNIC) VALUES
    ('Areesha Tahir','F','17/11/2017','ST0001.jpg','1/1/2018','61101-7529557-1')
	INTO Student(Name,Gender,DOB,image_link,signup_date,CNIC) VALUES
    ('Abdul Samad','M','21/6/2017','ST0002.jpg','1/1/2018','61101-7529357-2')
	INTO Student(Name,Gender,DOB,image_link,signup_date,CNIC) VALUES
    ('Adil Fayyaz','M','19/1/2010','ST0003.jpg','25/12/2017','61101-8529557-3')
	INTO Student(Name,Gender,DOB,image_link,signup_date,CNIC) VALUES
    ('Aleezeh Usman','F','6/11/2007','ST0004.jpg','30/12/2017','61101-7529557-4')
	INTO Student(Name,Gender,DOB,image_link,signup_date,CNIC) VALUES
    ('Faaira Ahmed','F','22/5/2005','ST0005.jpg','15/2/2018','61101-7529557-5')
	INTO Student(Name,Gender,DOB,image_link,signup_date,CNIC) VALUES
    ('Adan Mustafa','M','29/7/2014','ST0006.jpg','5/1/2018','61101-7529257-6')
	INTO Student(Name,Gender,DOB,image_link,signup_date,CNIC) VALUES
    ('Hadiya Shahid','F','2/4/2015','ST0007.jpg','3/1/2018','61101-7529527-7')
	INTO Student(Name,Gender,DOB,image_link,signup_date,CNIC) VALUES
    ('Mavis Hunter','F','13/3/2014','ST0008.jpg','2/1/2018','61101-3429557-8')
	INTO Student(Name,Gender,DOB,image_link,signup_date,CNIC) VALUES
    ('Stiles Stilinski','M','20/5/2010','ST0009.jpg','1/1/2018','61101-7529157-9')
	INTO Student(Name,Gender,DOB,image_link,signup_date,CNIC) VALUES
    ('Scott McCall','M','23/4/2009','ST0010.jpg','2/1/2018','61101-7529551-1')
	INTO Student(Name,Gender,DOB,image_link,signup_date,CNIC) VALUES
    ('Tobias Eaton','M','2/4/2011','ST0011.jpg','2/1/2018','61101-7529551-2')
	INTO Student(Name,Gender,DOB,image_link,signup_date,CNIC) VALUES
    ('Matthew Daddario','M','17/3/2006','ST0012.jpg','28/12/2017','61101-7529551-3')
	INTO Student(Name,Gender,DOB,image_link,signup_date,CNIC) VALUES
    ('Lydia Martin','F','01/10/2008','ST0013.jpg','30/12/2017','61101-7529551-4')
	INTO Student(Name,Gender,DOB,image_link,signup_date,CNIC) VALUES
    ('Shagufta Shakir','F','21/6/2013','ST0014.jpg','29/12/2017','61101-7529551-5')
	INTO Student(Name,Gender,DOB,image_link,signup_date,CNIC) VALUES
    ('Talina Taimour','F','12/5/2008','ST0015.jpg','18/1/2019','61101-7529551-6')
	INTO Student(Name,Gender,DOB,image_link,signup_date,CNIC) VALUES
    ('Rajjaar Abdul Rehman','M','10/12/2010','ST0016.jpg','29/12/2018','61101-7529551-7')
	INTO Student(Name,Gender,DOB,image_link,signup_date,CNIC) VALUES
    ('Faaira Ahmed','F','22/12/2005','ST0017.jpg','5/1/2019','61101-7529551-8')
	INTO Student(Name,Gender,DOB,image_link,signup_date,CNIC) VALUES
    ('Aliya Bangash','F','19/12/2008','ST0018.jpg','29/12/2018','61101-7529551-9')
	INTO Student(Name,Gender,DOB,image_link,signup_date,CNIC) VALUES
    ('Abdul Samad','M','09/07/2007','ST0019.jpg','28/12/2019','61101-7529552-0')
	INTO Student(Name,Gender,DOB,image_link,signup_date,CNIC) VALUES
    ('Komal Farrukh','F','8/6/2012','ST0020.jpg','30/12/2019','61101-7529552-1')
SELECT * FROM DUAL;


/* Student History Table*/
Drop table student_history cascade constraints;
CREATE TABLE student_history(
	Student_ID varchar2(6),
Address_Date date,
	Address varchar2(35)
);
ALTER TABLE student_history add constraints
Pk_student_history PRIMARY KEY(Student_ID, Address_Date);
ALTER TABLE student_history add constraints
Fk_student_history FOREIGN KEY(Student_ID)
REFERENCES Student(Student_ID);


INSERT ALL
     INTO student_history VALUES
    ('ST0001','1/1/2018','SECTOR # F11,STREET 10,HOUSE 40')
     INTO student_history VALUES
    ('ST0002','1/1/2018','H#D-4,Street 5,RWP')
     INTO student_history VALUES
    ('ST0003','25/12/2017','SECTOR # I10,STREET 45,HOUSE 30')
     INTO student_history VALUES
    ('ST0004','30/12/2017','SECTOR # H10,STREET 4,HOUSE 401')
     INTO student_history VALUES
    ('ST0005','15/2/2018','SECTOR # G11,STREET 8,HOUSE 403')
     INTO student_history VALUES
    ('ST0006','5/1/2018','SECTOR # G6,STREET 11,HOUSE 7')
     INTO student_history VALUES
    ('ST0007','1/3/2018','H#F-20,Street 5,RWP')
     INTO student_history VALUES
    ('ST0008','1/2/2018','H#B-20,Street 1,RWP')
     INTO student_history VALUES
    ('ST0009','1/1/2018','H#B-11,Street 2,RWP')
     INTO student_history VALUES
    ('ST0010','1/2/2018','H#C-5,Street 10,ISB')
     INTO student_history VALUES
    ('ST0011','2/1/2018','SECTOR # I8,STREET 31,HOUSE 987')
     INTO student_history VALUES
    ('ST0012','28/12/2017','H#E-8,Street 3,RWP')
     INTO student_history VALUES
    ('ST0013','30/12/2017','H#A-2,Street 4,RWP')
     INTO student_history VALUES
    ('ST0014','29/12/2017','H#C-20,Street 7,ISB')
     INTO student_history VALUES
    ('ST0015','18/1/2019','H#D-12,Street 7,ISB')
     INTO student_history VALUES
    ('ST0016','29/12/2018','H#G-9,Street 19,ISB')
     INTO student_history VALUES
    ('ST0017','1/5/2019', 'H#E-12,Street 9,RWP')
     INTO student_history VALUES
    ('ST0018','29/12/2018','H#X-30,Street 4,RWP')
     INTO student_history VALUES
    ('ST0019','28/12/2019','H#A-6,Street 11,ISB')
     INTO student_history VALUES
    ('ST0020','30/12/2019','H#F-1,Street 10,DHA, Islamabad')
     INTO student_history VALUES
    ('ST0013','16/9/2019','H#B-11,Street 2, E-7,Islamabad')
     INTO student_history VALUES
    ('ST0009','7/5/2018','H#Z-1,Street 10,ISB')
     INTO student_history VALUES
    ('ST0014','2/3/2018','H#C-20,Street 7,ISB')
     INTO student_history VALUES
    ('ST0015','5/3/2020','SECTOR # H11,STREET 98,HOUSE 74')
Select * from dual;

/*Responsible_For Form*/
drop table Responsible_For cascade constraints;
CREATE TABLE Responsible_For(
	Student_ID VARCHAR2(6),
	Guardian_ID VARCHAR2(5),
	Relation VARCHAR2(20),
	Current_ INT
);
Alter table Responsible_For add constraints
fk_Responsible_For_1 FOREIGN KEY(Student_ID)
REFERENCES Student(Student_ID);
Alter table Responsible_For add constraints
fk_Responsible_For_2 FOREIGN KEY(Guardian_ID)
REFERENCES Guardian(Guardian_ID);
Alter table Responsible_For add constraints
pk_Responsible_For PRIMARY KEY(Student_ID,Guardian_ID);

INSERT ALL 
	INTO Responsible_For VALUES
    ('ST0001','G01','Maternal Aunt',1)
	INTO Responsible_For VALUES
    ('ST0002','G02','Grand Father',1)
	INTO Responsible_For VALUES
    ('ST0002','G03','Grand Mother',0)
	INTO Responsible_For VALUES
    ('ST0002','G04','Maternal Uncle',0)
	INTO Responsible_For VALUES
    ('ST0003','G03','Cousin',1)
	INTO Responsible_For VALUES
    ('ST0004','G04','Maternal Uncle',1)
	INTO Responsible_For VALUES
    ('ST0004','G05','Paternal Uncle',0)
	INTO Responsible_For VALUES
    ('ST0005','G06','Grand Mother',1)
	INTO Responsible_For VALUES
    ('ST0006','G07','Paternal Aunt',1)
	INTO Responsible_For VALUES
    ('ST0007','G08','Sister',1)
	INTO Responsible_For VALUES
    ('ST0008','G09','Sister',1)
	INTO Responsible_For VALUES
    ('ST0009','G10','Grand Mother',1)
	INTO Responsible_For VALUES
    ('ST0010','G10','Grand Mother',1)
	INTO Responsible_For VALUES
    ('ST0011','G11','Brother',1)
	INTO Responsible_For VALUES
    ('ST0012','G12','Cousin',1)
	INTO Responsible_For VALUES
    ('ST0013','G13','Care-Taker',1)
	INTO Responsible_For VALUES
    ('ST0014','G14','Brother',1)
	INTO Responsible_For VALUES
    ('ST0015','G15','Paternal Uncle',1)
	INTO Responsible_For VALUES
    ('ST0016','G16','Sister',1)
	INTO Responsible_For VALUES
    ('ST0017','G17','Cousin',1)
	INTO Responsible_For VALUES
    ('ST0018','G18','Cousin',1)
	INTO Responsible_For VALUES
    ('ST0019','G19','Paternal Aunt',1)
	INTO Responsible_For VALUES
    ('ST0020','G20','Care-Taker',1)
	INTO Responsible_For VALUES
    ('ST0019','G20','Care-Taker',0)
	INTO Responsible_For VALUES
    ('ST0010','G20','Care-Taker',0)
	select * from dual;

Alter session set nls_date_format = 'dd/mm/yyyy' ;
drop table Student_Accompany_Form cascade constraints;
CREATE TABLE Student_Accompany_Form (
	Acc_Form_No VARCHAR2(10),
	Student_ID VARCHAR2(6),
	Guardian_ID VARCHAR2(5),
	Date_Of_Visit DATE,
	Pregnant VARCHAR2(2),
	Reason VARCHAR2(50)
);
/*
	PRIMARY KEY + FOREIGN KEY STUDENT_ACC_FORM
*/

drop sequence acc_num;
CREATE SEQUENCE acc_num
/
drop trigger acc_num_trigger;
CREATE OR REPLACE TRIGGER acc_num_trigger
    BEFORE INSERT ON Student_Accompany_Form FOR EACH ROW
    BEGIN
        SELECT 'FORM' || TO_CHAR(acc_num.NEXTVAL,'fm000')
        INTO   :new.Acc_Form_No
        FROM   DUAL;
    END acc_num_trigger;
    /


Alter table Student_Accompany_Form add constraints
fk_Student_Accompany_Form_1 FOREIGN KEY(Student_ID,Guardian_ID)
REFERENCES Responsible_For(Student_ID,Guardian_ID);

Alter table Student_Accompany_Form add constraints
pk_Student_Accompany_Form PRIMARY KEY(Acc_Form_No,Student_ID,Guardian_ID);

INSERT ALL
INTO Student_Accompany_Form(Student_ID,Guardian_ID,Date_Of_Visit,Pregnant,Reason) VALUES
    ('ST0001','G01','01/02/2020','1','Parents Away on Vacation')
	INTO Student_Accompany_Form(Student_ID,Guardian_ID,Date_Of_Visit,Pregnant,Reason) VALUES
    ('ST0002','G02','10/05/2020','0','Family death')
	INTO Student_Accompany_Form(Student_ID,Guardian_ID,Date_Of_Visit,Pregnant,Reason) VALUES
    ('ST0002','G02','15/12/2020','0','At work')
	INTO Student_Accompany_Form(Student_ID,Guardian_ID,Date_Of_Visit,Pregnant,Reason) VALUES
    ('ST0006','G07','04/04/2019','1','At the hospital')
	INTO Student_Accompany_Form(Student_ID,Guardian_ID,Date_Of_Visit,Pregnant,Reason) VALUES
    ('ST0010','G10','04/11/2020','0','Family death')
	INTO Student_Accompany_Form(Student_ID,Guardian_ID,Date_Of_Visit,Pregnant,Reason) VALUES
    ('ST0001','G01','01/12/2020','0','Parents Ill')
	INTO Student_Accompany_Form(Student_ID,Guardian_ID,Date_Of_Visit,Pregnant,Reason) VALUES
    ('ST0004','G05','13/12/2020','0','Family death')
	INTO Student_Accompany_Form(Student_ID,Guardian_ID,Date_Of_Visit,Pregnant,Reason) VALUES
    ('ST0016','G16','21/12/2020','1','Had an Emergency')
	INTO Student_Accompany_Form(Student_ID,Guardian_ID,Date_Of_Visit,Pregnant,Reason) VALUES
    ('ST0018','G18','12/12/2020','0','Parents Away on Vacation')
	INTO Student_Accompany_Form(Student_ID,Guardian_ID,Date_Of_Visit,Pregnant,Reason) VALUES
    ('ST0019','G19','05/06/2020','0','Went for Shopping')
	INTO Student_Accompany_Form(Student_ID,Guardian_ID,Date_Of_Visit,Pregnant,Reason) VALUES
    ('ST0019','G20','15/12/2020','1','Family death')
	INTO Student_Accompany_Form(Student_ID,Guardian_ID,Date_Of_Visit,Pregnant,Reason) VALUES
    ('ST0003','G03','23/05/2020','0','Fell asleep from meds')
	INTO Student_Accompany_Form(Student_ID,Guardian_ID,Date_Of_Visit,Pregnant,Reason) VALUES
    ('ST0004','G05','31/12/2020','0','Parents Away on Vacation')
	INTO Student_Accompany_Form(Student_ID,Guardian_ID,Date_Of_Visit,Pregnant,Reason) VALUES
    ('ST0017','G17','05/04/2020','0','Broken Leg')
	INTO Student_Accompany_Form(Student_ID,Guardian_ID,Date_Of_Visit,Pregnant,Reason) VALUES
    ('ST0008','G09','01/11/2020','0','Had the Corona-Virus')
SELECT * FROM DUAL;


drop table Staff cascade constraints;
CREATE TABLE Staff (
	Staff_ID VARCHAR2(6),
	Name VARCHAR2(20),
	CNIC VARCHAR2(20),
	Address VARCHAR2(50),
	Contact VARCHAR2(20),
	Email VARCHAR2(30),
	Start_Date DATE,
	End_Date DATE,
	Bonus REAL,
	Salary REAL
);
/*
	SET PK OF STAFF
*/
Alter table Staff add constraints
pk_Staff PRIMARY KEY(Staff_ID);

INSERT ALL 
	INTO Staff VALUES
    ('STF001','JAWAD AHMED','42401-309849-8','SECTOR # F11,STREET 10,HOUSE 40','0315-6498161','jawad2@gmail.com','10/4/2019','10/6/2019',5000,5000)
	INTO Staff VALUES
    ('STF002','ADNAN TARIQ','42401-3087923','SECTOR # I10,STREET 45,HOUSE 30','0348-1981687','adnan7@gmail.com','11/4/2019','11/7/2019',10000,10000)
	INTO Staff VALUES
    ('STF003','ASIF NAEEM','32301-907561-4','SECTOR # F9,STREET 879,HOUSE 95','0314-1558168','asif73@gmail.com','12/5/2019','11/8/2019',15000,7000)
	INTO Staff VALUES
    ('STF004','NOOR-UL-AIN','64253-197018-4','SECTOR # H10,STREET 4,HOUSE 401','0320-9536416','noor98@gmail.com','13/6/2019','14/9/2019',16000,6000)
	INTO Staff VALUES
    ('STF005','SHEHR  BANO','32054-690174-8','SECTOR # G11,STREET 8,HOUSE 403','0345-9898492','shehr70@gmail.com','14/7/2019','14/10/2019',17000,12000)
	INTO Staff VALUES
    ('STF006','TURAB ALI','56213-097231-8','SECTOR # G8,STREET 101,HOUSE 97','0312-9563178','turab949@gmail.com','15/8/2019','15/11/2019',18000,14000)
	INTO Staff VALUES
    ('STF007','MAIMONA RASOOL','36219-909451-6','SECTOR # B12,STREET 845,HOUSE 100','0325-9887374','maimona666@gmail.com','16/9/2019','16/12/2019',19000,17000)
	INTO Staff VALUES
    ('STF008','TAYYAB KHAN','29346-108715-6','SECTOR # D3,STREET 989,HOUSE 1891','0315-4987958','tayyab61@gmail.com','28/1/2020','28/4/2020',20000,5000)
	INTO Staff VALUES
    ('STF009','USMAN ASHRAF','56497-845026-3','SECTOR # H13,STREET 98,HOUSE 789','0318-9643189','usman36@gmail.com','5/2/2019','29/5/2019',21000,13000)
	INTO Staff VALUES
    ('STF010','SHAMS FAROOQ','54972-136097-9','SECTOR # I8,STREET 31,HOUSE 987','0326-9876149','shams94@gmail.com','25/5/2019','25/7/2020',22000,9000)
	INTO Staff VALUES
    ('STF011','ASMAT KHALIDA','85213-364231-8','SECTOR # G9,STREET 10,HOUSE 92','0312-9364278','asma49@gmail.com','15/9/2019','15/11/2019',18000,14000)
	INTO Staff VALUES
    ('STF012','KULSOOM AHMED','31236-909451-6','SECTOR # B1,STREET 85,HOUSE 10','0325-9368774','kulsoom66@gmail.com','16/8/2019','16/12/2019',19000,17000)
	INTO Staff VALUES
    ('STF013','MURTAZA RASHEED','29349-631715-6','SECTOR # D5,STREET 99,HOUSE 181','0315-4145358','rasheed61@gmail.com','27/11/2019','28/4/2019',20000,5000)
	INTO Staff VALUES
    ('STF014','AIMAN ZARA','56439-461785-2','SECTOR # H23,STREET 8,HOUSE 89','0318-9347189','aiman36@gmail.com','5/4/2019','29/8/2019',21000,13000)
	INTO Staff VALUES
    ('STF015','RASHIDA KHAN','54976-421800-1','SECTOR # G4,STREET 1,HOUSE 97','0326-9796149','rashida94@gmail.com','25/6/2019','25/10/2019',22000,9000)
SELECT * FROM DUAL;

drop table Staff_Member cascade constraints;
CREATE TABLE Staff_Member (
	Guardian_ID VARCHAR2(5),
	Staff_ID VARCHAR2(6)
);
/*
	SET THE PK AND FK OF STAFF MEMBER
*/
Alter table Staff_Member add constraints
pk_Staff_Member PRIMARY KEY(Guardian_ID,Staff_ID);
Alter table Staff_Member add constraints
fk_Staff_Member_1 FOREIGN KEY (Guardian_ID)
REFERENCES Guardian(Guardian_ID);
Alter table Staff_Member add constraints
fk_Staff_Member_2 FOREIGN KEY (Staff_ID)
REFERENCES Staff(Staff_ID);

INSERT ALL
	INTO Staff_Member VALUES
    ('G02','STF001')
	INTO Staff_Member VALUES
    ('G03','STF004')
	INTO Staff_Member VALUES
    ('G06','STF006')
	INTO Staff_Member VALUES
    ('G12','STF014')
	INTO Staff_Member VALUES
    ('G15','STF003')
SELECT * FROM DUAL;

drop table Course cascade constraints;
drop table Course cascade constraints;
CREATE TABLE Course(
	Course_ID VARCHAR2(6),
	Course_Title VARCHAR2(25),
	Is_Offered int
);
/* SET PK OF COURSE*/
Alter table Course add constraints
pk_Course PRIMARY KEY(Course_ID);
INSERT ALL
INTO Course VALUES
   ('GRM101','Grooming',1)
   	INTO Course VALUES
    ('ISL001','Islamic Studies',0)
    	INTO Course VALUES
    ('ETH111','Ethics',0)
        	INTO Course VALUES
    ('DPR006','Depression',0)
        	INTO Course VALUES
    ('FMG102','Family Management',0)
        	INTO Course VALUES
    ('HEC001','Home Economics',0)
        	INTO Course VALUES
    ('CLY101','Culinary Arts',0)
        	INTO Course VALUES
    ('SEM001','Sewing and Embroidery',0)
        	INTO Course VALUES
    ('ITO101','IT/Microsoft Office',0)
        	INTO Course VALUES
    ('MUS111','Music',0)
        	INTO Course VALUES
    ('ENV101','Environmental Studies',0)
SELECT * FROM DUAL;

drop table Class_Info cascade constraints;
CREATE TABLE Class_Info(
	Class_ID int,
	Course_ID varchar2(6)
);
/*
 ADD PK AND FK FOR CLASS TABLE
*/
ALTER TABLE Class_Info ADD CONSTRAINTS
	pk_Class_Info PRIMARY KEY (Class_ID);
ALTER TABLE Class_Info ADD CONSTRAINTS
	fk_Class_Info FOREIGN KEY(Course_ID)
	REFERENCES Course(Course_ID);
INSERT ALL
     INTO Class_Info VALUES
    (1,'ITO101')
     INTO Class_Info VALUES
    (2,'ITO101')
         INTO Class_Info VALUES
    (3,'ITO101')
         INTO Class_Info VALUES
    (4,'ITO101')
         INTO Class_Info VALUES
    (5,'ITO101')
         INTO Class_Info VALUES
    (6,'ITO101')
SELECT * FROM DUAL;

drop table Sections cascade constraints;
CREATE TABLE Sections(
	Class_ID int,
	Section_ID varchar2(4),
	Section_Title varchar2(20)
);

/*
	PK AND FK OF SECTIONS TABLE
*/
ALTER TABLE Sections ADD CONSTRAINTS
pk_Sections PRIMARY KEY(Class_ID, Section_ID);
ALTER TABLE Sections ADD CONSTRAINTS
fk_Sections FOREIGN KEY(Class_ID)
References Class_Info(Class_ID);

INSERT ALL
    INTO Sections VALUES
    (1,'GR-B','Green - Boys')
    INTO Sections VALUES
    (1,'BL-G','Blue - Girls')
    INTO Sections VALUES
    (1,'YW-B','Yellow - Boys')
    INTO Sections VALUES
    (1,'YW-G','Yellow-Girls')
    INTO Sections VALUES
    (2,'GR-B','Green - Boys')
    INTO Sections VALUES
    (2,'BL-G','Blue - Girls')
    INTO Sections VALUES
    (2,'YW-B','Yellow - Boys')
    INTO Sections VALUES
    (2,'YW-G','Yellow - Girls')
    INTO Sections VALUES
    (3,'GR-B','Green - Boys')
    INTO Sections VALUES
    (3,'BL-G','Blue - Girls')
    INTO Sections VALUES
    (3,'YW-B','Yellow - Boys')
    INTO Sections VALUES
    (3,'YW-G','Yellow - Girls')
    INTO Sections VALUES
    (4,'GR-B','Green - Boys')
    INTO Sections VALUES
    (4,'BL-G','Blue - Girls')
    INTO Sections VALUES
    (4,'YW-B','Yellow - Boys')
    INTO Sections VALUES
    (4,'YW-G','Yellow - Girls')
    INTO Sections VALUES
    (5,'GR-B','Green - Boys')
    INTO Sections VALUES
    (5,'BL-G','Blue - Girls')
    INTO Sections VALUES
    (5,'YW-B','Yellow - Boys')
    INTO Sections VALUES
    (5,'YW-G','Yellow - Girls')
    INTO Sections VALUES
    (6,'GR-B','Green - Boys')
    INTO Sections VALUES
    (6,'BL-G','Blue - Girls')
    INTO Sections VALUES
    (6,'YW-B','Yellow - Boys')
    INTO Sections VALUES
    (6,'YW-G','Yellow - Girls')
SELECT * FROM DUAL;

drop table Course_History cascade constraints;
 CREATE TABLE Course_History(
    Course_ID varchar2(6),
    Start_Date date,
    Due_Date date,
    Total_Students int,
    Fee int,
    Duration int
    );
/*
	ADD FK AND PK for Course_History Table
*/
ALTER TABLE Course_History ADD CONSTRAINTS
pk_Course_History PRIMARY KEY(Course_ID, Start_Date);
ALTER TABLE Course_History ADD CONSTRAINTS
fk_Course_History FOREIGN KEY(Course_ID)
REFERENCES Course(Course_ID);

INSERT ALL
 INTO Course_History VALUES
    ('ETH111','1/1/2018',’15/1/2018’, 45,100,2)
 INTO Course_History VALUES
    ('GRM101','3/3/2018',’15/3/2018’, 40,100,3)
 INTO Course_History VALUES
    ('ISL001','15/6/2018',’30/6/2018’,50,100,3)
INTO Course_History VALUES
    ('CLY101','1/10/2018',’15/10/2018’, 50,150,2)
 INTO Course_History VALUES
    ('DPR006','1/1/2019',’15/1/2019’, 43,100,4)
 INTO Course_History VALUES
    ('ITO101','3/4/2019',’15/4/2019’,53,100,3)
 INTO Course_History VALUES
    ('HEC001','5/7/2019',’20/7/2019’,50,100,2)
 INTO Course_History VALUES
    ('ETH111','15/9/2019',’30/9/2019’, 50,100,3)
 INTO Course_History VALUES
    ('SEM001','1/1/2020',’15/1/2020’,47,100,2)
 INTO Course_History VALUES
    ('ITO101','2/3/2020',’15/3/2020’,55,150,2)
 INTO Course_History VALUES
    ('GRM101','5/5/2020',’15/5/2020’, 48,150,2)
 INTO Course_History VALUES
    ('ENV101','10/7/2020',’20/7/2020’,53,100,3)
 INTO Course_History VALUES
    ('GRM101','15/10/2020',’30/10/2020’,52,100,2)
Select * from dual;

drop table Assigned cascade constraints;
 CREATE TABLE ASSIGNED(
    Staff_ID varchar2(6),
    Section_ID varchar2(4),
    Class_ID int,
    Assignment_Date date,
    Location varchar2(10)
   );

/*
	ADD PK AND FK FOR ASSIGNED TABLE
*/
ALTER TABLE Assigned ADD CONSTRAINTS
pk_Assigned PRIMARY KEY(Staff_ID, Section_ID, Class_ID, Assignment_Date);
ALTER TABLE Assigned ADD CONSTRAINTS
fk_Assigned_1 FOREIGN KEY(Staff_ID)
REFERENCES STAFF(Staff_ID);
ALTER TABLE Assigned ADD CONSTRAINTS
fk_Assigned_2 FOREIGN KEY(Class_ID,Section_ID)
REFERENCES Sections(Class_ID,Section_ID);
 INSERT INTO Assigned VALUES
    ('STF011','GR-B',1,'5/7/2019’,'Room 001');
 INSERT INTO Assigned VALUES
    ('STF001','BL-G',1,'5/7/2019’,'Room 101');
 INSERT INTO Assigned VALUES
    ('STF009','GR-B',2,'5/7/2019’,'Room 001');
 INSERT INTO Assigned VALUES
    ('STF007','BL-G',2,'5/7/2019’,'Room 102');
 INSERT INTO Assigned VALUES
    ('STF001','YW-B',2,'5/7/2019’,'Room 103');
 INSERT INTO Assigned VALUES
    ('STF003','YW-B',2,'24/7/2019','Room 003');
 INSERT INTO Assigned VALUES
    ('STF008','GR-B',3,'5/7/2019’,'Room 004');
 INSERT INTO Assigned VALUES
    ('STF012','BL-G',3,'5/7/2019’,'Room 101');
 INSERT INTO Assigned VALUES
    ('STF012','GR-B',4,'5/7/2019’,'Room 002');
 INSERT INTO Assigned VALUES
    ('STF002','BL-G',4,'5/7/2019’,'Room 004');
 INSERT INTO Assigned VALUES
    ('STF001','GR-B',5,'5/7/2019’,'Room 104');
 INSERT INTO Assigned VALUES
    ('STF015','BL-G',5,'5/7/2019’,'Room 002');
 INSERT INTO Assigned VALUES
    ('STF015','GR-B',6,'5/7/2019’,'Room 104');
 INSERT INTO Assigned VALUES
    ('STF015','BL-G',6,'5/7/2019’,'Room 104')
INSERT INTO Assigned VALUES
    ('STF011','GR-B',1,'15/9/2019','Room 102');
INSERT INTO Assigned VALUES
    ('STF002','BL-G',1,'15/9/2019','Room 003');
INSERT INTO Assigned VALUES
    ('STF008','GR-B',2,'15/9/2019','Room 004');
INSERT INTO Assigned VALUES
    ('STF012','BL-G',2,'15/9/2019','Room 104');
INSERT INTO Assigned VALUES
    ('STF010','GR-B',3,'15/9/2019','Room 103');
INSERT INTO Assigned VALUES
    ('STF001','BL-G',3,'15/9/2019','Room 101');
INSERT INTO Assigned VALUES
    ('STF011','GR-B',4,'15/9/2019','Room 004');
INSERT INTO Assigned VALUES
    ('STF002','BL-G',4,'15/9/2019','Room 101');
INSERT INTO Assigned VALUES
    ('STF011','GR-B',5,'15/9/2019','Room 002');
INSERT INTO Assigned VALUES
    ('STF002','BL-G',5,'15/9/2019','Room 001');
INSERT INTO Assigned VALUES
    ('STF014','GR-B',5,'10/10/2019','Room 102');
INSERT INTO Assigned VALUES
    ('STF007','GR-B',6,'15/9/2019','Room 003');
INSERT INTO Assigned VALUES
    ('STF007','BL-G',6,'15/9/2019','Room 001');
INSERT INTO Assigned VALUES
    ('STF005','GR-B',1,'30/12/2019','Room 002');
INSERT INTO Assigned VALUES
    ('STF014','BL-G',1,'30/12/2019','Room 104');
INSERT INTO Assigned VALUES
    ('STF010','GR-B',2,'29/12/2019','Room 101');
INSERT INTO Assigned VALUES
    ('STF007','BL-G',2,'29/12/2019','Room 101');
INSERT INTO Assigned VALUES
    ('STF015','GR-B',3,'30/12/2019','Room 003');
INSERT INTO Assigned VALUES
    ('STF015','BL-G',3,'30/12/2019','Room 003');
INSERT INTO Assigned VALUES
    ('STF001','GR-B',4,'30/12/2019','Room 001');
INSERT INTO Assigned VALUES
    ('STF015','BL-G',4,'29/12/2019','Room 002');
INSERT INTO Assigned VALUES
    ('STF002','GR-B',5,'30/12/2019','Room 101');
INSERT INTO Assigned VALUES
    ('STF003','BL-G',5,'30/12/2019','Room 102');
INSERT INTO Assigned VALUES
    ('STF005','GR-B',6,'30/12/2019','Room 103');
INSERT INTO Assigned VALUES
    ('STF005','BL-G',6,'30/12/2019','Room 102');
INSERT INTO Assigned VALUES
    ('STF005','GR-B',1,'31/1/2020','Room 003');
INSERT INTO Assigned VALUES
    ('STF007','BL-G',1,'31/1/2020','Room 103');
INSERT INTO Assigned VALUES
    ('STF007','GR-B',2,'31/1/2020','Room 003');
INSERT INTO Assigned VALUES
    ('STF007','BL-G',2,'31/1/2020','Room 101');
INSERT INTO Assigned VALUES
    ('STF010','GR-B',3,'31/1/2020','Room 002');
INSERT INTO Assigned VALUES
    ('STF011','BL-G',3,'31/1/2020','Room 001');
INSERT INTO Assigned VALUES
    ('STF001','GR-B',4,'31/1/2020','Room 102');
INSERT INTO Assigned VALUES
    ('STF009','BL-G',4,'31/1/2020','Room 003');
INSERT INTO Assigned VALUES
    ('STF006','YW-B',4,'25/2/2020','Room 001');
INSERT INTO Assigned VALUES
    ('STF007','GR-B',5,'31/1/2020','Room 002');
INSERT INTO Assigned VALUES
    ('STF008','BL-G',5,'31/1/2020','Room 001');
INSERT INTO Assigned VALUES
    ('STF012','GR-B',6,'31/1/2020','Room 002');
INSERT INTO Assigned VALUES
    ('STF012','BL-G',6,'31/1/2020','Room 101');
INSERT INTO Assigned VALUES
    ('STF002','GR-B',1,'30/4/2020','Room 001');
INSERT INTO Assigned VALUES
    ('STF001','BL-G',1,'30/4/2020','Room 001');
INSERT INTO Assigned VALUES
    ('STF015','GR-B',2,'30/4/2020','Room 002');
INSERT INTO Assigned VALUES
    ('STF015','BL-G',2,'30/4/2020','Room 101');
INSERT INTO Assigned VALUES
    ('STF015','GR-B',3,'30/4/2020','Room 104');
INSERT INTO Assigned VALUES
    ('STF015','BL-G',3,'30/4/2020','Room 004');
INSERT INTO Assigned VALUES
    ('STF002','GR-B',4,'30/4/2020','Room 101');
INSERT INTO Assigned VALUES
    ('STF008','BL-G',4,'30/4/2020','Room 002');
INSERT INTO Assigned VALUES
    ('STF012','GR-B',5,'30/4/2020','Room 002');
INSERT INTO Assigned VALUES
    ('STF010','BL-G',5,'30/4/2020','Room 103');
INSERT INTO Assigned VALUES
    ('STF001','GR-B',6,'30/4/2020','Room 003');
INSERT INTO Assigned VALUES
    ('STF011','BL-G',6,'30/4/2020','Room 104');
INSERT INTO Assigned VALUES
    ('STF002','GR-B',1,'10/7/2020','Room 001');
INSERT INTO Assigned VALUES
    ('STF011','BL-G',1,'10/7/2020' ,'Room 101');
INSERT INTO Assigned VALUES
    ('STF002','GR-B',2,'10/7/2020' ,'Room 001');
INSERT INTO Assigned VALUES
    ('STF007','BL-G',2,'10/7/2020' ,'Room 102');
INSERT INTO Assigned VALUES
    ('STF007','GR-B',3,'10/7/2020' ,'Room 103');
INSERT INTO Assigned VALUES
    ('STF005','BL-G',3,'10/7/2020' ,'Room 003');
INSERT INTO Assigned VALUES
    ('STF014','GR-B',4,'10/7/2020' ,'Room 004');
INSERT INTO Assigned VALUES
    ('STF010','BL-G',4,'10/7/2020','Room 101');
INSERT INTO Assigned VALUES
    ('STF001','GR-B',5,'10/7/2020' ,'Room 002');
INSERT INTO Assigned VALUES
    ('STF013','BL-G',5,'10/7/2020','Room 004');
INSERT INTO Assigned VALUES
    ('STF001','GR-B',6,'10/7/2020','Room 104');
INSERT INTO Assigned VALUES
    ('STF011','BL-G',6,'10/7/2020','Room 002');
INSERT INTO Assigned VALUES
    ('STF001','GR-B',1,'15/10/2020','Room 104');
INSERT INTO Assigned VALUES
    ('STF002','BL-G',1,'15/10/2020','Room 104');
INSERT INTO Assigned VALUES
    ('STF015','GR-B',2,'15/10/2020','Room 102');
INSERT INTO Assigned VALUES
    ('STF001','BL-G',2,'15/10/2020','Room 003');
INSERT INTO Assigned VALUES
    ('STF008','GR-B',3,'15/10/2020','Room 004');
INSERT INTO Assigned VALUES
    ('STF007','BL-G',3,'15/10/2020','Room 104');
INSERT INTO Assigned VALUES
    ('STF013','GR-B',4,'15/10/2020','Room 103');
INSERT INTO Assigned VALUES
    ('STF001','BL-G',4,'15/10/2020','Room 101');
INSERT INTO Assigned VALUES
    ('STF001','GR-B',5,'15/10/2020','Room 004');
INSERT INTO Assigned VALUES
    ('STF013','BL-G',5,'15/10/2020','Room 101');
INSERT INTO Assigned VALUES
    ('STF001','GR-B',6,'15/10/2020','Room 002');
INSERT INTO Assigned VALUES
    ('STF011','BL-G',6,'15/10/2020','Room 001');

/*
	MOTHER TABLE
	PK:  MOTHER_ID
*/

drop table Mother cascade constraints;
CREATE TABLE Mother (
    MOTHER_ID VARCHAR2(5),
    F_NAME VARCHAR2(20),
    F_CNIC varchar2(20) UNIQUE
);

drop sequence mothid;
CREATE SEQUENCE mothid
/
drop trigger m_id_trigger;
CREATE OR REPLACE TRIGGER m_id_trigger
    BEFORE INSERT ON Mother FOR EACH ROW
    BEGIN
        SELECT 'M' || TO_CHAR(mothid.NEXTVAL,'fm000')
        INTO   :new.Mother_ID
        FROM   DUAL;
    END m_id_trigger;
    /

ALTER table Mother
Add constraints 
Pk_mother PRIMARY KEY (MOTHER_ID);

INSERT INTO Mother(F_NAME,F_CNIC) VALUES
    ('MADIHA KOKAR',’42401-3625198-7’);
INSERT INTO Mother(F_NAME,F_CNIC) VALUES
    ('NABEELA KHAN',’42301-5492318-7’);
INSERT INTO Mother(F_NAME,F_CNIC) VALUES
    ('KOMAL AFTAB',’42486-3100974-6’);
INSERT INTO Mother(F_NAME,F_CNIC) VALUES
    ('QIRAT AHMED',’32401-3155871-9’);
INSERT INTO Mother(F_NAME,F_CNIC) VALUES
    ('SABA AAMIR',’61101-3651549-8’);
INSERT INTO Mother(F_NAME,F_CNIC) VALUES
    ('TEHREEM RASHID',’52139-6400575-1’);
INSERT INTO Mother(F_NAME,F_CNIC) VALUES
    ('MAIMOONA KHAN',’32301-6431975-1’);
INSERT INTO Mother(F_NAME,F_CNIC) VALUES
    ('ZAINAB BATOOL',’42301-6431975-6’);
INSERT INTO Mother(F_NAME,F_CNIC) VALUES
    ('HURRIYA NASIR',’91101-3641223-6’);
INSERT INTO Mother(F_NAME,F_CNIC) VALUES
    ('GHALIYAH SIDDIQUI',’31101-3641128-7’);



/*
	MOTHER_HISTORY TABLE
	PK:  MOTHER_ID,STUDENT_ID, DATE_ 
	FK: STUDENT_ID,MOTHER_ID
*/

Drop table MOTHER_HISTORY cascade constraints;

CREATE TABLE MOTHER_HISTORY (
    MOTHER_ID VARCHAR2(6),
    DATE_ date,
    F_CONTACT VARCHAR2(20),
    F_EMAIL VARCHAR2(30),
    F_ADDRESS VARCHAR2(50) ,
    MONTHLY_INCOME INT
);

ALTER TABLE MOTHER_HISTORY
ADD CONSTRAINTS
Pk_mother_history PRIMARY KEY( MOTHER_ID , DATE_ );

ALTER TABLE MOTHER_HISTORY
ADD CONSTRAINTS
Fk_mother_history FOREIGN KEY(MOTHER_ID)
REFERENCES MOTHER(MOTHER_ID);


Alter session set nls_date_format = 'dd/mm/yyyy' ;

INSERT INTO MOTHER_HISTORY VALUES
    ('M001','03/10/2019','0300-2614564','batss@gmail.com','SECTOR # F11,STREET 10,HOUSE 40','55000');
INSERT INTO MOTHER_HISTORY VALUES
    ('M002','05/10/2019','0323-2615478','tLZZZ@gmail.com','SECTOR # I10,STREET 45,HOUSE 30','50000');
INSERT INTO MOTHER_HISTORY VALUES
    ('M003','07/10/2019','0312-2614564','MKrr@gmail.com','SECTOR # F9,STREET 879,HOUSE 95','35000');
INSERT INTO MOTHER_HISTORY VALUES
    ('M001','12/11/2020','0300-2614564','batss@gmail.com','SECTOR # I11,STREET 40,HOUSE 1','55000');
INSERT INTO MOTHER_HISTORY VALUES
    ('M004','25/06/2019','03212624813','R1r23@gmail.com','SECTOR # G11,STREET 8,HOUSE 403','45000');
INSERT INTO MOTHER_HISTORY VALUES
    ('M001','01/01/2020','0300-2614564','GHHrr@gmail.com','SECTOR # G8,STREET 101,HOUSE 97','55000');
INSERT INTO MOTHER_HISTORY VALUES
    ('M002','04/02/2020','0315-2957500','tLZZZ@gmail.com','SECTOR # I10,STREET 45,HOUSE 30','50000');
INSERT INTO MOTHER_HISTORY VALUES
    ('M004','01/12/2020','0321-2624813','R1r23@gmail.com','SECTOR # D3,STREET 989,HOUSE 1891','55000');
INSERT INTO MOTHER_HISTORY VALUES
    ('M010','08/07/2019','0321-6639077','samra@gmail.com','SECTOR # H13,STREET 98,HOUSE 789','60000');
INSERT INTO MOTHER_HISTORY VALUES
    ('M009','03/04/2019','0342-6375212','katess@yahoo.com','SECTOR # I8,STREET 31,HOUSE 987','44000');
INSERT INTO MOTHER_HISTORY VALUES
    ('M010','12/12/2019','0321-6639077','saralgg@gmail.com','SECTOR # G8,STREET 101,HOUSE 97','60000');
INSERT INTO MOTHER_HISTORY VALUES
    ('M007','31/05/2019','0391-2552478','maimaim@yahoo.com','SECTOR # B12,STREET 845,HOUSE 1100','35000');
INSERT INTO MOTHER_HISTORY VALUES
    ('M005','10/01/2020','0342-5711611','kanwalzz@yahoo.com','SECTOR # F10,STREET 980,HOUSE 181','48000');
INSERT INTO MOTHER_HISTORY VALUES
    ('M006','01/01/2020','0352-4594858','smzen@gmail.com','SECTOR # H11,STREET 98,HOUSE 74','30000');
INSERT INTO MOTHER_HISTORY VALUES
    ('M008','09/03/2019','0321-2624813','sadboi@gmail.com','SECTOR # I10,STREET 7,HOUSE 9','25000');
INSERT INTO MOTHER_HISTORY VALUES
    ('M005','05/04/2020','0342-5711611','kanwalzz@yahoo.com','SECTOR # G6,STREET 11,HOUSE 7','55000');
INSERT INTO MOTHER_HISTORY VALUES
    ('M006','05/05/2020','0321-2513527','smzen@gmail.com','SECTOR # B11,STREET 888,HOUSE 110','30000');
INSERT INTO MOTHER_HISTORY VALUES
    ('M008','17/12/2019','0343-2550426','sadboi@gmail.com','SECTOR # I10,STREET 7,HOUSE 9','25000');
INSERT INTO MOTHER_HISTORY VALUES
    ('M010','03/04/2020','0342-7656647','hasss@gmail.com','SECTOR # G8,STREET 101,HOUSE 97','60000');
INSERT INTO MOTHER_HISTORY VALUES
    ('M007','17/04/2020','0391-2552478','Kimy_t@gmail.com','SECTOR # B12,STREET 845,HOUSE 1100','40000');


/*
	M_CHILD_OF  TABLE
	PK:  MOTHER_ID,STUDENT_ID 
	FK:  STUDENT_ID,MOTHER_ID
*/

DROP TABLE M_CHILD_OF CASCADE CONSTRAINTS;

CREATE TABLE M_CHILD_OF (
     MOTHER_ID VARCHAR2(6)  ,
     STUDENT_ID VARCHAR2(6)  ,
     CURRENT_ INT
);
ALTER TABLE M_CHILD_OF 
ADD CONSTRAINTS
Pk_M_CHILD_OF PRIMARY KEY(MOTHER_ID,STUDENT_ID) ;

ALTER TABLE M_CHILD_OF 
ADD CONSTRAINTS
Fk_M_CHILD_OF_1 FOREIGN KEY(STUDENT_ID)
REFERENCES STUDENT(STUDENT_ID);

ALTER TABLE M_CHILD_OF 
ADD CONSTRAINTS
Fk_M_CHILD_OF_2 FOREIGN KEY(MOTHER_ID)
REFERENCES MOTHER(MOTHER_ID);


INSERT INTO M_CHILD_OF VALUES
    ('M001','ST0001',1);
INSERT INTO M_CHILD_OF VALUES
    ('M002','ST0003',1);
INSERT INTO M_CHILD_OF VALUES
    ('M003','ST0002',0);
INSERT INTO M_CHILD_OF VALUES
    ('M001','ST0004',1);
INSERT INTO M_CHILD_OF VALUES
    ('M004','ST0005',0);
INSERT INTO M_CHILD_OF VALUES
    ('M010','ST0012',1);
INSERT INTO M_CHILD_OF VALUES
    ('M009','ST0011',1);
INSERT INTO M_CHILD_OF VALUES
    ('M007','ST0013',1);
INSERT INTO M_CHILD_OF VALUES
    ('M005','ST0014',1);
INSERT INTO M_CHILD_OF VALUES
    ('M006','ST0015',0);
INSERT INTO M_CHILD_OF VALUES
    ('M008','ST0016',1);
INSERT INTO M_CHILD_OF VALUES
    ('M005','ST0006',1);
INSERT INTO M_CHILD_OF VALUES
    ('M006','ST0007',1);
INSERT INTO M_CHILD_OF VALUES
    ('M008','ST0008',1);
INSERT INTO M_CHILD_OF VALUES
    ('M010','ST0009',0);
INSERT INTO M_CHILD_OF VALUES
    ('M007','ST0010',1);


/*
	FEMALE STAFF MEMBER TABLE
	PK:  MOTHER_ID,STAFF_ID
	FK:  MOTHER_ID.STAFF_ID
*/

Drop table F_STAFF_MEMBER cascade constraints;
CREATE TABLE F_STAFF_MEMBER (
    MOTHER_ID VARCHAR(4),
    STAFF_ID VARCHAR(6)
);

ALTER TABLE F_STAFF_MEMBER
ADD CONSTRAINTS
Pk_F_STAFF_MEMBER PRIMARY KEY (MOTHER_ID,STAFF_ID);

ALTER TABLE F_STAFF_MEMBER
ADD CONSTRAINTS
Fk_F_STAFF_MEMBER_1 FOREIGN KEY(MOTHER_ID)
REFERENCES MOTHER(MOTHER_ID);

ALTER TABLE  F_STAFF_MEMBER
ADD CONSTRAINTS
Fk_F_STAFF_MEMBER_2 FOREIGN KEY(STAFF_ID)
REFERENCES STAFF(STAFF_ID);


INSERT INTO F_STAFF_MEMBER VALUES
    ('M001','STF004');
INSERT INTO F_STAFF_MEMBER VALUES
    ('M002','STF005');
INSERT INTO F_STAFF_MEMBER VALUES
    ('M003','STF007');
INSERT INTO F_STAFF_MEMBER VALUES
    ('M004','STF011');
INSERT INTO F_STAFF_MEMBER VALUES
    ('M005','STF014');
INSERT INTO F_STAFF_MEMBER VALUES
    ('M006','STF015');

/************************FATHER***********************************/
Drop table FATHER cascade constraints;
CREATE TABLE FATHER (
    Father_ID VARCHAR(6),
    Father_Name VARCHAR(12),
    CNIC VARCHAR(15)
);

Alter table FATHER add constraints 
pk_Father PRIMARY KEY (Father_ID);
drop sequence fid;
CREATE SEQUENCE fid
/
drop trigger f_id_trigger;
CREATE OR REPLACE TRIGGER f_id_trigger
    BEFORE INSERT ON Father FOR EACH ROW
    BEGIN
        SELECT 'FT' || TO_CHAR(fid.NEXTVAL,'fm0000')
        INTO   :new.Father_ID
        FROM   DUAL;
    END f_id_trigger;
    /

INSERT ALL 
	INTO FATHER(Father_Name,CNIC) VALUES
    ('Arshad Ahmed','61101-3894291-5')
	INTO FATHER(Father_Name,CNIC) VALUES
    ('Travis Scott','61101-8730412-9')
	INTO FATHER(Father_Name,CNIC) VALUES
    ('Ali Usman','42202-8730282-7')
	INTO FATHER(Father_Name,CNIC) VALUES
    ('Danial Tahir','23321-2309382-8')
	INTO FATHER(Father_Name,CNIC) VALUES
    ('Faiz Ahmed','23321-3839013-1')
	INTO FATHER(Father_Name,CNIC) VALUES
    ('Tahir Shah','61101-9211737-4')
	INTO FATHER(Father_Name,CNIC) VALUES
    ('Ali khan','61101-8112694-7')
	INTO FATHER(Father_Name,CNIC) VALUES
    ('Ahmed Shah','42202-1723539-2')
	INTO FATHER(Father_Name,CNIC) VALUES
    ('Usama Shah','11061-8762342-7')
	INTO FATHER(Father_Name,CNIC) VALUES
    ('Taimour Khan','11061-2768231-1')
	INTO FATHER(Father_Name,CNIC) VALUES
    ('Imran Khan','11061-2798322-3')
	INTO FATHER(Father_Name,CNIC) VALUES
    ('Ahsan Ali','11061-8623424-6')
	INTO FATHER(Father_Name,CNIC) VALUES
    ('Abdur Ali','42202-2386492-3')
	INTO FATHER(Father_Name,CNIC) VALUES
    ('Hassan Dar','23321-7687211-6')
	INTO FATHER(Father_Name,CNIC) VALUES
    ('Abdullah Ali','42202-7861233-4')
	INTO FATHER(Father_Name,CNIC) VALUES
    ('Bilal Shahid','23321-2762132-1')
	select * from dual;


/*******************************FATHER_HISTORY******************************/
Drop table FATHER_HISTORY cascade constraints;
CREATE TABLE FATHER_HISTORY (
    Father_ID VARCHAR(6),
    Contact_No VARCHAR(12),
    Email VARCHAR(23),
    Address VARCHAR(19),
    Entry_Date DATE,
    Monthly_Income Number
);

Alter table FATHER_HISTORY add constraints 
pk_Father_Hist PRIMARY KEY (Father_ID,Entry_Date);

Alter table FATHER_HISTORY add constraints 
fk_FATHER_HISTORY_1 FOREIGN KEY (Father_ID)
REFERENCES FATHER(Father_ID);

Alter session set nls_date_format = 'dd/mm/yyyy' ;

INSERT ALL
 INTO FATHER_HISTORY VALUES
    ('FT0001','0321-2983751','ArshadAhmed@gmail.com','H#F-20,Street 5,RWP','01/02/2020', 10000)
INTO FATHER_HISTORY VALUES
    ('FT0002','0320-3990701','TravisScott@gmail.com','H#B-20,Street 1,RWP','01/03/2020', 15000)
INTO FATHER_HISTORY VALUES
    ('FT0003','0321-6283901','AliUsman@gmail.com','H#B-11,Street 2,RWP','01/02/2020', 9000)
INTO FATHER_HISTORY VALUES
    ('FT0004','0324-3673911','DanialTahir@gmail.com','H#C-5,Street 10,ISB','01/01/2020', 10000)
INTO FATHER_HISTORY VALUES
    ('FT0005','0323-2301832','FaizAhmed@gmail.com','H#D-4,Street 5,RWP','01/03/2020', 12000)
INTO FATHER_HISTORY VALUES
    ('FT0006','0321-3092813','TahirShah@gmail.com','H#E-8,Street 3,RWP','01/01/2020', 10000)
INTO FATHER_HISTORY VALUES
    ('FT0007','0330-9832842','Alikhan@gmail.com','H#A-2,Street 4,RWP','01/12/2019', 13000)
INTO FATHER_HISTORY VALUES
    ('FT0008','0331-3240982','AhmedShah@gmail.com','H#B-9,Street 11,RWP','01/02/2020', 15000)
INTO FATHER_HISTORY VALUES
    ('FT0009','0320-9080234','UsamaShah@gmail.com','H#Z-1,Street 10,ISB','01/02/2020', 10000)
INTO FATHER_HISTORY VALUES
    ('FT0010','0321-3240924','TaimourKhan@gmail.com','H#C-11,Street 6,RWP','01/03/2020', 10000)
INTO FATHER_HISTORY VALUES
    ('FT0010','0324-8794023','TaimourKhan11@gmail.com','H#C-20,Street 7,ISB','20/04/2020', 10000)
INTO FATHER_HISTORY VALUES
    ('FT0012','0324-3470084','AhsanAli@gmail.com','H#D-12,Street 7,ISB','01/01/2020', 9500)
INTO FATHER_HISTORY VALUES
    ('FT0013','0323-3498080','AbdulAli@gmail.com','H#A-6,Street 11,ISB','01/03/2020', 11500)
INTO FATHER_HISTORY VALUES
    ('FT0014','0320-4867004','HassanDar@gmail.com','H#X-30,Street 4,RWP','01/01/2020', 10000)
INTO FATHER_HISTORY VALUES
    ('FT0015','0323-9866493','AbdullahAli@gmail.com','H#G-9,Street 19,ISB','01/12/2019', 15000)
INTO FATHER_HISTORY VALUES
    ('FT0016','0323-0374987','BilalShahid@gmail.com','H#E-12,Street 9,RWP','01/02/2020', 16000)
INTO FATHER_HISTORY VALUES
    ('FT0011','0321-2399822','ImranKhan@gmail.com','H#H-8,Street 15,ISB','03/11/2020', 15000)
INTO FATHER_HISTORY VALUES
 ('FT0006','0321-3092813','TahirShah@gmail.com','H#E-8,Street 3,RWP','01/03/2020', 13000)
select * from dual;


/**************************F_CHILD_OF**************************************/
Drop table F_CHILD_OF cascade constraints;

CREATE TABLE F_CHILD_OF (
    FATHER_ID VARCHAR(6),
    STUDENT_ID VARCHAR(6),
    CURRENT_ NUMBER
);

Alter table F_CHILD_OF add constraints
pk_F_CHILD_OF PRIMARY KEY (FATHER_ID,STUDENT_ID);

Alter table F_CHILD_OF
ADD CONSTRAINTS
fk_F_CHILD_OF_1 FOREIGN KEY(Student_ID)
REFERENCES Student(Student_ID);

Alter table F_CHILD_OF
ADD CONSTRAINTS
fk_F_CHILD_OF_2 FOREIGN KEY(Father_ID)
REFERENCES Father(Father_ID);

INSERT ALL
INTO F_CHILD_OF VALUES
    ('FT0001','ST0007',1)
INTO F_CHILD_OF VALUES
    ('FT0002','ST0008',1)
INTO F_CHILD_OF VALUES
    ('FT0003','ST0009',0)
INTO F_CHILD_OF VALUES
    ('FT0004','ST0010',1)
INTO F_CHILD_OF VALUES
    ('FT0005','ST0002',0)
INTO F_CHILD_OF VALUES
    ('FT0006','ST0012',0)
INTO F_CHILD_OF VALUES
    ('FT0007','ST0013',1)
INTO F_CHILD_OF VALUES
    ('FT0008','ST0013',0)
INTO F_CHILD_OF VALUES
    ('FT0009','ST0009',1)
INTO F_CHILD_OF VALUES
    ('FT0010','ST0014',0)
INTO F_CHILD_OF VALUES
    ('FT0011','ST0003',1)
INTO F_CHILD_OF VALUES
    ('FT0012','ST0001',0)
INTO F_CHILD_OF VALUES
    ('FT0013','ST0019',1)
INTO F_CHILD_OF VALUES
    ('FT0014','ST0018',1)
INTO F_CHILD_OF VALUES
    ('FT0014','ST0014',1)
INTO F_CHILD_OF VALUES
    ('FT0014','ST0006',1)
INTO F_CHILD_OF VALUES
    ('FT0015','ST0016',1)
INTO F_CHILD_OF VALUES
    ('FT0016','ST0017',1)
INTO F_CHILD_OF VALUES
    ('FT0006','ST0020',1)
INTO F_CHILD_OF VALUES
    ('FT0015','ST0015',1)
INTO F_CHILD_OF VALUES
    ('FT0015','ST0001',1)
INTO F_CHILD_OF VALUES
    ('FT0015','ST0004',1)	
select * from dual;




/**************************Male_Staff_Member******************************/
Drop table M_STAFF_MEMBER cascade constraints;
CREATE TABLE M_STAFF_MEMBER (
    FATHER_ID VARCHAR(6),
    STAFF_ID VARCHAR(6)
);
ALTER TABLE M_STAFF_MEMBER
ADD CONSTRAINTS
Pk_M_STAFF_MEMBER PRIMARY KEY (FATHER_ID,STAFF_ID);

ALTER TABLE M_STAFF_MEMBER
ADD CONSTRAINTS
Fk_M_STAFF_MEMBER_1 FOREIGN KEY(FATHER_ID)
REFERENCES FATHER(FATHER_ID);

ALTER TABLE  M_STAFF_MEMBER
ADD CONSTRAINTS
Fk_M_STAFF_MEMBER_2 FOREIGN KEY(STAFF_ID)
REFERENCES STAFF(STAFF_ID);

INSERT INTO M_STAFF_MEMBER VALUES
    ('FT0002','STF001');
INSERT INTO M_STAFF_MEMBER VALUES
    ('FT0011','STF002');
INSERT INTO M_STAFF_MEMBER VALUES
    ('FT0002','STF003');
INSERT INTO M_STAFF_MEMBER VALUES
    ('FT0016','STF004');

/*******************************FEE_DETAILS******************************************/
Drop table FEE_DETAILS cascade constraints;

CREATE TABLE FEE_DETAILS (
    Student_ID VARCHAR(6),
    Fee_challan VARCHAR(6),
    Amount NUMBER,
    Discount NUMBER,
    Due_Date DATE,
    Payment_Date DATE,
    Full_Paid Int
);

Alter table FEE_DETAILS add constraints
pk_FEE_DETAILS PRIMARY KEY (Fee_Challan);

Alter table FEE_DETAILS
ADD CONSTRAINTS
fk_FEE_DETAILS_1 FOREIGN KEY(Student_ID)
REFERENCES Student(Student_ID);

Alter session set nls_date_format = 'dd/mm/yyyy' ;

INSERT ALL 
INTO FEE_DETAILS VALUES
    ('ST0001','FC0001',150,10,'15/5/2020','03/05/2020',1)
INTO FEE_DETAILS VALUES
    ('ST0003','FC0002',150,0,'15/5/2020','28/04/2020',1)
INTO FEE_DETAILS VALUES
    ('ST0011','FC0003',150,0,'15/5/2020','01/02/2020',1)
INTO FEE_DETAILS VALUES
    ('ST0016','FC0004',100,0,’15/1/2020','01/01/2020',0)
INTO FEE_DETAILS VALUES
    ('ST0020','FC0005',150,100,'15/5/2020','01/05/2020',1)
INTO FEE_DETAILS VALUES
    ('ST0006','FC0006',150,13,'15/5/2020','30/04/2020',1)
INTO FEE_DETAILS VALUES
    ('ST0009','FC0007',100,0,'15/5/2020','01/03/2020',0)
INTO FEE_DETAILS VALUES
    ('ST0006','FC0008',150,0,'15/5/2020','01/02/2020',0)
INTO FEE_DETAILS VALUES
    ('ST0014','FC0009',150,0,'15/5/2020','01/04/2020',1)
INTO FEE_DETAILS VALUES
    ('ST0017','FC0010',150,100,'15/5/2020','02/04/2020',1)
INTO FEE_DETAILS VALUES
    ('ST0012','FC0011',150,0,'15/5/2020','28/04/2020',1)
INTO FEE_DETAILS VALUES
    ('ST0013','FC0012',150,5,'15/3/2020','10/02/2020',1)
INTO FEE_DETAILS VALUES
    ('ST0015','FC0013',100,15,'20/7/2020','01/03/2020',1)
INTO FEE_DETAILS VALUES
    ('ST0018','FC0014',100,0,'15/1/2019','05/01/2020',1)
INTO FEE_DETAILS VALUES
    ('ST0019','FC0015',150,17,'15/5/2020','02/05/2020',1)
INTO FEE_DETAILS VALUES
    ('ST0008','FC0016',150,100,'15/5/2020','28/04/2020',1)
INTO FEE_DETAILS VALUES
    ('ST0002','FC0017',150,0,'15/5/2020','01/04/2020',1)
INTO FEE_DETAILS VALUES
    ('ST0005','FC0018',150,0,'15/5/2020','30/04/2020',1)
INTO FEE_DETAILS VALUES
    ('ST0007','FC0019',150,5,'15/5/2020','30/04/2020',1)
INTO FEE_DETAILS VALUES
    ('ST0010','FC0020',150,0,'15/5/2020','15/04/2020',0)
INTO FEE_DETAILS VALUES
    ('ST0004','FC0023',150,0,'15/5/2020','28/04/2020',1)
INTO FEE_DETAILS VALUES
    ('ST0001','FC0021',150,10,'15/3/2020','03/02/2020',1)
INTO FEE_DETAILS VALUES
    ('ST0013','FC0022',150,5,'15/5/2020','10/04/2020',1)
INTO FEE_DETAILS VALUES
    ('ST0011','FC0024',100,0,'15/3/2020','01/02/2020',1)
INTO FEE_DETAILS VALUES
    ('ST0009','FC0025',100,0,'20/7/2020','01/05/2020',1)
select * from dual;


/************************ENROLLMENT_HISTORY*****************/

Drop table ENROLLMENT_HISTORY cascade constraints;
CREATE TABLE ENROLLMENT_HISTORY (
    Student_ID VARCHAR(6),
    Course_ID VARCHAR(6),
    Section_ID VARCHAR(4),
    Class_ID Number,
    Fee_Challan VARCHAR(6),
    Enrolled Number,
    Enrollment_Date DATE
);

Alter table Enrollment_History add constraints 
pk_Enrollment_History PRIMARY KEY(Fee_Challan);

Alter table Enrollment_History
ADD CONSTRAINTS
fk_Enrollment_History_1 FOREIGN KEY(Student_ID)
REFERENCES Student(Student_ID);

Alter table Enrollment_History
ADD CONSTRAINTS
fk_Enrollment_History_2 FOREIGN KEY(Course_ID)
REFERENCES Course(Course_ID);

Alter table Enrollment_History
ADD CONSTRAINTS
fk_Enrollment_History_3 FOREIGN KEY(Class_ID, Section_ID)
REFERENCES Sections(Class_ID, Section_ID);

Alter table Enrollment_History
ADD CONSTRAINTS
fk_Enrollment_History_5 FOREIGN KEY(Fee_Challan)
REFERENCES Fee_Details(Fee_Challan);

INSERT ALL 
 INTO ENROLLMENT_HISTORY VALUES
    ('ST0001','GRM101','BL-G',1,'FC0001',1,'03/05/2020')
INTO ENROLLMENT_HISTORY VALUES
    ('ST0001','ITO101','BL-G',1,'FC0021',0,'03/02/2020')
INTO ENROLLMENT_HISTORY VALUES
    ('ST0003','GRM101','GR-B',4,'FC0002',1,'28/04/2020')
INTO ENROLLMENT_HISTORY VALUES
    ('ST0004','GRM101','BL-G',4,'FC0023',1,'28/04/2020')
INTO ENROLLMENT_HISTORY VALUES
    ('ST0005','GRM101','BL-G',6,'FC0018',1,'30/04/2020')
INTO ENROLLMENT_HISTORY VALUES
    ('ST0006','GRM101','GR-B',3,'FC0006',1,'30/04/2020')
INTO ENROLLMENT_HISTORY VALUES
    ('ST0007','GRM101','BL-G',1,'FC0019',1,'30/04/2020')
INTO ENROLLMENT_HISTORY VALUES
    ('ST0008','GRM101','BL-G',2,'FC0016',1,'28/04/2020')
INTO ENROLLMENT_HISTORY VALUES
    ('ST0009','FMG102','BL-G',3,'FC0007',0,'01/03/2020')
INTO ENROLLMENT_HISTORY VALUES
    ('ST0010','GRM101','GR-B',3,'FC0020',1,'15/04/2020')
INTO ENROLLMENT_HISTORY VALUES
    ('ST0011','GRM101','GR-B',3,'FC0003',1,'01/02/2020')
INTO ENROLLMENT_HISTORY VALUES
    ('ST0012','GRM101','GR-B',5,'FC0011',1,'28/04/2020')
INTO ENROLLMENT_HISTORY VALUES
    ('ST0013','ITO101','BL-G',6,'FC0012',0,'01/03/2020')
INTO ENROLLMENT_HISTORY VALUES
    ('ST0013','GRM101','BL-G',6,'FC0022',1,'10/04/2020')
INTO ENROLLMENT_HISTORY VALUES
    ('ST0009','ENV101','BL-G',5,'FC0025',0,'02/05/2020')
INTO ENROLLMENT_HISTORY VALUES
    ('ST0014','GRM101','BL-G',2,'FC0009',1,'01/04/2020')
INTO ENROLLMENT_HISTORY VALUES
    ('ST0020','GRM101','BL-G',3,'FC0005',1,'01/05/2020')
INTO ENROLLMENT_HISTORY VALUES
    ('ST0015','ENV101','GR-B',4,'FC0013',0,'02/05/2020')
INTO ENROLLMENT_HISTORY VALUES
    ('ST0019','GRM101','GR-B',6,'FC0015',1,'02/05/2020')
INTO ENROLLMENT_HISTORY VALUES
    ('ST0018','DPR006','GR-B',4,'FC0014',0,'05/01/2020')
INTO ENROLLMENT_HISTORY VALUES
    ('ST0016','SEM001','BL-G',4,'FC0004',0,'01/01/2020')
INTO ENROLLMENT_HISTORY VALUES
    ('ST0017','GRM101','BL-G',6,'FC0010',1,'02/04/2020')
INTO ENROLLMENT_HISTORY VALUES
    ('ST0011','ITO101','GR-B',1,'FC0024',0,'01/02/2020')
select * from dual;

//********************************SECTION_CHANGE*********************************************/
Alter session set nls_date_format='dd/mm/yyyy';
Drop table SECTION_CHANGE cascade constraints;
CREATE TABLE SECTION_CHANGE (
    Fee_Challan VARCHAR(6),
    Change_Date DATE,
    Old_Section VARCHAR(5),
    Reason_For_Change VARCHAR(24),
    Approved_By VARCHAR(12)
);

Alter table SECTION_CHANGE add constraints
pk_SECTION_CHANGE PRIMARY KEY (FEE_CHALLAN,CHANGE_DATE);

Alter table SECTION_CHANGE
ADD CONSTRAINTS
fk_SECTION_CHANGE_2 FOREIGN KEY(FEE_CHALLAN)
REFERENCES ENROLLMENT_HISTORY(FEE_CHALLAN);

INSERT ALL
INTO SECTION_CHANGE VALUES
    ('FC0015','14/05/2020','GR-B','Friends in other section','Kashif Munir')
INTO SECTION_CHANGE VALUES
    ('FC0023','30/04/2020','BL-G','Clashes','Kashif Munir')
select * from dual;

/*----------------------------------------------------------------------------------Reports & SQL Queries---------------------------------------------------------------------------*/
/*Query No. 1*/
select * from Student;

/*Query No. 2 Mother + Spouses*/
select DISTINCT mc.Mother_Id , M.F_Name as Mother_Name,fc.Father_ID,F.Father_Name
from M_CHILD_OF mc, Mother M, F_CHILD_OF fc, Father F
where mc.STUDENT_ID=fc.STUDENT_ID and M.mother_ID=mc.Mother_ID and
F.Father_ID=fc.FATHER_ID and mc.Current_=1 and fc.CURRENT_=1;

/*Query No.3 Guardian +relation*/
select G.Guardian_ID, G.Name, S.STUDENT_ID,S.name as Student_Name,R.Relation
from Guardian G, Responsible_For R, STUDENT S
where S.Student_ID= R.Student_ID and R.Guardian_ID=G.Guardian_ID and R.CURRENT_=1
order by R.Relation;
 
/*Query No.4 Parents+Children*/
/*Combined*/
(select S.STUDENT_ID, S.Name, M.Mother_ID, M.F_Name as Mother_Name, F.Father_ID, F.Father_Name
from Student S, Mother M, Father F, m_child_of mc, f_child_of fc
where s.student_Id=mc.student_Id and s.student_Id=fc.student_Id and 
m.mother_ID=mc.mother_ID and f.father_id=fc.father_id and mc.Current_=1 and fc.CURRENT_=1);
/*Individual Mother*/
select S.STUDENT_ID, S.Name, M.Mother_ID, M.F_Name as Mother_Name
from Student S, Mother M, m_child_of mc
where m.mother_ID=mc.mother_ID and  mc.Current_=1 and s.student_Id=mc.student_Id;
/*Individual Father*/
select S.STUDENT_ID, S.Name, M.Father_ID, M.Father_Name as Father_Name
from Student S, Father M, f_child_of mc
where m.father_ID=mc.father_id and  mc.Current_=1 and s.student_Id=mc.student_Id;
/*With Nulls in between using joins*/
select Student.Student_ID, m_child_of.Mother_ID, f_child_of.Father_ID
from (select Student_ID from m_child_of
	union select Student_ID from f_child_of
	union select STUDENT_ID from Student
) Student left outer join
m_child_of on Student.STUDENT_ID= m_child_of.STUDENT_ID and m_child_of.current_=1 left outer join
f_child_of on STUDENT.STUDENT_ID=f_child_of.STUDENT_ID and f_child_of.current_=1
order by Student.STUDENT_ID;

/*Query No. 5*/
select S.STUDENT_ID, S.Name, E.class_id from Student S, m_child_of mc, f_child_of fc, ENROLLMENT_HISTORY E 
where S.student_Id=mc.student_Id and S.student_Id=fc.student_Id and mc.CURRENT_=1 
and fc.CURRENT_=1 and E.student_Id=S.STUDENT_ID
group by S.STUDENT_ID, S.Name, E.class_id;

/*Query No. 6*/
select E.Student_ID, E.Class_ID, E.Section_ID as New_section, S.old_section as Old_section, S.Change_Date , S.Fee_Challan from Section_Change S , ENROLLMENT_HISTORY E
 Where S.Fee_Challan = E.Fee_Challan and S.Change_Date > '01/05/2020';

/*Query No. 7*/
select S.Student_ID, S.Name, E.Class_ID from Student S, ENROLLMENT_HISTORY E
where S.STUDENT_ID=E.STUDENT_ID and E.enrollment_date > '01/05/2020'
group by S.Student_ID, S.Name, E.Class_ID;

/*Query No. 8*/
select distinct Student.Student_ID, m_child_of.Mother_ID,mother.f_name, f_child_of.Father_ID, father.father_name
	from (select Student_ID from m_child_of
		union select Student_ID from f_child_of
		union select STUDENT_ID from Student
	) 
	Student  left outer join
	m_child_of on Student.STUDENT_ID= m_child_of.STUDENT_ID and m_child_of.current_=1 left outer join
	f_child_of on STUDENT.STUDENT_ID=f_child_of.STUDENT_ID and f_child_of.current_=1 left outer join 
	father on father.father_ID = f_child_of.father_id left outer join 
	mother on mother.mother_ID = m_child_of.mother_id left outer join
	mother_history on mother.mother_id = mother_history.mother_ID left outer join
	father_history on father.father_id = father_history.father_ID
	where Student.Student_ID IN(
		select Student_ID
		from Student 
		where trunc(months_between(sysdate,signup_date))<12
	);

/*Query No. 9 Early introducers*/
select distinct Student.Student_ID, m_child_of.Mother_ID, f_child_of.Father_ID
	from (select Student_ID from m_child_of
		union select Student_ID from f_child_of
		union select STUDENT_ID from Student
		union select Student_ID from Enrollment_History
	) 
	Student  left outer join
	m_child_of on Student.STUDENT_ID= m_child_of.STUDENT_ID and m_child_of.current_=1 left outer join
	f_child_of on STUDENT.STUDENT_ID=f_child_of.STUDENT_ID and f_child_of.current_=1 left outer join
	ENROLLMENT_HISTORY on Student.STUDENT_ID=ENROLLMENT_HISTORY.STUDENT_ID
	where Student.Student_ID IN(
		select S.Student_ID
		from Student S, ENROLLMENT_HISTORY E
		where E.STUDENT_ID=S.STUDENT_ID and trunc(months_between(E.enrollment_date,S.dob)/12)<6
	);
/*Query No. 10*/
select E.Student_ID,E.Fee_Challan,E.Section_ID New_Section, S.Old_section from Enrollment_History E , Section_Change S where E.Fee_Challan = S.Fee_Challan;

/*Report No 11*/
/*Get list of students in a specific class e.g 3*/
select s.Student_ID, s.Name, s.Gender, round(months_between(sysdate, s.dob)/12,2), e.section_id, e.enrollment_date 
     from Student s, Enrollment_History e
       where e.Student_ID = s.Student_ID and e.enrolled = 1 and e.class_id= 3;

/*Report No 12*/
/*Get general statistics of a class i.e total students/boys/girls etc */
select count(case when UPPER(gender) = 'M' THEN 1 END) Male,
count(case when UPPER(gender) = 'F' THEN 1 END) Female,
count(s.student_id) as total from student s, enrollment_history h
where s.student_id = h.student_id and h.enrolled = 1 and h.class_id = 3;

/*Report No 13*/
/*Get list of dormant Students*/
Select * from Enrollment_History where Months_Between(Current_Date , Enrollment_Date) > 3;
/*For Years*/
Select * from Enrollment_History where Months_Between(Current_Date , Enrollment_Date) / 12 > 3;

/*Report No. 14*/
/*Get Students Mother search on id*/
Select m.F_Name as Mother_Name,m.Mother_ID as Mother_ID from Mother m, M_CHILD_OF mc
where mc.STUDENT_ID = 'ST0003' and mc.MOTHER_ID=m.Mother_ID and mc.CURRENT_=1;

/*Get Students Mother search on name*/
Select m.F_Name as Mother_Name,m.Mother_ID as Mother_ID from Mother m, M_CHILD_OF mc
where mc.MOTHER_ID=m.Mother_ID and mc.CURRENT_=1 and mc.STUDENT_ID=(
	Select s.STUDENT_ID from Student s where 
	s.Name = 'Adil Fayyaz'
);
/*Get STudents father search on id*/
Select m.Father_Name as Father_Name,m.Father_ID as Father_ID  from Father m, F_CHILD_OF mc
where mc.STUDENT_ID = 'ST0003' and mc.Father_ID=m.Father_ID and mc.CURRENT_=1;

/*Get Student father search on name*/
Select m.Father_Name as Father_Name,m.Father_ID as Father_ID from Father m, F_CHILD_OF mc
where mc.Father_ID=m.Father_ID and mc.CURRENT_=1 and mc.STUDENT_ID=(
	Select s.STUDENT_ID from Student s where 
	s.Name = 'Adil Fayyaz'
);

/*Get Guardian search by id*/
Select G.Name as Guardian_Name, G.Guardian_ID as Guardian_ID from Guardian G, Responsible_For R, Student S
where S.Student_ID='ST0003' and S.STUDENT_ID=R.Student_ID and R.Guardian_ID=G.Guardian_ID and R.CURRENT_=1;

/*Get Guardian search by name*/
Select G.Name as Guardian_Name, G.Guardian_ID as Guardian_ID from Guardian G, Responsible_For R, Student S
where S.name='Adil Fayyaz' and S.STUDENT_ID=R.Student_ID and R.Guardian_ID=G.Guardian_ID and R.CURRENT_=1;

/*Get siblings Mother*/
select Student.Name ,Student.Student_ID from M_CHILD_OF
left outer join Student
on Student.STUDENT_ID = M_CHILD_OF.STUDENT_ID
where M_CHILD_OF.Mother_ID = (
	select M_CHILD_OF.Mother_ID from M_CHILD_OF,Student
	where Student.Student_ID='ST0001' and
	 M_CHILD_OF.STUDENT_ID=Student.STUDENT_ID and
	 M_CHILD_OF.CURRENT_=1
)and M_CHILD_OF.CURRENT_=1;
/*Get siblings father*/
select Student.Name ,Student.Student_ID from F_CHILD_OF
left outer join Student
on Student.STUDENT_ID = F_CHILD_OF.STUDENT_ID
where F_CHILD_OF.Father_ID = (
	select F_CHILD_OF.Father_ID from F_CHILD_OF,Student
	where Student.Student_ID='ST0001' and
	 F_CHILD_OF.STUDENT_ID=Student.STUDENT_ID and
	 F_CHILD_OF.CURRENT_=1
) and F_CHILD_OF.CURRENT_=1;

/*Get siblings mother and father via ID*/
(select S1.Name ,S1.Student_ID from M_CHILD_OF
	left outer join Student S1
	on S1.STUDENT_ID = M_CHILD_OF.STUDENT_ID
	where M_CHILD_OF.Mother_ID = (
		select M_CHILD_OF.Mother_ID from M_CHILD_OF,Student S2
		where S2.Student_ID='ST0001' and
		 M_CHILD_OF.STUDENT_ID=S2.STUDENT_ID and
		 M_CHILD_OF.CURRENT_=1
	) and M_CHILD_OF.CURRENT_=1 and  S1.STUDENT_ID <> 'ST0001'
)
intersect
(select S3.Name, S3.STUDENT_ID from F_CHILD_OF
	left outer join Student S3
	on S3.STUDENT_ID=F_CHILD_OF.STUDENT_ID
	where F_CHILD_OF.FATHER_ID= (
		select F_CHILD_OF.Father_ID from F_CHILD_OF,Student S4
		where S4.Student_ID='ST0001' and
		 F_CHILD_OF.STUDENT_ID=S4.STUDENT_ID and
		 F_CHILD_OF.CURRENT_=1
	)and F_CHILD_OF.CURRENT_=1 and S3.STUDENT_ID <> 'ST0001'
);

/*Get siblings mother and father via Name*/
(select S1.Name ,S1.Student_ID from M_CHILD_OF
	left outer join Student S1
	on S1.STUDENT_ID = M_CHILD_OF.STUDENT_ID
	where M_CHILD_OF.Mother_ID = (
		select M_CHILD_OF.Mother_ID from M_CHILD_OF,Student S2
		where S2.Name='Aleezeh Usman' and
		 M_CHILD_OF.STUDENT_ID=S2.STUDENT_ID and
		 M_CHILD_OF.CURRENT_=1
	) and M_CHILD_OF.CURRENT_=1
)
intersect
(select S3.Name, S3.STUDENT_ID from F_CHILD_OF
	left outer join Student S3
	on S3.STUDENT_ID=F_CHILD_OF.STUDENT_ID
	where F_CHILD_OF.FATHER_ID= (
		select F_CHILD_OF.Father_ID from F_CHILD_OF,Student S4
		where S4.name='Aleezeh Usman' and
		 F_CHILD_OF.STUDENT_ID=S4.STUDENT_ID and
		 F_CHILD_OF.CURRENT_=1
	)and F_CHILD_OF.CURRENT_=1 
);

/*Get class History on ID*/

select s.name ,e.course_id, c.course_title, e.enrollment_date from
Student s, Enrollment_History e, Course c 
where s.student_Id='ST0001' and s.STUDENT_ID=e.Student_ID
 and e.course_id=c.course_id;

/*Get class History on name*/
select s.name ,e.course_id,e.class_id,e.section_id, c.course_title, e.enrollment_date from
Student s, Enrollment_History e, Course c 
where s.name='Lydia Martin' and s.STUDENT_ID=e.Student_ID
 and e.course_id=c.course_id;


/*Report no. 15*/
/*Find all children of Mother using ID*/
	select M_CHILD_OF.Student_ID, S2.name, E.Class_ID, G.Name as Guardian_Name,G.Guardian_ID  from M_CHILD_OF,
	Student S2, Mother M,ENROLLMENT_HISTORY E, Responsible_For R, Guardian G
	where M.mother_id='M001' and
	 M_CHILD_OF.STUDENT_ID=S2.STUDENT_ID and
	 M_CHILD_OF.CURRENT_=1 and M.Mother_Id= M_CHILD_OF.Mother_Id
	 and E.Student_ID=S2.STUDENT_ID and E.enrolled=1 and 
	 R.STUDENT_ID=S2.STUDENT_ID and G.Guardian_ID=R.Guardian_ID
	 and R.Current_=1;
	 
/*Find all children of Mother using name*/	
	select M_CHILD_OF.Student_ID, S2.name, E.Class_ID, G.Name as Guardian_Name,G.Guardian_ID  from M_CHILD_OF,
	Student S2, Mother M,ENROLLMENT_HISTORY E, Responsible_For R, Guardian G
	where M.F_name='MADIHA KOKAR' and
	 M_CHILD_OF.STUDENT_ID=S2.STUDENT_ID and
	 M_CHILD_OF.CURRENT_=1 and M.Mother_Id= M_CHILD_OF.Mother_Id
	 and E.Student_ID=S2.STUDENT_ID and E.enrolled=1 and 
	 R.STUDENT_ID=S2.STUDENT_ID and G.Guardian_ID=R.Guardian_ID
	 and R.Current_=1;
	 
/*Find all children of Father using ID*/
	select F_CHILD_OF.Student_ID, S2.name, E.Class_ID, G.Name as Guardian_Name,G.Guardian_ID  from F_CHILD_OF,
	Student S2, Father F,ENROLLMENT_HISTORY E, Responsible_For R, Guardian G
	where F.FATHER_ID='FT0011' and
	 F_CHILD_OF.STUDENT_ID=S2.STUDENT_ID and
	 F_CHILD_OF.CURRENT_=1 and F.Father_Id= F_CHILD_OF.Father_Id
	 and E.Student_ID=S2.STUDENT_ID and E.enrolled=1 and 
	 R.STUDENT_ID=S2.STUDENT_ID and G.Guardian_ID=R.Guardian_ID
	 and R.Current_=1;
	 
/*Find all children of Father using name*/
	select F_CHILD_OF.Student_ID, S2.name, E.Class_ID, G.Name as Guardian_Name,G.Guardian_ID  from F_CHILD_OF,
	Student S2, Father F,ENROLLMENT_HISTORY E, Responsible_For R, Guardian G
	where F.Father_Name='Tahir Shah' and
	 F_CHILD_OF.STUDENT_ID=S2.STUDENT_ID and
	 F_CHILD_OF.CURRENT_=1 and F.Father_Id= F_CHILD_OF.Father_Id
	 and E.Student_ID=S2.STUDENT_ID and E.enrolled=1 and 
	 R.STUDENT_ID=S2.STUDENT_ID and G.Guardian_ID=R.Guardian_ID
	 and R.Current_=1;


/*
=======================DROPPING TABLES AT THE END=======================
*/
drop table Guardian cascade constraints;
drop table Responsible_For cascade constraints;
drop table Student_Accompany_Form cascade constraints;
drop table Staff cascade constraints;
drop table Staff_Member cascade constraints;
drop table Course cascade constraints;
Drop table Class_Info cascade constraints;
Drop table sections cascade constraints;
Drop table Course_History cascade constraints;
Drop table Assigned cascade constraints;
Drop table Enrollment_History cascade constraints;
Drop table Mother cascade constraints;
Drop table Mother_History cascade constraints;
Drop table F_Staff_Member cascade constraints;
Drop table Father cascade constraints;
Drop table Father_History cascade constraints;
Drop table F_CHILD_OF cascade constraints;
Drop table M_CHILD_OF cascade constraints;
Drop table M_Staff_Member cascade constraints;
Drop table Fee_DETAILS cascade constraints;
Drop table Student cascade constraints;
Drop table student_history cascade constraints;
drop table Guardian_History cascade constraints;
Drop table SECTION_CHANGE cascade constraints;












