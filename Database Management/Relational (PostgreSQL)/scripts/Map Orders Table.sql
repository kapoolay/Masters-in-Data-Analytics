INSERT INTO orders (
	OrderID
	,OrderDate
	,ShipDate
	,OrderPriority
	,SalesChannel
	,CountryID
	)
SELECT DISTINCT
	OrderID
	,TO_DATE(OrderDate, 'MM/DD/YY')
	,TO_DATE(ShipDate, 'MM/DD/YY')
	,OrderPriority
	,SalesChannel
	,(SELECT CountryID FROM Countries
		WHERE CountryName = sr.country)
FROM salesraw sr
;