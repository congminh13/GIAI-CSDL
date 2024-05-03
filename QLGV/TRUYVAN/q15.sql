-- TASK: Q15. Cho biết tên các công việc của đề tài HTTT quản lý các trường ĐH có thời gian bắt đầu trong tháng 3/2008.
-- 3/2008 -> 3/2009
SELECT c.TENCV
FROM DETAI as d join CONGVIEC as c on d.MADT = c.MADT and d.TENDT = 'HTTT quản lý các trường ÐH' and year(c.NGAYBD) = 2009 and month(c.NGAYBD) = 3