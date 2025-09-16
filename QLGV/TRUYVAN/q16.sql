-- TASK: Q16. Cho biết tên giáo viên và tên người quản lý chuyên môn của giáo viên đó.
SELECT g1.HOTEN, g2.HOTEN
FROM GIAOVIEN as g1 join GIAOVIEN as g2 where g1.MAGV = g2.GVQLCM