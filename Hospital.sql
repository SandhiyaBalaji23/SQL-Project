create database hospital;
use hospital;
create table Patients
(
PatientId int primary key,
FirstName varchar(30),
LastName varchar(30),
Dateofbirth int,
Gender varchar(15),
Phonenumber int,
city varchar(30)
);
create table Doctors
(
DoctorId int primary key,
FirstName varchar(30),
LastName varchar(30),
Speciality varchar(30),
Phonenumber int,
Email varchar(30)
);
create table Admissions
(
PatientId int,
constraint fk_patient_id foreign key(PatientId) references Patients(PatientId),
DoctorId int,
constraint fk_doctor_id foreign key(DoctorId) references Doctors(DoctorId),
AdmissionDate int,
DischargeDate int,
Diagnosis varchar(30)
);
create table Billing
(
BillId int primary key,
PatientId int,
constraint fk_Patient foreign key(PatientId) references Patients(PatientId),
TotalAmount int,
PaymentDate int,
PaymentMethod varchar(30)
);

alter table Patients
modify Dateofbirth date;
alter table Patients
modify Phonenumber varchar(15) ;
alter table Doctors
modify phonenumber varchar(15);

insert into Patients values (100,"Sandhiya","Rajagopal","1991-10-23","Female","88702799","Chennai");
Update Patients
set Phonenumber="8870279989" where PatientId=100;
select * from Patients;
insert into Patients values (101,"Balaji","Sethuramalingam","1985-06-05","Male","9566179899","Chennai");
insert into Patients values (102,"Nivedha","Balakrishnan","1995-09-22","Female","6370227156","Salem");
insert into Patients values (103,"Vijay","Sethuramalingam","1989-10-18","Female","9156018823","Salem");
insert into Patients values (104,"Sethuramalingam","Govinthachettiyar","1964-12-01","Male","8854183498","Salem");
insert into Patients values (105,"Rajagopal","Ramasamy","1970-09-30","Male","9443392809","Namakkal");
insert into Patients values (106,"Sasikala","Rajagopal","1978-12-23","Female","9566128099","Namakkal");
insert into Patients values (107,"Surya","Venkatachalam","1995-06-03","Female","7023917102","Coimbatore");
insert into Patients values (108,"Sathish","Rajagopal","1995-05-28","Male","8870279955","Coimbatore");
insert into Patients values (109,"Vasantha","Kannaiyan","1954-10-23","Female","8870279901","Namakkal");
insert into Patients values (110,"Aryan","Balaji","2015-05-01","Male","8870279998","Chennai");
insert into Patients values (111,"Arjun","Balaji","2018-10-12","Male","8870279912","Madurai");
insert into Patients values (112,"Vihaan","Vijay","2020-11-24","Male","8872671901","Tiruchy");
insert into Patients values (113,"Vithun","Vijay","2022-06-03","Male","8870279908","Tiruchy");
insert into Patients values (114,"Aswanth","Sathish","2021-02-19","Male","8870279923","Madurai");
insert into Patients values (115,"Aswanth","Sathish","2021-02-19","Male","8870279923","Madurai");
insert into Patients values (116,"Rajagopal","Ramasamy","1970-09-30","Male","9443392809","Namakkal");
insert into Patients values (117,"Sethuramalingam","Govinthachettiyar","1964-12-01","Male","8854183498","Salem");


insert into Doctors values (1001,"Varun","Dhanagopal","Orthopedist","7520917390","varun@gmail.com");
insert into Doctors values (1002,"Sangeetha","venkadachalam","Pediatrician","7381018375","sangeetha@gmail.com");
insert into Doctors values (1003,"Gomathi","Balaji","Dermatologist","7376201982","gomathi@gmail.com");
insert into Doctors values (1004,"kalaiarasi","Gopal","General Physician","89017902192","kalairasi@gmail.com");
insert into Doctors values (1005,"Sathasivam","Dhanapal","Gynecologist","9989120972","sathasivam@gmail.com");
insert into Doctors values (1006,"Dhanasekar","","Psychiatrist","8988702728","dhanasekar@gmail.com");
insert into Doctors values (1007,"Saranya","Sethu","Gastroenterologist","7190237823","saranya@gmail.com");
insert into Doctors values (1008,"Jamuna","Saravana","Anesthesiologist","6371779981","jamuna@gmail.com");
insert into Doctors values (1009,"Saravana kumar","Vijay","Radiologist","9989120023","skumar@gmail.com");
insert into Doctors values (1010,"Suguna","Dandapani","Urologist","","suguna@gmail.com");
insert into Doctors values (1011,"Pal","","Obstetrician","63410233001","gutman@gmail.com");
insert into Doctors values (1012,"Jayaraman","Rajagopal","Psychiatrist","9733280931","Jayaraman@gmail.com");
insert into Doctors values (1013,"Sharmika","Sathish","Oncologist","8870279982","sharmika@gmail.com");
insert into Doctors values (1014,"Daisy","Prabhu","Urologist","88902266171","daisy@gmail.com");
insert into Doctors values (1015,"Prakesh","Kumar","Podiatrist","7801746271","prakesh@gmail.com");

