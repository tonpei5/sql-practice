-- CASE式で主キーを入れ替える
UPDATE SomeTable
SET p_key = CASE WHEN p_key = 'c'
									THEN  'd'
									WHEN p_key = 'd'
									THEN 'c'
						ELSE p_key END
WHERE p_key IN ('c', 'd');