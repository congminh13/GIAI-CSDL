-- TASK: B. Nhập dữ liệu tương ứng với mô tả trên.

INSERT INTO GIAOVIEN(MAGV, HOTEN, LUONG, PHAI, NGSINH, DIACHI, GVQLCM, MABM) VALUES
    ('001', 'Nguyễn Hoài An', 2000.0, 'Nam', '1973-02-15', '25/3 Lạc Long Quân, Q.10, TP HCM', NULL, NULL),
    ('002', 'Trần Trà Huong', 2500.0, 'Nữ', '1960-06-20', '125 Trần Hưng Đạo, Q.1, TP HCM', NULL, NULL),
    ('003', 'Nguyễn Ngọc Ánh', 2200.0, 'Nữ', '1975-05-11', '12/21 Võ Văn Ngân Thủ Đức, TP HCM', NULL, NULL),
    ('004', 'Trương Nam Sơn', 2300.0, 'Nam', '1959-06-20', '215 Lý Thường Kiệt, TP Biên Hòa', NULL, NULL),
    ('005', 'Lý Hoàng Hà', 2500.0, 'Nam', '1954-10-23', '22/5 Nguyễn Xí, Q.Bình Thạnh, TP HCM', NULL, NULL),
    ('006', 'Trần Bạch Tuyết', 1500.0, 'Nữ', '1980-05-20', '127 Hùng Vương, TP Mỹ Tho', NULL, NULL),
    ('007', 'Nguyễn An Trung', 2100.0, 'Nam', '1976-06-05', '234 3/2, TP Biên Hòa', NULL, NULL),
    ('008', 'Trần Trung Hiếu', 1800.0, 'Nam', '1977-08-06', '22/11 Lý Thường Kiệt, TP Mỹ Tho', NULL, NULL),
    ('009', 'Trần Hoàng Nam', 2000.0, 'Nam', '1975-11-22', '234 Trần Não, An Phú, TP HCM', NULL, NULL),
    ('010', 'Phạm Nam Thanh', 1500.0, 'Nam', '1980-12-12', '221 Hùng Vương, Q.5, TP HCM', NULL, NULL);

INSERT INTO KHOA(MAKHOA, TENKHOA, NAMTL, PHONG, DIENTHOAI, TRUONGKHOA, NGAYNHANCHUC) VALUES
    ('CNTT', 'Công nghệ thông tin', 1995, 'B15', '0838123456', '002', '2005-02-20'),
    ('HH', 'Hóa học', 1980, 'B41', '0838456456', '007', '2001-10-15'),
    ('SH', 'Sinh học', 1980, 'B31', '0838454545', '004', '2000-10-11'),
    ('VL', 'Vật lý', 1976, 'B21', '0838223223', '005', '2003-09-18');


INSERT INTO BOMON(MABM, TENBM, PHONG, DIENTHOAI, TRUONGBM, MAKHOA, NGAYNHANCHUC) VALUES
    ('CNTT', 'Công nghệ tri thức', 'B15', '0838126126', NULL, 'CNTT', NULL),
    ('HHC', 'Hóa hữu cơ', 'B44', '838222222', NULL, 'HH', NULL),
    ('HL', 'Hóa lý', 'B42', '0838878787', NULL, 'HH', NULL),
    ('HPT', 'Hóa phân tích', 'B43', '0838777777', '007', 'HH', '2007-10-15'),
    ('HTTT', 'Hệ thống thông tin', 'B13', '0838125125', '002', 'CNTT', '2004-09-20'),
    ('MMT', 'Mạng máy tính', 'B16', '0838676767', '001', 'CNTT', '2005-05-15'),
    ('SH', 'Sinh hóa', 'B33', '0838898989', NULL, 'SH', NULL),
    ('VLĐT', 'Vật lý điện tử', 'B23', '0838234234', NULL, 'VL', NULL),
    ('VLUD', 'Vật lý ứng dụng', 'B24', '0838454545', '005', 'VL', '2006-02-18'),
    ('VS', 'Vi sinh', 'B32', '0838909090', '004', 'SH', '2007-01-01');

INSERT INTO CHUDE(MACD, TENCD) VALUES
    ('NCPT', N'Nghiên cứu phát triển'),
    ('QLGD', N'Quản lý giáo dục'),
    ('UDCN', N'ứng dụng công nghệ');


INSERT INTO DETAI(MADT, TENDT, CAPQL, KINHPHI, NGAYBD, NGAYKT, MACD, GVCNDT) VALUES
    ('001', 'HTTT quản lý các trường ÐH', 'ÐHQG', 20.0, '2007-10-20', '2008-10-20', 'QLGD', '002'),
    ('002', 'HTTT quản lý giáo vụ cho một Khoa', 'Trường', 20.0, '2000-10-12', '2001-10-12', 'QLGD', '002'),
    ('003', 'Nghiên cứu chế tạo sợi Nanô Platin', 'ÐHQG', 300.0, '2008-05-15', '2010-05-15', 'NCPT', '005'),
    ('004', 'Tạo vật liệu sinh bằng màng mỏng ở người', 'Nhà nước', 100.0, '2007-01-01', '2009-12-31', 'NCPT', '004'),
    ('005', 'Ứng dụng hóa học xanh', 'Trường', 200.0, '2003-10-10', '2004-12-10', 'UDCN', '007'),
    ('006', 'Nghiên cứu tế bào gốc', 'Nhà nước', 4000.0, '2006-10-20', '2009-10-20', 'NCPT', '004'),
    ('007', 'HTTT quản lý thu viện tại các trường ÐH', 'Trường', 20.0, '2009-05-10', '2010-05-10', 'QLGD', '001');

