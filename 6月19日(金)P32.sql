SELECT sample_date AS cur_date,
					load_val AS cur_load,
					MIN(sample_date)
							OVER (ORDER BY sample_date ASC
										ROWS BETWEEN 1 PRECEDING AND 1 PRECEDING) AS latest_date,
					MIN(load_val)
							OVER (ORDER BY sample_date ASC
										ROWS BETWEEN 1 PRECEDING AND 1 PRECEDING) AS latest_load
FROM sample_date;