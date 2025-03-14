create database healthcare_care;
use healthcare_data;
Select * from healthcare_data.healthcare;


-- 1. Retrieve the names of all patients in the database. 
Select Name from healthcare_data.healthcare;

-- 2. List the unique medical conditions present in the dataset. 
Describe healthcare_data.healthcare;
SELECT DISTINCT Medical_Condition FROM healthcare_data.healthcare;

-- 3. Find the total number of doctors in the healthcare system. 
SELECT COUNT(DISTINCT Doctor) AS Total_Doctors FROM healthcare_data.healthcare;
 
-- 4. Retrieve the details of all female patients. 
Select * From healthcare_data.healthcare where gender like '%female%';

-- 5. what is the average age of patients in the database.
Select avg(Age) from healthcare_data.healthcare;

-- 6. Identify the patients who have more than one medical condition. 
Select Name,COUNT(Medical_Condition) from healthcare_data.healthcare group by Name having COUNT(Medical_Condition) > 1;

-- 7. List the names of all doctors. 
Select Doctor from healthcare_data.healthcare;

-- 8.Identify the most common medical condition among patients.
Select Medical_Condition from healthcare_data.healthcare group by Medical_Condition order by count(*) desc limit 1;

-- 9.Find the patients who are older than 60 years and have diabetes. 
Select Name,Age,Medical_Condition from healthcare_data.healthcare where Age > 60 and Medical_Condition like '%Diabetes%';

-- 10.Calculate the total revenue generated by the healthcare system. 
Select SUM(Billing_Amount) from healthcare_data.healthcare;

-- 11.Find the doctor with the oldest patient.
Select Doctor,Age from healthcare_data.healthcare where Age = (Select MAX(Age) from healthcare_data.healthcare);

-- 12.Calculate the average duration of medical visits.
Select avg(duration) from healthcare_data.healthcare;

-- 13.Give the names of patients whose name starts with A. 
Select Name from healthcare_data.healthcare where Name like 'A%';

-- 14.How many male and female patients are there in dataset.
Select Gender, COUNT(*) from healthcare_data.healthcare group by Gender;
 
-- 15.how many patients are normal. 
Select COUNT(*) from healthcare_data.healthcare where Medical_Condition like  '%normal%';

-- 16.how many patients are abnormal or Inconclusive.
Select test_results from healthcare_data.healthcare where test_results in ('abnormal', 'inconclusive');

-- 17.how many patients of blood group AB+ are there of age above 52. 
Select Name,Age,Blood_Type from healthcare_data.healthcare where Blood_Type = 'AB+' and Age > 52;

-- 18. how many patients have paid the bill above 24890. 
Select Name,Billing_Amount from healthcare_data.healthcare where Billing_Amount > 24890;

-- 19. what are the names of patients having Asthma. 
Select Name,Medical_Condition from healthcare_data.healthcare where Medical_Condition = 'Asthma';

-- 20. how many patients have cancer. 
Select Count(*) from healthcare_data.healthcare where Medical_Condition = 'Cancer';

-- 21. what are the names and blood groups of patients admitted to room no. 292. 
Select Name, Blood_Type from healthcare_data.healthcare where Room_Number = 292;

-- 22. how many males have Arthritis.
Select COUNT(*) from healthcare_data.healthcare where Gender = 'Male'and Medical_Condition = 'Arthritis';

-- 23. How many patients were admitted to Harris and Sons hospital. 
Select COUNT(*) from healthcare_data.healthcare where Hospital = 'Harris and Sons';

-- 24. what are the names of patients whose Insurance Provider are Cigna. 
Select Name,Insurance_Provider from healthcare_data.healthcare where Insurance_Provider = 'Cigna';

-- 25. Name the Medical Condition having patients whose ages is greater than average age
Select distinct Medical_Condition from healthcare_data.healthcare where Age > (select Avg(Age) from healthcare_data.healthcare);