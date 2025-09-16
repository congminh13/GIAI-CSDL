-- TASK: Q10. Với những đề tài thuộc cấp quản lý “Thành phố”, cho biết mã đề tài, đề tài thuộc về chủ đề nào, họ tên người chủ nghiệm đề tài cùng với ngày sinh và địa chỉ của người ấy.
-- cap quan ly thanh pho -> nha nuoc
SELECT d.*, C.TENCD, g.HOTEN, g.NGSINH, g.DIACHI
FROM DETAI as d join CHUDE as c on d.MACD = c.MACD join GIAOVIEN as g on g.MAGV = d.GVCNDT
WHERE d.CAPQL = 'Nhà nước'