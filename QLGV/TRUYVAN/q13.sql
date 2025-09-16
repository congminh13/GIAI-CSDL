-- TASK: Q13. Cho biết tên giáo viên là trưởng bộ môn Hệ thống thông tin.
SELECT g.HOTEN
FROM BOMON as b join GIAOVIEN as g on b.TENBM = 'Hệ Thống Thông Tin' and g.MAGV = b.TRUONGBM