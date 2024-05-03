-- TASK: Q9. Cho biết các giáo viên của bộ môn “Vi sinh” có tham gia đề tài 006.
SELECT DISTINCT g.*
FROM THAMGIADT as t join GIAOVIEN as g on g.MAGV = t.MAGV
WHERE (t.MADT = '006' and g.MABM = 'VS')