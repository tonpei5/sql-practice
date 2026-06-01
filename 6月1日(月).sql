--条件１：１つのクラブに専念している学生を選択
SELECT student_no, MAX(club_id) AS main_club
FROM StudentClub
GROUP BY student_no
HAVING COUNT(*) = 1;