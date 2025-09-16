-- TASK: Q11. Tìm họ tên của từng giáo viên và người phụ trách chuyên môn trực tiếp của giáo viên đó.
SELECT g1.HOTEN as GIAOVIEN, g2.HOTEN as GVQLCM
FROM GIAOVIEN as g1 join GIAOVIEN as g2 on g1.GVQLCM = g2.MAGV