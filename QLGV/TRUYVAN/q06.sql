-- TASK: Q6. Với mỗi giáo viên, hãy cho biết thông tin của bộ môn mà họ đang làm việc.
SELECT *
FROM GIAOVIEN as g join BOMON as b on g.MABM = b.MABM