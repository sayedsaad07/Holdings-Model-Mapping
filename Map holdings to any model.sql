SELECT * FROM Holding
SELECT * FROM Model
DELETE FROM  [Order]
INSERT INTO [ORDER] (Name, Amount , OperationType)
Select M.Name , ((M.Percentage/100 * 1000) - 
				 CASE WHEN H.Amount is NULL THEN 0 ELSE H.Amount END) 
			  , CASE WHEN ((M.Percentage/100 * 1000) - 
				 CASE WHEN H.Amount is NULL THEN 0 ELSE H.Amount END) > 0
				 THEN 'BUY'
				 ELSE 'SELL'
				 END
from Model M
LEFT JOIN Holding H ON H.Name = M.Name
UNION
SELECT H.Name , -1 * H.Amount , 'SELL' 
from Holding H
WHERE H.Name NOT IN (Select Name FROM Model )

Select Name, Amount , OperationType from [Order]