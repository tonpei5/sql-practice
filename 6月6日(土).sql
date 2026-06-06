--xとyの最大値
SELECT key,
					CASE WHEN x < y THEN y
								ELSE x END AS Greatest
FROM Greatests;