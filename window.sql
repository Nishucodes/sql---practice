--Problem:Find customer whose sales exceed regional average
--Approch:Window Function + Subquery
--Author:Nishu
--Date:2026-03-08

SELECT region , 
	   `customer name` , 
       total_sales ,  region_avg_sales
  FROM
		(SELECT region ,
                `customer name`, 
                SUM(sales) as total_sales,
                AVG(SUM(sales) ) OVER(partition by region) as region_avg_sales
		 FROM `sample - superstore`
		 GROUP BY region,`customer name`
         ) as temp
		 WHERE  total_sales> region_avg_sales;
                 