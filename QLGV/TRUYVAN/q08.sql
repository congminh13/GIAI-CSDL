-- TASK: Q8. Với mỗi khoa cho biết thông tin trưởng khoa.
SELECT g.*
FROM KHOA as k join GIAOVIEN as g on k.TRUONGKHOA = g.MAGV