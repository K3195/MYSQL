create database titanic_data;
use  titanic_data;

-- 1. Select all columns for all passengers in the Titanic dataset. 
select * from titanic_data.titanic ;

-- 2. Display the number of passengers in each class (1st, 2nd, 3rd).
select pclass ,count(*) from titanic_data.titanic group by Pclass;

-- 3. Find the number of male and female passengers. 
select sex ,count(*) from  titanic_data.titanic group by sex;

-- 4. Display the names of passengers who survived.
select name from titanic_data.titanic where Survived ='Survived';

-- 5. Find the average age of passengers. 
select avg(Age) from titanic_data.titanic;

-- 6. List the names and ages of passengers who were younger than 18. 
select name , age from titanic_data.titanic where age <18;

-- 7. Display the number of passengers in each embarkation port (C, Q, S).
select count(*) from titanic_data.titanic  where Embarked in ('C','Q','S');

-- 8. Find the highest fare paid by any passenger.
select * from titanic_data.titanic  order by fare desc limit 1;
 select max(fare) from titanic_data.titanic ;
 
-- 9. List the average age of passengers for each class. 
select pclass , avg(age) from titanic_data.titanic group by pclass ;

-- 10. Display the passenger names and ages for those who survived and were in 1st class.
select name , age from titanic_data.titanic where Survived ='Survived' and pclass =1;
 
-- 11. Find the number of passengers who paid more than 50 for their ticket.
select count(*) from titanic_data.titanic where fare >50;

-- 12. List the names of passengers who did not survive and were in 3rd class. 
select name from titanic_data.titanic where  Survived = 0 and pclass =3;
select name from titanic_data.titanic where  Survived = 'Died' and pclass =3;

-- 13. Find the number of passengers with missing values in the "Age" column. 
select count(*) from titanic_data.titanic where age IS NULL ;
SELECT COUNT(*)FROM titanic_data.titanic where age is  NULL;


-- 14. Display the passenger names and ages for those who embarked at port 'S' and survived.
select name , age from titanic_data.titanic where Embarked ='S' and survived='Survived';
 
-- 15. Calculate the total number of passengers on board.
select count(*) from titanic_data.titanic ;

-- 16. List the average fare for each class. 
select pclass , avg(fare) from titanic_data.titanic group by pclass ;

-- 17. Display the passenger names and ages for those with a known age and a fare greater than 100. 
select name , age from titanic_data.titanic where age is NOT NULL and fare >100;

-- 18. Find the percentage of passengers who survived. 
SELECT (SUM(CASE
 WHEN Survived = 'Survived'
 THEN 1 ELSE 0 END)  100/ COUNT())
FROM titanic_data.titanic;

-- 19. List the names of passengers who were in 2nd class and had a fare less than 20. 
select name , pclass from titanic_data.titanic where pclass =2 and fare <20;

-- 20. Display the passenger names and ages for those who did not survive and were in 1st class. 
select name , age from titanic_data.titanic where survived ='Died' and pclass =1;

-- 21. Find the number of passengers for each combination of class and gender. 
select pclass , sex , count(*) from titanic_data.titanic group by pclass , sex;

-- 22. List the names of passengers who survived and were in 3rd class with an age less than 20. 
SELECT Name FROM titanic_data.titanic WHERE Survived = 'Survived' AND Pclass = 3 AND Age < 20;

-- 23. Display the passenger names for those with the name starting with 'Mr.' 
select name from titanic_data.titanic where name like '%Mr.%';

-- 24. Find the average age of male and female passengers. 
select avg(age) , sex from titanic_data.titanic group by sex ;

-- 25. List the names of passengers who paid the highest fare. 
select name from titanic_data.titanic order by fare desc limit 1;

-- 26. Find the number of passengers for each embarkation port and class. 
select Embarked , pclass , count(*) from titanic_data.titanic group by Embarked , pclass ;

-- 27. Display the passenger names and ages for those who survived and paid more than 200 for their ticket.
select name , age from titanic_data.titanic where survived = 'Survived' and Fare >200 ;

-- 28. Find the average age of passengers who survived and those who did not.
select avg(age) , Survived from  titanic_data.titanic group by Survived ;

-- 29. List the names of passengers who were in 1st class and had an age greater than 50. 
select name from titanic_data.titanic where pclass = 1 and age >50;

-- 30. Display the passenger names for those with the name ending with 'sson'
select name from titanic_data.titanic where name like '%sson';




