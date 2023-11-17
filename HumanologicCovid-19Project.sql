select *
from HumanologicProjects..Project2

select *
from HumanologicProjects..Project1

select Nation, Population, TotalCases, TotalTests, TotalRecovered, [Serious,Critical], TotalDeaths
from HumanologicProjects..Project2

select Nation, Date
from HumanologicProjects..Project1
where Date is not null

select p1.Nation, date, Population, TotalCases, TotalTests, TotalRecovered, [Serious,Critical], TotalDeaths
from HumanologicProjects..Project1 p1
join HumanologicProjects..Project2 p2
	on p1.Nation = p2.Nation 
where date is not null
order by Nation, Date, TotalCases desc

select p1.Nation, date, Population, TotalCases, TotalTests, TotalRecovered, [Serious,Critical], TotalDeaths
from HumanologicProjects..Project1 p1
join HumanologicProjects..Project2 p2
	on p1.Nation = p2.Nation 
where p1.date = '1/22/2020' and date is not null
order by TotalCases desc, Nation

Select p1.Nation, date, (TotalDeaths/Population)*100 as DeathPercentage
from HumanologicProjects..Project1 p1
join HumanologicProjects..Project2 p2
	on p1.Nation = p2.Nation 
where p1.date = '1/22/2020' and date is not null and TotalDeaths is not null
Order by DeathPercentage asc

Select top 10 p1.Nation, date, (TotalCases/Population)*100 as TotalCasePercentages
from HumanologicProjects..Project1 p1
left join HumanologicProjects..Project2 p2
	on p1.Nation = p2.Nation 
where p1.date = '1/22/2020' and date is not null
Order by TotalCasePercentages desc

Select p1.Nation, date, (TotalCases/Population)*100 as TotalCasePercentage, (TotalRecovered/Population)*100 as TotalRecoveredPercentage, (TotalDeaths/Population)*100 as TotalDeathPercentage
from HumanologicProjects..Project1 p1
left join HumanologicProjects..Project2 p2
	on p1.Nation = p2.Nation 
where p1.nation = 'Indonesia' and date = '6/18/2020' and date is not null