INSERT INTO CONGVIEC(MADT, SOTT, TENCV, NGAYBD, NGAYKT) VALUES 
    ('001', 1, N'Khởi tạo và lập kế hoạch', '2007-10-20', '2008-12-20'),
    ('001', 2, N'Xác định yêu cầu', '2008-12-21', '2009-03-21'),
    ('001', 3, N'Phân tích hệ thống', '2009-03-22', '2009-05-22'),
    ('001', 4, N'Thiết kế hệ thống', '2009-05-23', '2009-06-23'),
    ('001', 5, N'Cài đặt thử nghiệm', '2009-06-24', '2009-10-20'),
    ('002', 1, N'Khởi tạo và lập kế hoạch', '2009-05-10', '2009-07-10'),
    ('002', 2, N'Xác định yêu cầu', '2009-07-11', '2009-10-11'),
    ('002', 3, N'Phân tích hệ thống', '2009-10-12', '2009-12-20'),
    ('002', 4, N'Thiết kế hệ thống', '2009-12-21', '2010-03-22'),
    ('002', 5, N'Cài đặt thử nghiệm', '2010-03-23', '2010-05-10'),
    ('006', 1, N'Lấy mẫu', '2006-10-20', '2007-02-20'),
    ('006', 2, N'Nuôi cấy', '2007-02-21', '2008-08-21');

INSERT INTO THAMGIADT(MAGV, MADT, STT, PHUCAP, KETQUA) VALUES 
    ('001', '002', 1, 0.0, NULL),
    ('001', '002', 2, 2.0, NULL),
    ('002', '001', 4, 2.0, N'Đạt'),
    ('003', '001', 1, 1.0, N'Đạt'),
    ('003', '001', 2, 0.0, N'Đạt'),
    ('003', '001', 4, 1.0, N'Đạt'),
    ('003', '002', 2, 0.0, NULL),
    ('004', '006', 1, 0.0, N'Đạt'),
    ('004', '006', 2, 1.0, N'Đạt'),
    ('006', '006', 2, 1.5, N'Đạt'),
    ('009', '002', 3, 0.5, NULL),
    ('009', '002', 4, 1.5, NULL);

INSERT INTO GV_DT(MAGV, DIENTHOAI) VALUES
    ('001', '0838912112'),
    ('001', '0903123123'),
    ('002', '0913454545'),
    ('003', '0838121212'),
    ('003', '0903656565'),
    ('003', '0937125125'),
    ('006', '0937888888'),
    ('008', '0653717171'),
    ('008', '0913232323');

INSERT INTO NGUOITHAN(MAGV, TEN, NGSINH, PHAI) VALUES
    ('001', N'Hùng', '1990-01-14', N'Nam'),
    ('001', N'Thuỷ', '1994-12-08', N'Nữ'),
    ('003', N'Hà', '1998-09-03', N'Nữ'),
    ('003', N'Thu', '1998-09-03', N'Nữ'),
    ('007', N'Mai', '2003-03-26', N'Nữ'),
    ('007', N'Vy', '2000-02-14', N'Nữ'),
    ('008', N'Nam', '1991-05-06', N'Nam'),
    ('009', N'An', '1996-08-19', N'Nam'),
    ('010', N'Nguyệt', '2006-01-14', N'Nữ');

UPDATE GIAOVIEN SET GVQLCM = NULL, MABM = 'MMT' WHERE MAGV = '001';
UPDATE GIAOVIEN SET GVQLCM = NULL, MABM = 'HTTT' WHERE MAGV = '002';
UPDATE GIAOVIEN SET GVQLCM = '002', MABM = 'HTTT' WHERE MAGV = '003';
UPDATE GIAOVIEN SET GVQLCM = NULL, MABM = 'VS' WHERE MAGV = '004';
UPDATE GIAOVIEN SET GVQLCM = NULL, MABM = 'VLĐT' WHERE MAGV = '005';
UPDATE GIAOVIEN SET GVQLCM = '004', MABM = 'VS' WHERE MAGV = '006';
UPDATE GIAOVIEN SET GVQLCM = NULL, MABM = 'HPT' WHERE MAGV = '007';
UPDATE GIAOVIEN SET GVQLCM = '007', MABM = 'HPT' WHERE MAGV = '008';
UPDATE GIAOVIEN SET GVQLCM = '001', MABM = 'MMT' WHERE MAGV = '009';
UPDATE GIAOVIEN SET GVQLCM = '007', MABM = 'HPT' WHERE MAGV = '010';