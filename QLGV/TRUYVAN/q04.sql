-- TASK: Q4. Cho biết tên những giáo viên khoa Công nghệ thông tin.
SELECT HOTEN
FROM GIAOVIEN as g join BOMON as b on g.MABM = b.MABM
WHERE b.MAKHOA = 'CNTT'