select * from Doctors;

insert into Admissions values (103,1011,"2024-10-10","2024-10-20","Acute Bronchitis");
insert into Admissions values (114,1008,"2024-12-08","2024-12-15","Pregnancy");
insert into Admissions values (102,1015,"2024-04-28","2024-05-01","3rd Degree Burn");
insert into Admissions values (113,1013,"2024-02-10","2024-02-16","Prostate Cancer");
insert into Admissions values (109,1010,"2024-05-27","2024-06-20","Renal Failure");
insert into Admissions values (101,1012,"2024-09-12","2024-10-09","Appendicitis");
insert into Admissions values (107,1005,"2024-08-11","2024-08-20","Pregnancy");
insert into Admissions values (112,1004,"2024-06-13","2024-06-15","Hypertension");
insert into Admissions values (104,1001,"2024-10-16","2024-10-28","Osteo Arthtitis Knee");
insert into Admissions values (113,1002,"2024-01-23","2024-01-28","Fever");
insert into Admissions values (106,1006,"2024-03-09","2024-03-15","Mental problem");
insert into Admissions values (100,1013,"2024-11-21","2024-11-30","Lung Cancer");
insert into Admissions values (104,1007,"2024-09-10","2024-09-19","Stomach pain");
insert into Admissions values (111,1009,"2024-02-10","2024-02-11","Breast cancer");
insert into Admissions values (110,1008,"2025-01-13","2025-01-13","OP");
insert into Admissions values (111,1005,"2024-08-11","2024-08-20","Pregnancy");
insert into Admissions values (112,1005,"2024-08-11","2024-08-20","Pregnancy");
insert into Admissions values (113,1005,"2024-08-11","2024-08-20","Pregnancy");
select * from Admissions;

insert into Billing values (1,113,20000,"2024-01-28","card");
insert into Billing values (2,104,40000,"2024-09-19","cash");
insert into Billing values (3,111,10000,"2024-02-11","G-pay");
insert into Billing values (4,100,30000,"2024-11-30","credit card");
insert into Billing values (5,106,90000,"2024-03-15","cash");
insert into Billing values (6,113,100000,"2024-01-28","card");
insert into Billing values (7,112,60000,"2024-06-15","G-pay");
insert into Billing values (8,101,90000,"2024-10-09","cash");
insert into Billing values (9,103,20000,"2024-10-20","credit card");
insert into Billing values (10,114,40000,"2024-12-15","cash");
insert into Billing values (11,107,50000,"2024-08-20","card");
insert into Billing values (12,104,100000,"2024-11-25","cash");
insert into Billing values (13,102,120000,"2024-05-01","G-pay");
insert into Billing values (14,105,22000,"2025-01-10","credit card");
insert into Billing values (15,106,237000,"2024-03-15","card");
insert into Billing values (16,114,87900,"2024-12-15","cash");

select * from Billing;

#1. Show first name, last name, and gender of patients whose gender is 'Male'
select FirstName, LastName,Gender From Patients 
where gender="Male";

#2.Show first name of patients that start with the letter 'S'
select FirstName from Patients 
where FirstName like "S%";

#3.Show first name and last name concatinated into one column to show their full name.
select FirstName,LastName,concat("FirstName","","LastName") as FullName
from Patients;

#4.Show all columns for patients who have one of the following patient_ids 103,113,107,110,101
select * from Patients
where PatientId in(103,113,107,110,101);

#5.Show the total number of admissions
select count(*) from Admissions;

