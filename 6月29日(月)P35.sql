SELECT sample_date AS cur_date,
					load_val AS cur_load,
					MIN(sample_date)
						OVER (ORDER BY sample_date ASC
										RANGE BETWEEN interval '1' day PRECEDING
														AND  interval '1' day PRECEDING
									) AS day1_before,
					MIN(load_val)
						OVER (ORDER BY sample_date ASC
										RANGE BETWEEN interval '1' day PRECEDING
														AND  interval '1' day PRECEDING
									) AS load_day1_before
FROM sample_date;
