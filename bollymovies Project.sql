create database movies_bollywoods;
use  movies_bollywoods;
SELECT * FROM movies_bollywoods.movies_sql;

-- Retrieve the names of all the Bollywood movies which are of drama genre in the dataset.
SELECT Movie_Name, Genre FROM movies_bollywoods.movies_sql WHERE Genre = 'drama'; 

-- 2.Retrieve the names of all the Bollywood movies of Amir Khan in the dataset.
SELECT Movie_Name FROM movies_bollywoods.movies_sql WHERE Lead_Star = 'Amir Khan';

-- Retrieve the names of all the Bollywood movies which are directed by RamGopal Verma in the dataset.
Select Movie_Name,Director From movies_bollywoods.movies_sql Where Director Like '%RamGopal Verma%';

-- 4.Retrieve the names of all the Bollywood movies which have been released over more than 1000 number of screens in the dataset.
select Movie_Name,Number_of_Screens from movies_bollywoods.movies_sql where Number_of_Screens>1000;

-- 5.Retrieve the names of all the Bollywood movies which have generated Revenue(INR)more than 700000000 in the dataset.
select Movie_Name,Revenue from movies_bollywoods.movies_sql where Revenue>700000000;

-- 6.Retrieve the names of all the Bollywood movies which have budget less than 1cr in the dataset.
DESCRIBE movies_bollywoods.movies_sql;
select Movie_Name,budget from movies_bollywoods.movies_sql where budget>10000000;

-- 7.Retrieve the names of all the Bollywood movies which are flop in the dataset.
DESCRIBE movies_bollywoods.movies_sql;

SELECT Movie_Name FROM movies_bollywoods.movies_sql WHERE Budget>Revenue ;

-- 8.Retrieve the names and profit of all the Bollywood movies in thedataset.
SELECT * FROM movies_bollywoods.movies_sql;

SELECT Movie_Name,(Revenue - Budget) AS Profit FROM movies_bollywoods.movies_sql WHERE Revenue > Budget;

-- Retrieve the names and loss of all Bollywood movies in the dataset
SELECT Movie_Name,(Budget - Revenue) AS Loss FROM movies_bollywoods.movies_sql WHERE Budget > Revenue;

-- 10. Retrieve the names of all the Bollywood movies which have been released on holidays in the dataset
select Movie_Name,Release_Period from movies_bollywoods.movies_sql where Release_Period='Holiday';

-- 11.Retrieve the names of all the Bollywood movies which have lead star as Akshay Kumar and directed by Priyadarshan in the
select Movie_Name from movies_bollywoods.movies_sql where Lead_Star='Amir Khan' and Director='Priya darshan';

--  12.Retrieve the names of all the Bollywood movies starting with ‘a’ in the dataset.
select Movie_Name from movies_bollywoods.movies_sql where Movie_Name like 'a%';

-- 13. Retrieve the names of all the Bollywood movies ending with ‘a’ in the dataset.
select Movie_Name from movies_bollywoods.movies_sql where Movie_Name like '%a';

-- 14. Retrieve the names of all the Bollywood movies having ‘a’ at second place of the name in the dataset.
select Movie_Name from movies_bollywoods.movies_sql where Movie_Name like '_a%';

-- 15. Retrieve the names of all the Bollywood movies having music of amit trivedi thedataset
select Movie_Name,Music_Director from movies_bollywoods.movies_sql where Music_Director='amit trivedi';

-- 16. Retrieve the names of all the comedy movies of Akshay Kumar in the dataset.
select Movie_Name,Genre from movies_bollywoods.movies_sql where Lead_Star='Akshay Kumar' and Genre='comedy';

-- 17. Retrieve the names of movies and star name starring khan in the dataset.
select Movie_Name,Lead_Star from movies_bollywoods.movies_sql where Lead_Star like'%khan%';

-- 18. Retrieve all the information of movies race and race2 in the dataset
select * from movies_bollywoods.movies_sql where Movie_Name in ('Race','Race 2');

-- 19. Retrieve the names of all the thriller Bollywood movies in the dataset.
select  Movie_Name,Genre from movies_bollywoods.movies_sql where Genre='thriller';

-- 20. Retrieve the names and budget of all the Bollywood movies according to the highest budget to lowest budget in the dataset.
select  Movie_Name,budget from movies_bollywoods.movies_sql order by budget desc ;

-- 21. Retrieve the names and budget of top 5 Bollywood movies with highest budget in the dataset.
select  Movie_Name,budget from movies_bollywoods.movies_sql order by budget desc limit 5;

-- 22. Retrieve the names of top 10 Bollywood movies with highest revenue generation in the dataset.
select  Movie_Name,revenue from movies_bollywoods.movies_sql order by revenue desc limit 10;

-- 23. Retrieve the names of top 5 movies of salman khan in the dataset.
select  Movie_Name,revenue,Lead_Star from movies_bollywoods.movies_sql where Lead_Star like'%salman khan%' order by revenue desc limit 5;

-- 24. Retrieve the names of top 5 floped movies in the dataset.
select  Movie_Name,revenue from movies_bollywoods.movies_sql Where Budget > Revenue Order by Revenue asc limit 5;

-- 25. Retrieve the names of top 5 hit movies in the dataset.
select  Movie_Name,revenue from movies_bollywoods.movies_sql Where Budget < Revenue Order by Revenue desc limit 5;

-- 26. Which is the second movie released on maximum screens.
select  Movie_Name,number_of_screens from movies_bollywoods.movies_sql order by number_of_screens desc limit 1,1;

-- 27. Which is the 10th movies with highest budget.
select  Movie_Name,budget from movies_bollywoods.movies_sql order by budget desc limit 10;

-- 28. Which is the 2nd movie of Amitabh Bachchan with highest budget.
select  Movie_Name,Lead_Star,Budget from movies_bollywoods.movies_sql Where Lead_Star = 'Amitabh Bachchan' order by Budget desc limit 1,1;

-- 29. Which are the flopped movies of Akshay Kumar
select Movie_Name,Lead_Star,Budget > Revenue from movies_bollywoods.movies_sql where Lead_Star like'%Akshay Kumar%' AND Budget > Revenue order by Revenue;

-- 30. With which director Sharukh Khan have given the biggest hit movie 
select Movie_Name,Director,Budget < Revenue from movies_bollywoods.movies_sql where Lead_Star like '%Shahrukh Khan%' AND Budget < Revenue order by Revenue desc;
