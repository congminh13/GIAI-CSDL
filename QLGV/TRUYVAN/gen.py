import os

tasks = [
    "Q1. Cho biết họ tên và mức lương của các giáo viên nữ.",
    "Q2. Cho biết họ tên của các giáo viên và lương của họ sau khi tăng 10%.",
    "Q3. Cho biết mã của các giáo viên có họ tên bắt đầu là “Nguyễn” và lương trên $2000 hoặc, giáo viên là trưởng bộ môn nhận chức sau năm 1995.",
    "Q4. Cho biết tên những giáo viên khoa Công nghệ thông tin.",
    "Q5. Cho biết thông tin của bộ môn cùng thông tin giảng viên làm trưởng bộ môn đó.",
    "Q6. Với mỗi giáo viên, hãy cho biết thông tin của bộ môn mà họ đang làm việc.",
    "Q7. Cho biết tên đề tài và giáo viên chủ nhiệm đề tài.",
    "Q8. Với mỗi khoa cho biết thông tin trưởng khoa.",
    "Q9. Cho biết các giáo viên của bộ môn “Vi sinh” có tham gia đề tài 006.",
    "Q10. Với những đề tài thuộc cấp quản lý “Thành phố”, cho biết mã đề tài, đề tài thuộc về chủ đề nào, họ tên người chủ nghiệm đề tài cùng với ngày sinh và địa chỉ của người ấy.",
    "Q11. Tìm họ tên của từng giáo viên và người phụ trách chuyên môn trực tiếp của giáo viên đó.",
    "Q12. Tìm họ tên của những giáo viên được “Nguyễn Thanh Tùng” phụ trách trực tiếp.",
    "Q13. Cho biết tên giáo viên là trưởng bộ môn Hệ thống thông tin.",
    "Q14. Cho biết tên người chủ nhiệm đề tài của những đề tài thuộc chủ đề Quản lý giáo dục.",
    "Q15. Cho biết tên các công việc của đề tài HTTT quản lý các trường ĐH có thời gian bắt đầu trong tháng 3/2008.",
    "Q16. Cho biết tên giáo viên và tên người quản lý chuyên môn của giáo viên đó.",
    "Q17. Cho các công việc bắt đầu trong khoảng từ 01/01/2007 đến 01/08/2007.",
    "Q18. Cho biết họ tên các giáo viên cùng bộ môn với giáo viên “Trần Trà Hương”.",
    "Q19. Tìm những giáo viên vừa là trưởng bộ môn vừa chủ nhiệm đề tài.",
    "Q20. Cho biết tên những giáo viên vừa là trưởng khoa và vừa là trưởng bộ môn.",
    "Q21. Cho biết tên những trưởng bộ môn mà vừa chủ nhiệm đề tài.",
    "Q22. Cho biết mã số các trưởng khoa có chủ nhiệm đề tài.",
    "Q23. Cho biết mã số các giáo viên thuộc bộ môn HTTT hoặc có tham gia đề tài mã 001.",
    "Q24. Cho biết giáo viên làm việc cùng bộ môn với giáo viên 002.",
    "Q25. Tìm những giáo viên là trưởng bộ môn.",
    "Q26. Cho biết họ tên và mức lương của các giáo viên.",
    "Q27. Cho biết số lượng giáo viên viên và tổng lương của họ.",
    "Q28. Cho biết số lượng giáo viên và lương trung bình của từng bộ môn.",
    "Q29. Cho biết tên chủ đề và số lượng đề tài thuộc về chủ đề đó.",
    "Q30. Cho biết tên giáo viên và số lượng đề tài mà giáo viên đó tham gia.",
    "Q31. Cho biết tên giáo viên và số lượng đề tài mà giáo viên đó làm chủ nhiệm.",
    "Q32. Với mỗi giáo viên cho tên giáo viên và số người thân của giáo viên đó.",
    "Q33. Cho biết tên những giáo viên đã tham gia từ 3 đề tài trở lên.",
    "Q34. Cho biết số lượng giáo viên đã tham gia vào đề tài Ứng dụng hóa học xanh.",
    "Q35. Cho biết mức lương cao nhất của các giảng viên.",
    "Q36. Cho biết những giáo viên có lương lớn nhất.",
    "Q37. Cho biết lương cao nhất trong bộ môn “HTTT”.",
    "Q38. Cho biết tên giáo viên lớn tuổi nhất của bộ môn Hệ thống thông tin.",
    "Q39. Cho biết tên giáo viên nhỏ tuổi nhất khoa Công nghệ thông tin.",
    "Q40. Cho biết tên giáo viên và tên khoa của giáo viên có lương cao nhất.",
    "Q41. Cho biết những giáo viên có lương lớn nhất trong bộ môn của họ.",
    "Q42. Cho biết tên những đề tài mà giáo viên Nguyễn Hoài An chưa tham gia.",
    "Q43. Cho biết những đề tài mà giáo viên Nguyễn Hoài An chưa tham gia. Xuất ra tên đề tài, tên người chủ nhiệm đề tài.",
    "Q44. Cho biết tên những giáo viên khoa Công nghệ thông tin mà chưa tham gia đề tài nào.",
    "Q45. Tìm những giáo viên không tham gia bất kỳ đề tài nào",
    "Q46. Cho biết giáo viên có lương lớn hơn lương của giáo viên “Nguyễn Hoài An”",
    "Q47. Tìm những trưởng bộ môn tham gia tối thiểu 1 đề tài",
    "Q48. Tìm giáo viên trùng tên và cùng giới tính với giáo viên khác trong cùng bộ môn",
    "Q49. Tìm những giáo viên có lương lớn hơn lương của ít nhất một giáo viên bộ môn “Công nghệ phần mềm”",
    "Q50. Tìm những giáo viên có lương lớn hơn lương của tất cả giáo viên thuộc bộ môn “Hệ thống thông tin”",
    "Q51. Cho biết tên khoa có đông giáo viên nhất",
    "Q52. Cho biết họ tên giáo viên chủ nhiệm nhiều đề tài nhất",
    "Q53. Cho biết mã bộ môn có nhiều giáo viên nhất",
    "Q54. Cho biết tên giáo viên và tên bộ môn của giáo viên tham gia nhiều đề tài nhất.",
    "Q55. Cho biết tên giáo viên tham gia nhiều đề tài nhất của bộ môn HTTT.",
    "Q56. Cho biết tên giáo viên và tên bộ môn của giáo viên có nhiều người thân nhất.",
    "Q57. Cho biết tên trưởng bộ môn mà chủ nhiệm nhiều đề tài nhất.",
    "Q58. Cho biết tên giáo viên nào mà tham gia đề tài đủ tất cả các chủ đề.",
    "Q59. Cho biết tên đề tài nào mà được tất cả các giáo viên của bộ môn HTTT tham gia.",
    "Q60. Cho biết tên đề tài có tất cả giảng viên bộ môn “Hệ thống thông tin” tham gia",
    "Q61. Cho biết giáo viên nào đã tham gia tất cả các đề tài có mã chủ đề là QLGD.",
    "Q62. Cho biết tên giáo viên nào tham gia tất cả các đề tài mà giáo viên Trần Trà Hương đã tham gia.",
    "Q63. Cho biết tên đề tài nào mà được tất cả các giáo viên của bộ môn Hóa Hữu Cơ tham gia.",
    "Q64. Cho biết tên giáo viên nào mà tham gia tất cả các công việc của đề tài 006.",
    "Q65. Cho biết giáo viên nào đã tham gia tất cả các đề tài của chủ đề Ứng dụng công nghệ.",
    "Q66. Cho biết tên giáo viên nào đã tham gia tất cả các đề tài của do Trần Trà Hương làm chủ nhiệm.",
    "Q67. Cho biết tên đề tài nào mà được tất cả các giáo viên của khoa CNTT tham gia.",
    "Q68. Cho biết tên giáo viên nào mà tham gia tất cả các công việc của đề tài Nghiên cứu tế bào gốc.",
    "Q69. Tìm tên các giáo viên được phân công làm tất cả các đề tài có kinh phí trên 100 triệu?",
    "Q70. Cho biết tên đề tài nào mà được tất cả các giáo viên của khoa Sinh Học tham gia.",
    "Q71. Cho biết mã số, họ tên, ngày sinh của giáo viên tham gia tất cả các công việc của đề tài “Ứng dụng hóa học xanh”.",
    "Q72. Cho biết mã số, họ tên, tên bộ môn và tên người quản lý chuyên môn của giáo viên tham gia tất cả các đề tài thuộc chủ đề “Nghiên cứu phát triển”.",
    "Q73. Cho biết họ tên, ngày sinh, tên khoa, tên trưởng khoa của giáo viên tham gia tất cả các đề tài có giáo viên “Nguyễn Hoài An” tham gia.",
    "Q74. Cho biết họ tên giáo viên khoa “Công nghệ thông tin” tham gia tất cả các công việc của đề tài có trưởng bộ môn của bộ môn đông nhất khoa “Công nghệ thông tin” làm chủ nhiệm.",
    "Q75. Cho biết họ tên giáo viên và tên bộ môn họ làm trưởng bộ môn nếu có",
    "Q76. Cho danh sách tên bộ môn và họ tên trưởng bộ môn đó nếu có",
    "Q77. Cho danh sách tên giáo viên và các đề tài giáo viên đó chủ nhiệm nếu có",
    "Q78. Xóa các đề tài thuộc chủ đề “NCPT”.",
    "Q79. Xuất ra thông tin của giáo viên (MAGV, HOTEN) và mức lương của giáo viên. Mức lương được xếp theo quy tắc: Lương của giáo viên < $1800 : “THẤP” ; Từ $1800 đến $2200: TRUNG BÌNH; Lương > $2200: “CAO”",
    "Q80. Xuất ra thông tin giáo viên (MAGV, HOTEN) và xếp hạng dựa vào mức lương. Nếu giáo viên có lương cao nhất thì hạng là 1.",
    "Q81. Xuất ra thông tin thu nhập của giáo viên. Thu nhập của giáo viên được tính bằng LƯƠNG + PHỤ CẤP. Nếu giáo viên là trưởng bộ môn thì PHỤ CẤP là 300, và giáo viên là trưởng khoa thì PHỤ CẤP là 600.",
    "Q82. Xuất ra năm mà giáo viên dự kiến sẽ nghĩ hưu với quy định: Tuổi nghỉ hưu của Nam là 60, của Nữ là 55."
]

directory = '.' 

for i, task in enumerate(tasks, start=1):
    filename = f'q{i}.sql'
    filepath = os.path.join(directory, filename)
    with open(filepath, 'r+') as file:
        content = file.read()
        file.seek(0)
        file.write(f'-- TASK: {task}\n')  
        file.write(content)
