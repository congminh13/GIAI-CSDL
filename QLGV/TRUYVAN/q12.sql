-- TASK: Q12. Tìm họ tên của những giáo viên được “Nguyễn Thanh Tùng” phụ trách trực tiếp.
-- Nguyễn Thanh Tùng -> Nguyễn An Trung
SELECT g1.HOTEN as GIAOVIEN, g2.HOTEN as GVQLCM
FROM GIAOVIEN as g1 join GIAOVIEN as g2 on g1.GVQLCM = g2.MAGV
WHERE g2.HOTEN = 'Nguyễn An Trung'