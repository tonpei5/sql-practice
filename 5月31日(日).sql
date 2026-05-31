--デーブルのマッチング：IN述語の利用
SELECT course_name,
					CASE WHEN course_id IN
												(SELECT course_id FROM OpenCourses
												WHERE open_month = 1 ) THEN '○'
								ELSE '×' END AS "1月",
					CASE WHEN course_id IN
												(SELECT course_id FROM OpenCourses
												WHERE open_month = 2 ) THEN '○'
								ELSE '×' END AS "2月",
					CASE WHEN course_id IN
												(SELECT course_id FROM OpenCourses
												WHERE open_month = 3 ) THEN '○'
								ELSE '×' END AS "3月"
	FROM CourseMaster;
		
--テーブルのマッチング：EXISTS述語の利用
SELECT CM.course_name,
					CASE WHEN EXISTS
												(SELECT course_id FROM OpenCourses OC
												WHERE open_month = 1
													AND OC.course_id = CM.course_id) THEN '○'
								ELSE '×' END AS "1月",
					CASE WHEN EXISTS
												(SELECT course_id FROM OpenCourses OC
												WHERE open_month = 2
													AND OC.course_id = CM.course_id) THEN '○'
								ELSE '×' END AS "2月",
					CASE WHEN EXISTS
												(SELECT course_id FROM OpenCourses OC
												WHERE open_month = 3
													AND OC.course_id = CM.course_id) THEN '○'
								ELSE '×' END AS "3月"
		FROM CourseMaster CM;