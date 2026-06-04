SELECT student_no,
					CASE WHEN COUNT(*) = 1 --1つのクラブに専念する学生の場合
								THEN MAX(club_id)
					ELSE MAX(CASE WHEN main_club_flag = "Y"
								THEN club_id
					ELSE NULL END) END AS main_club
FROM StudentClub
GROUP BY student_no;