select * from [SupermarketSales ]
---------------------------------------------------------------

select Branch, DATENAME(month,Date) as month , sum(Gross_Income)
from [SupermarketSales ]
group by Branch, DATENAME(month,Date) 
order by Branch asc
---------------------------------------------------------------------

select Branch, count(Customer_type), Product_line
from [SupermarketSales ]
group by Branch, Product_line
---------------------------------------------------------------------

select DATENAME(month,Date) as month, Product_line, branch,SUM(Quantity)
from [SupermarketSales ]
group by branch, Product_line, DATENAME(month,Date)

----------------------------------------------------------------------

select DATENAME(month,Date) as month,branch,Product_line,SUM(Total_with_tax) 
from [SupermarketSales ]
group by Product_line, branch,DATENAME(month,Date)

------------------------------------------------------------------------------

select branch, sum(gross_income)
from [SupermarketSales ]
where DATENAME(month,Date) = 'March'
group by Branch