#6.Show all the columns from admissions where the patient was admitted and discharged on the same day.
select * from Admissions
where AdmissionDate=DischargeDate;

#7.Show the patient id and the total number of admissions for patient_id 104
select PatientId, count(*) as Total_Admissions from Admissions
where PatientId=104;

#8.Based on the cities that our patients live in, show unique cities.
select Distinct city 
from Patients;

#9.show all columns from patients whose dateofbirth is above 2000
select *,year(Dateofbirth) as Year from Patients
where year(Dateofbirth)>2000;

#10.Show unique birth years from patients and order them by ascending.
select distinct year(Dateofbirth) as Year from Patients
order by year(Dateofbirth) ASC;

#11.Show unique birth years from patients and order them by ascending.
select FirstName from Doctors 
Group by FirstName
Having count(FirstName)=1;

#12.Show patient_id and first_name from patients where their first_name start and ends with 's' 
#and is at least 6 characters long.
select PatientId,FirstName from Patients
where FirstName like "S%a" And length(Firstname)>=6;

#13.Show patient_id, first_name, last_name from patients whos diagnosis is 'Pregnancy'.
#Primary diagnosis is stored in the admissions table.
select p.PatientId,p.FirstName,p.LastName,a.Diagnosis
from Patients as p
join Admissions as a
on p.PatientId=a.PatientId
where a.Diagnosis="Pregnancy"; 

#14.Display every patient's first_name.
#Order the list by the length of each name and then by alphabetically.
select FirstName from Patients
order by Length(FirstName),FirstName ASC;

#15.Count the amount received by cash.
select sum(TotalAmount) as Total from Billing
where PaymentMethod="cash"
group by PaymentMethod;

#16.Show the total amount of male patients and the total amount of female patients in the patients table.
#Display the two results in the same row.
(select count(*) as Male_count from Patients
where Gender="Male")UNION
(select count(*) as female_count from Patients
where Gender="Female");

#17.Show first and last name, diagnosis from admissions which have diagnosis to 
#either 'Pregnancy' or 'Renal Failure'. 
#Show results ordered ascending by diagnosis then by first_name then by last_name.
select p.PatientId,
p.FirstName,
p.LastName,
a.Diagnosis,
b.TotalAmount
from Patients p
join Admissions a
on p.PatientId=a.PatientId
join Billing b
on a.PatientId=B.PatientId
where a.Diagnosis="Pregnancy" or "Renal Failure";

#18.Show patient_id, diagnosis from admissions. 
#Find patients admitted multiple times for the same diagnosis.
select Patientid,Diagnosis from Admissions
group by PatientId, Diagnosis
having count(*)>=1;

#19.Show the city and the total number of patients in the city.
#Order from most to least patients and then by city name ascending.
select city, count(*) as Total from Patients
group by city
order by city desc;

#20.Show first name, last name and role of every person that is either patient or doctor.
#The roles are either "Patient" or "Doctor"
select FirstName,LastName,'Patient' as role from Patients
union all
select FirstName,LastName,'Doctor' as role from Doctors;

#21.Show all patient's first_name, last_name, and birth_date who were born in the 1970s decade. 
#Sort the list starting from the earliest birth_date.
select FirstName,LastName,Dateofbirth from Patients
where year(Dateofbirth) between 1970 and 1979
order by Dateofbirth;

#22.We want to display each patient's full name in a single column. 
#Their last_name in all upper letters must appear first, then first_name in all lower case letters. 
#Separate the last_name and first_name with a comma. 
#Order the list by the first_name in decending order.
select FirstName,LastName,concat(upper(LastName),",",lower(FirstName))
from Patients
order by FirstName desc;

#23.Show the patientid(s), sum of totalamount; 
#where the total sum of its amount is greater than or equal to 40,000.
select PatientId,sum(TotalAmount) as Total from Billing
group by PatientId
having Total>=40000;

#24.Show all columns for patient_id 104's most recent admission_date.
select * from Admissions
where PatientId=104
order by AdmissionDate
Limit 1;

truncate table Admissions;
select * from Admissions;

alter table Admissions
modify AdmissionDate date;

alter table Admissions
modify DischargeDate date;

truncate table Billing;

alter table Billing
modify PaymentDate date;

