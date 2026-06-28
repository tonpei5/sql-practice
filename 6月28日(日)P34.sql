--MINと同じ
SELECT sample_date AS cur_date,
					load_val AS cur_load,
					MAX(sample_date) OVER W AS next_date,
					MAX(load_val) OVER W AS next_load
FROM sample_date
WINDOW W AS (ORDER BY sample_date ASC
										ROWS BETWEEN 1 FOLLOWING AND 1 FOLLOWING);