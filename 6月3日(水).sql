--条件２：クラブを掛け持ちしている学生を選択
SELECT student_no, club_id as main_club
FROM StudentClub
WHERE main_club_flag = 'Y' ;