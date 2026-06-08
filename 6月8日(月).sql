--　行待ちに変換してMAX関数
SELECT key, MAX(col) AS greatest 
FROM (SELECT key, x AS col FROM Greatests
				UNION ALL
				SELECT key, y AS col FROM Greatests
				UNION ALL
				SELECT key, z AS col FROM Greatests) TMP
GROUP BY key;