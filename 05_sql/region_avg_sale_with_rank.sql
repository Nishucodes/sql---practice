--Query to calculate average sales per region and rank them

SELECT region , avg(sales) as avg_sale
RANK() OVER ( ORDER BY avg(sales) DESC) as rnk
FROM `sample - superstore`
GROUP BY region;
             
             
