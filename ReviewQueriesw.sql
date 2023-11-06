SELECT SKU_Description, Department
FROM SKU_DATA
WHERE Department = 'Climbing';

SELECT *
FROM SKU_DATA
WHERE Department = 'Water Sports'
AND Buyer = 'Nancy Meyers';

SELECT *
FROM SKU_DATA
WHERE Buyer LIKE 'Pete%';

SELECT SUM(ExtendedPrice) AS EPSUM, MIN(ExtendedPrice) AS EPMIN, MAX(ExtendedPrice) AS EPMAX, AVG(ExtendedPrice) AS EPAVG
FROM ORDER_ITEM;

SELECT OrderNumber, SKU, (Quantity * Price) AS EP
FROM ORDER_ITEM;


SELECT WarehouseID, Sum(QuantityonHand) AS QuantbyDept
FROM INVENTORY
GROUP BY WarehouseID;

SELECT SKU, SKU_Description, WAREHOUSE.WarehouseID
FROM INVENTORY JOIN WAREHOUSE
ON INVENTORY.WarehouseID = WAREHOUSE.WarehouseID
WHERE Manager = 'Lucille Smith';

#STUDENT (StudentID, FirstName, LastName, DateEnrolled, Dorm, RoomType)
#STUDENTMAJORS (StudentID, Major(s))
#STUDENTCLUB(StudentID, ClubID)
#CLUBS (ClubID, ClubCost)
#ROOMING (RTID, RoomType, RoomCost)

