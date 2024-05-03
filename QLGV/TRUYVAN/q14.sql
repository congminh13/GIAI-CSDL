-- TASK: Q14. Cho biết tên người chủ nhiệm đề tài của những đề tài thuộc chủ đề Quản lý giáo dục.
SELECT distinct g.HOTEN
FROM DETAI as d join GIAOVIEN as g on g.MAGV = d.GVCNDT and d.MACD = 'QLGD'