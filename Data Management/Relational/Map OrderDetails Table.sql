INSERT INTO orderdetails (
	OrderID
	,ItemTypeID
	,UnitsSold
	,UnitPrice
	,UnitCost
	,TotalRevenue
	,TotalCost
	,TotalProfit
)
SELECT 
	sr.OrderID
	,(SELECT ItemTypeID FROM ItemTypes WHERE ItemTypeName = sr.itemtype)
	,sr.UnitsSold
	,sr.UnitPrice
	,sr.UnitCost
	,sr.TotalRevenue
	,sr.TotalCost
	,sr.TotalProfit
FROM salesraw sr