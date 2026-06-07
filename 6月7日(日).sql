--xとyとzの最大値
SELECT key,
					CASE WHEN CASE WHEN x < y THEN y ELSE x END < z
								THEN z
								ELSE CASE WHEN x < y THEN y  ELSE x END
					END AS Greatest
FROM Greatests;