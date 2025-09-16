-- TASK: Q17. Cho các công việc bắt đầu trong khoảng từ 01/01/2007 đến 01/08/2007.
SELECT *
FROM CONGVIEC
WHERE NGAYBD >= '2007-01-01' AND NGAYBD <= '2007-08-01';json