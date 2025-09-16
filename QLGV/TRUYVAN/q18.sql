-- TASK: Q18. Cho biết họ tên các giáo viên cùng bộ môn với giáo viên “Trần Trà Hương”.
SELECT DISTINCT GV.HOTEN
FROM GIAOVIEN AS GV
JOIN BOMON AS BM ON GV.MABM = BM.MABM
WHERE BM.MABM IN (SELECT MABM FROM GIAOVIEN WHERE HOTEN = N'Trần Trà Huong');
