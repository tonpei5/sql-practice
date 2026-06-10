SELECT key
FROM Greatests
ORDER BY CASE key
							WHEN 'F' THEN 1
							WHEN 'J' THEN 2
							WHEN 'A' THEN 3
							WHEN 'D' THEN 4
							WHEN 'I' THEN 5
							ELSE NULL END;