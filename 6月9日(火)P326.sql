SELECT sex,
				SUM(population) AS "全国",
				SUM(CASE WHEN pref_name = '東京都'
										THEN population ELSE 0 END ) AS "東京都",
				SUM(CASE WHEN pref_name = '北海道'
										THEN population ELSE 0 END ) AS "北海道",
				SUM(CASE WHEN pref_name  IN ('北海道','東京都')
										THEN population ELSE 0 END ) AS "東北"
FROM PopTbl2
GROUP BY sex;
								
				