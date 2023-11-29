select *
from HumanologicProjects..Sheet1$_20191002_items

select category, count(name) as jumlah, avg(price) as averagePrice, avg(averageRating) as totalRatings, sum(totalReviews) as totalReviews
from HumanologicProjects..Sheet1$_20191002_items
group by category
delete from HumanologicProjects..Sheet1$_20191002_items where category = 'No Brand' and category = 'China OEM'

select category, count(name) as jumlah
from HumanologicProjects..Sheet1$_20191002_items
group by category
delete from HumanologicProjects..Sheet1$_20191002_items where category = 'No Brand' and category = 'China OEM'

select top 20 brandName, count(name) as jumlah, avg(price) as averagePrice, avg(averageRating) as totalRatings, sum(totalReviews) as totalReviews
from HumanologicProjects..Sheet1$_20191002_items
group by brandName
order by jumlah desc
delete from HumanologicProjects..Sheet1$_20191002_items where brandName = 'No Brand'

select category, brandName, count(category) as totalsales, sum(totalReviews) as totalReviews, avg(averageRating) as averageRating, avg(price) as averagePrice
from HumanologicProjects..Sheet1$_20191002_items
where category = 'beli-smart-tv'
group by category, brandName
order by totalsales desc

select category, brandName, count(category) as totalsales, sum(totalReviews) as totalReviews, avg(averageRating) as averageRating, avg(price) as averagePrice
from HumanologicProjects..Sheet1$_20191002_items
where category = 'beli-laptop'
group by category, brandName
order by totalsales desc

select category, brandName, count(category) as totalsales, sum(totalReviews) as totalReviews, avg(averageRating) as averageRating, avg(price) as averagePrice
from HumanologicProjects..Sheet1$_20191002_items
where category = 'beli-harddisk-eksternal'
group by category, brandName
order by totalsales desc

select category, brandName, count(category) as totalsales, sum(totalReviews) as totalReviews, avg(averageRating) as averageRating, avg(price) as averagePrice
from HumanologicProjects..Sheet1$_20191002_items
where category = 'jual-flash-drives'
group by category, brandName
order by totalsales desc

select category, brandName, count(category) as totalsales, sum(totalReviews) as totalReviews, avg(averageRating) as averageRating, avg(price) as averagePrice
from HumanologicProjects..Sheet1$_20191002_items
where category = 'shop-televisi-digital'
group by category, brandName
order by totalsales desc