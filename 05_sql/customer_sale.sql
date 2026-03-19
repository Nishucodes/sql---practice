SELECT `customer name` , sum(sales)
FROM `sample - superstore`
GROUP BY `customer name`
HAVING sum(sales)>500;