#25.Show all of the days of the month (1-31) and how many admission_dates occurred on that day.
#Sort by the day with most admissions to least admissions.
select day(AdmissionDate) as Day_Number,
count(*) as number_of_admissions
from Admissions
group by Day_number
order by number_of_admissions desc;

#26.Show Patient information from Patient and Patient_id,Doctor_id, and diagnosis for admissions that match one of the two criteria:
#1. Patientid is an odd number and DoctorId is either 1004,1007 or 1013
#2. DoctorId contains a 2 and the length of PatientId is 3 characters.
select p.PatientId,p.FirstName,p.LastName,p.Phonenumber,
a.DoctorId,a.AdmissionDate,a.DischargeDate,a.Diagnosis
from Patients p
left join Admissions a
on p.PatientId=a.PatientId
where (p.PatientId%2=1 and a.DoctorId in(1004,1007,1013))
or(a.DoctorId like "%1%" and length(p.PatientId=3));

#27.Show first_name, last_name, and the total number of admissions attended for each doctor.
#Every admission has been attended by a doctor.
select d.FirstName, d.LastName, count(*) TotalAdmissions
from Doctors d
join Admissions a
on d.DoctorId=a.DoctorId
group by d.doctorId;

#28.For each doctor, display their id, full name, and the first and last admission date they attended.
select d.DoctorId,concat(d.FirstName," ",d.LastName) as FullName,
min(a.AdmissionDate) as FirstAdmission,
max(a.AdmissionDate) as LastAdmission
from Doctors d
join Admissions a
on d.DoctorId=a.DoctorId
group by d.DoctorId;

#29.For every admission, display the patient's full name, 
#their admission diagnosis, and their doctor's full name who diagnosed their problem.
select concat(p.FirstName," ",p.LastName) as Patient_FullName,
concat(d.FirstName," ",d.LastName) as Doctor_FullName,
a.Diagnosis
from Patients p
join Admissions a
on p.PatientId=a.PatientId
join Doctors d
on a.DoctorId=d.DoctorId;

#30.display the first name, last name and 
#number of duplicate patients based on their first name and last name.
select FirstName,LastName,count(*) as no_of_duplicates
from Patients
Group by Firstname,LastName
having count(*)>1;

#31.Show patient_id, first_name, last_name from patients whose does not have any records in the admissions table. 
#(Their patient_id does not exist in any admissions.patient_id rows.)
select p.PatientId,p.FirstName,p.LastName
from Patients p
left join Admissions a
on p.PatientId=a.PatientId
where a.PatientId is null;

#32.Display a single row with max_visits, min_visits, average_visits where the maximum, minimum and 
#average number of admissions per day is calculated. Average is rounded to 2 decimal places.
select 
max(number_of_visits) as max_visits, 
min(number_of_visits) as min_visits, 
round(avg(number_of_visits),2) as average_visits 
from
(select AdmissionDate, count(*) as number_of_visits
from Admissions 
group by AdmissionDate);

#33.Show patient_id, first_name, last_name, and attending doctor's specialty.
#Show only the patients who has a diagnosis as 'Pregnancy' and the doctor's last name is 'Dhanapal'
select p.PatientId,
p.FirstName,
p.LastName,
d.Speciality,
a.Diagnosis
from Patients p
join Admissions a
on p.PatientId=a.PatientId
join Doctors d
on d.DoctorId=a.DoctorId
where a.Diagnosis="Pregnancy" and d.LastName="Dhanapal";

#34.All patients who have gone through admissions, can see their medical documents on our site. 
#Those patients are given a temporary password after their first admission. 
#Show the patient_id and temp_password.
#The password must be the following, in order:
#1. patient_id  2. the numerical length of patient's last_name  3. year of patient's birth_date
select Distinct p.PatientId,
concat(p.PatientId,Length(p.LastName),year(p.Dateofbirth))as Temp_Password
from Patients p
join Admissions a
on P.PatientId=a.PatientId;

#35.We need a breakdown for the total amount of admissions each doctor has started each year. 
#Show the doctor_id, doctor_full_name, specialty, year, total_admissions for that year.
select d.DoctorId,
concat(d.FirstName," ",d.LastName) as Doctor_FullName,
d.Speciality,
year(a.AdmissionDate) as selected_year,
count(*) as Total_admissions
from Doctors d
left join Admissions a
on d.DoctorId=a.DoctorId
group by 
Doctor_FullName,
selected_year;







