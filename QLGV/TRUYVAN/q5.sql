-- TASK: Q5. Cho biết thông tin của bộ môn cùng thông tin giảng viên làm trưởng bộ môn đó.
SELECT *
FROM BOMON as b join GIAOVIEN as g on b.TRUONGBM = g.MAGV