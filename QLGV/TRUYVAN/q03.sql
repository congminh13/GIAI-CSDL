-- TASK: Q3. Cho biết mã của các giáo viên có họ tên bắt đầu là “Nguyễn” và lương trên $2000 hoặc, giáo viên là trưởng bộ môn nhận chức sau năm 1995.
SELECT *
FROM GIAOVIEN as g join BOMON as b on b.TRUONGBM = g.MAGV
WHERE (g.HOTEN LIKE 'Nguyễn%' AND g.LUONG > 2000) OR (year(b.NGAYNHANCHUC) > 1995 AND b.TRUONGBM = g.MAGV)