use genzdataset;
show tables;
select*from learning_aspirations;
select * from manager_aspirations;
select * from mission_aspirations;
select * from personalized_info;

-- solution 1
SELECT count(*) as male_respodents
FROM PERSONALIZED_INFO
where GENDER like "MALE%"  AND currentcountry= "India";

-- solution 2
SELECT count(*) as female_respodents
FROM PERSONALIZED_INFO
where GENDER like "FEMALE%"  AND currentcountry= "India";

-- solution 3
select COUNT(*)AS GENZ_aspirants
 from personalized_info as p 
inner join learning_aspirations as l
on p.responseID=l.responseID
where p.currentcountry="India" and CareerInfluenceFactor="my parents" ;

-- solution 4
select COUNT(*)AS female_GENZ_aspirants
from personalized_info as p 
inner join learning_aspirations as l
on p.responseID=l.responseID
where p.currentcountry="India" and CareerInfluenceFactor="my parents" and p.gender like "female%";


-- solution 5
select COUNT(*)AS male_GENZ_aspirants
from personalized_info as p 
inner join learning_aspirations as l
on p.responseID=l.responseID
where p.currentcountry="India" and CareerInfluenceFactor="my parents" and p.gender like "male%";


-- solution 6
select 
count(case when p.gender like "female%" then 1 end) as female_aspirants,
count(case when p.gender like "male%" then 1 end) as male_aspirants
from personalized_info as p 
inner join learning_aspirations as l
on p.responseID=l.responseID
where l.careerinfluencefactor="my parents" and p.currentcountry="india";

-- solution 7
select 
count(case when l.careerinfluencefactor like "social%" then 1 end) as media,
count(case when l.careerinfluencefactor like "influencers%" then 1 end) as influencers
from personalized_info as p 
inner join learning_aspirations as l
on p.responseID=l.responseID
where p.currentcountry="india";

-- solution 8
select careerinfluencefactor, 
count(case when p.gender like "female%" then 1 end) as female_aspirants,
count(case when p.gender like "male%" then 1 end) as male_aspirants
from personalized_info as p 
inner join learning_aspirations as l
on p.responseID=l.responseID
where p.currentcountry="india"
group by l.careerinfluencefactor
limit 2 offset 1;

-- solution 9 
select count(*)as GENZ_aspirants
from learning_aspirations
where highereducationabroad like "yes%"
and careerinfluencefactor like "social%";


-- solution 10 
select count(*)as GENZ_aspirants
from learning_aspirations
where highereducationabroad like "yes%"
and careerinfluencefactor like "%circle%";













