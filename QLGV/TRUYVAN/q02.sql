-- TASK: Q2. Cho biết họ tên của các giáo viên và lương của họ sau khi tăng 10%.
SELECT HOTEN, ROUND(LUONG*1.1)
FROM GIAOVIEN
WHERE PHAI = 'Nữ'