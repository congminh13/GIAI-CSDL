-- TASK: Q7. Cho biết tên đề tài và giáo viên chủ nhiệm đề tài.
SELECT TENDT, HOTEN
FROM DETAI as d join GIAOVIEN as g on d.GVCNDT = g.MAGV