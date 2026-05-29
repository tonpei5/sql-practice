SELECT CASE pref_name
WHEN '東京都' THEN '関東'
WHEN '神奈川県' THEN '関東'
WHEN '埼玉県' THEN '関東'
WHEN '千葉県' THEN '関東'
WHEN '茨城県' THEN '関東'
WHEN '栃木県' THEN '関東'
WHEN '群馬県' THEN '関東'
ELSE 'その他' END AS district,
sum(population)
FROM PopTbl
GROUP BY district;