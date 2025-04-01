-- Monthly Sales Volume by Item Type (Last 12 Months: 2016-2017))
SELECT 
	TO_CHAR(orders.orderdate, 'YYYY-MM') AS Month
	,itemtypes.itemtypename
	,SUM(orderdetails.unitssold)
FROM
	orderdetails
JOIN 
	orders ON orderdetails.orderid = orders.orderid
Join
	itemtypes ON orderdetails.itemtypeid = itemtypes.itemtypeid
WHERE
	orders.orderdate BETWEEN '2016-01-01' AND '2017-01-01'
GROUP BY
	TO_CHAR(orders.orderdate, 'YYYY-MM')
	,itemtypes.itemtypename
ORDER BY
	Month
	,SUM(orderdetails.unitssold) DESC
;
