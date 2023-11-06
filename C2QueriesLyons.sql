/* Jaired Lyons, 8:00 AM */
/* Query 1 */
SELECT CompanyName, SUM(ItemCost) AS Total_Paid
FROM ITEM
GROUP BY CompanyName;

/* Query 2 */
SELECT ItemDescription, SUM(ItemCost) AS Total_Paid
FROM ITEM
GROUP BY ItemDescription;

/* Query 3 */
SELECT Monthname(SaleDate), SUM(Total) AS Revenue
FROM SALE
GROUP BY MonthName(SaleDate);

/* Query 4 */
SELECT LastName, FirstName, EmailAddress, Phone
FROM CUSTOMER
WHERE CustomerID IN
	(SELECT CustomerID
	FROM SALE
	WHERE Total > 1000)
ORDER By LastName, FirstName;

/* Query 5 */
SELECT CUSTOMER.CustomerID, LastName, FirstName, SUM(Total) AS Revenue
FROM CUSTOMER Join SALE
WHERE CUSTOMER.CustomerID = SALE.CustomerID
GROUP BY LastName, FirstName, CUSTOMER.CustomerID
HAVING Revenue > 1000
ORDER BY Revenue;

/* Query 6 */
SELECT ItemDescription, SUM(SALE_ITEM.ItemPrice)
FROM ITEM JOIN SALE_ITEM
WHERE ITEM.ItemID = SALE_ITEM.ItemID
GROUP BY ItemDescription
HAVING ItemDescription LIKE '%chair%';

/* Query 9 */
SELECT ItemDescription, SALE_ITEM.ItemPrice
FROM ITEM LEFT OUTER JOIN SALE_ITEM
ON ITEM.ItemID = SALE_ITEM.ItemID
ORDER BY SALE_ITEM.ItemPrice Desc;