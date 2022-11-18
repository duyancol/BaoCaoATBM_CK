SELECT * FROM dbo.Sanpham
CREATE database laptrinhweb4
use laptrinhweb4

create table Sanpham(
id varchar(10) not  null,
name varchar(250) not null,
price int  not null,
quantity int,
img  varchar(250),
saleprice int,
mota varchar(250),
idcategory varchar(10),
img1 varchar(250),
img2 varchar(250),
img3 varchar(250),
primary  key(id)
);
INSERT INTO dbo.Sanpham
(
    id,
    name,
    price,
    quantity,
    img,
    saleprice,
    mota,
    idcategory,
    img1,
    img2,
    img3
)
VALUES
(   'sp10', -- id - varchar(10)
    'RƯỢU MACALLAN EDITION NO.5', -- name - varchar(250)
    100,  -- price - int
    10,  -- quantity - int
    'https://ruouthuonghieu.com/wp-content/uploads/2020/10/xMacallan-no5.png.pagespeed.ic.HVMjqgRLTz.webp', -- img - varchar(250)
    0,  -- saleprice - int
    'Rượu Macallan Edition No. 5 là phiên bản giới hạn thứ 5 trong bộ sưu tập Edition No. của nhà Macallan. Macallan Limited Edition No. 5, là dòng rượu Single Malt của vùng Speyside lấy cảm hứng từ tính đa dạng và phức tạp của sắc màu tự nhiên.', -- mota - varchar(250)
    'dmsp01', -- idcategory - varchar(10)
    'https://ruouthuonghieu.com/wp-content/uploads/2022/02/Hinh-Chuan-Logo-Web-1-5.jpg', -- img1 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2018/11/xRM_262.png.pagespeed.ic.M0ut5e4_Mj.webp', -- img2 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2018/11/RM_264.png'  -- img3 - varchar(250)
    )
	INSERT INTO dbo.Sanpham
(
    id,
    name,
    price,
    quantity,
    img,
    saleprice,
    mota,
    idcategory,
    img1,
    img2,
    img3
)
VALUES
(   'sp11', -- id - varchar(10)
    'RƯỢU VANG TRẮNG BIN 222', -- name - varchar(250)
    100,  -- price - int
    19,  -- quantity - int
    'https://ruouthuonghieu.com/wp-content/uploads/2022/02/Hinh-Chuan-Logo-Web-jpg.jpg', -- img - varchar(250)
    0,  -- saleprice - int
    'Vang trắng Bin 222 Wyndham Chardonnay là một trong những chai vang trắng được ưa chuộng nhất nước Úc. Rượu có màu vàng rơm sang trọng, phản chiếu ánh sáng đẹp mắt.', -- mota - varchar(250)
    'dmsp02', -- idcategory - varchar(10)
    'https://ruouthuonghieu.com/wp-content/uploads/2022/02/Hinh-Chuan-Logo-Web-1.jpg', -- img1 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2022/02/Hinh-Chuan-Logo-Web.jpg', -- img2 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2022/02/Hinh-Chuan-Logo-Web-1-2.jpg'  -- img3 - varchar(250)
    )
		INSERT INTO dbo.Sanpham
(
    id,
    name,
    price,
    quantity,
    img,
    saleprice,
    mota,
    idcategory,
    img1,
    img2,
    img3
)
VALUES
(   'sp12', -- id - varchar(10)
    'RƯỢU VANG TRẮNG Hồng 222', -- name - varchar(250)
    100,  -- price - int
    20,  -- quantity - int
    'https://ruouthuonghieu.com/wp-content/uploads/2022/03/Hinh-Chuan-Logo-Web-4.jpg ', -- img - varchar(250)
    10,  -- saleprice - int
    'Vang hồng Bin 222 Wyndham Chardonnay là một trong những chai vang trắng được ưa chuộng nhất nước Úc. Rượu có màu vàng rơm sang trọng, phản chiếu ánh sáng đẹp mắt.', -- mota - varchar(250)
    'dmsp03', -- idcategory - varchar(10)
    'https://ruouthuonghieu.com/wp-content/uploads/2022/02/Hinh-Chuan-Logo-Web-1-1.jpg', -- img1 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/07/Hinh-Chuan-Logo-Web-6.jpg', -- img2 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/06/Hinh-Chuan-WEB.jpg'  -- img3 - varchar(250)
    )
		INSERT INTO dbo.Sanpham
(
    id,
    name,
    price,
    quantity,
    img,
    saleprice,
    mota,
    idcategory,
    img1,
    img2,
    img3
)
VALUES
(   'sp13', -- id - varchar(10)
    'RƯỢU VANG Ngọt', -- name - varchar(250)
    69,  -- price - int
    20,  -- quantity - int
    'https://ruouthuonghieu.com/wp-content/uploads/2021/07/Hinh-Chuan-Logo-Web-6.jpg', -- img - varchar(250)
    10,  -- saleprice - int
    'Rượu có vị đầu vô cùng rõ rệt với tannin chín vừa, vị cuối ấn tượng với hương gỗ Sồi ngây ngất cùng một chút dấu vết cay cay kích thích của hạt tiêu trắng và thuốc lá.', -- mota - varchar(250)
    'dmsp03', -- idcategory - varchar(10)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/07/Hinh-Chuan-Logo-Web-8.jpg', -- img1 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/05/Hinh-Chuan-Logo-Web-4.jpg', -- img2 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2019/09/RV_300.png'  -- img3 - varchar(250)
    )
	--
	INSERT INTO dbo.Sanpham
(
    id,
    name,
    price,
    quantity,
    img,
    saleprice,
    mota,
    idcategory,
    img1,
    img2,
    img3
)
VALUES
(   'sp14', -- id - varchar(10)
    'RƯỢU VANG BỊCH 3L,5L', -- name - varchar(250)
    66,  -- price - int
    20,  -- quantity - int
    'https://ruouthuonghieu.com/wp-content/uploads/2021/10/Hinh-Chuan-Logo-Web-1-4.jpg', -- img - varchar(250)
    10,  -- saleprice - int
    'Five’s Reserve Cabernet Sauvignon là rượu vang bịch đỏ được làm từ 100% nho Cabernet Sauvignon. Nho được thu hoạch khi đạt độ chín tối ưu nhất trên cây. ', -- mota - varchar(250)
    'dmsp04', -- idcategory - varchar(10)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/10/Hinh-Chuan-Logo-Web-2-2.jpg', -- img1 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2021…790860ec-768x903.jpg.pagespeed.ic.Uq0PoHfe6M.webp', -- img2 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2021…790860ec-768x903.jpg.pagespeed.ic.Uq0PoHfe6M.webp'  -- img3 - varchar(250)
    )INSERT INTO dbo.Sanpham
(
    id,
    name,
    price,
    quantity,
    img,
    saleprice,
    mota,
    idcategory,
    img1,
    img2,
    img3
)
VALUES
(   'sp15', -- id - varchar(10)
    'RƯỢU VANG NỔ CHAMPAGNE', -- name - varchar(250)
    65,  -- price - int
    20,  -- quantity - int
    'https://ruouthuonghieu.com/wp-content/uploads/2021/07/Hinh-Chuan-Logo-Web-4.jpg', -- img - varchar(250)
    15,  -- saleprice - int
    'Charles de Cazanove là thương hiệu Champagne bán chạy đứng thứ 7 ở Pháp .Winemaker của nhà rượu được trao tặng giải thưởng: Winemaker của Năm 2017', -- mota - varchar(250)
    'dmsp01', -- idcategory - varchar(10)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/07/Hinh-Chuan-Logo-Web-6.jpg', -- img1 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/07/Hinh-Chuan-Logo-Web-8.jpg', -- img2 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2018/03/RV_184.png'  -- img3 - varchar(250)
    )INSERT INTO dbo.Sanpham
(
    id,
    name,
    price,
    quantity,
    img,
    saleprice,
    mota,
    idcategory,
    img1,
    img2,
    img3
)
VALUES
(   'sp16', -- id - varchar(10)
    'RƯỢU VANG NỔ SPARKLING', -- name - varchar(250)
    49,  -- price - int
    20,  -- quantity - int
    'https://ruouthuonghieu.com/wp-content/uploads/2022/03/Hinh-Chuan-Logo-Web-6.jpg', -- img - varchar(250)
    10,  -- saleprice - int
    'Martini được biết đến là một thương hiệu sản xuất rượu vang lừng danh đến từ đất nước Italia.Dường như những sản phẩm rượu vang phong phú của họ không ngừng tỏa sáng trên thị trường', -- mota - varchar(250)
    'dmsp02', -- idcategory - varchar(10)
    'https://ruouthuonghieu.com/wp-content/uploads/2022/03/Hinh-Chuan-Logo-Web-7.jpg', -- img1 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2022/03/Hinh-Chuan-Logo-Web-4.jpg', -- img2 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2022/03/Hinh-Chuan-Logo-Web-3-1.jpg'  -- img3 - varchar(250)
    )INSERT INTO dbo.Sanpham
(
    id,
    name,
    price,
    quantity,
    img,
    saleprice,
    mota,
    idcategory,
    img1,
    img2,
    img3
)
VALUES
(   'sp17', -- id - varchar(10)
    'RƯỢU VANG NỔ PROSECCO', -- name - varchar(250)
    69,  -- price - int
    21,  -- quantity - int
    'https://ruouthuonghieu.com/wp-content/uploads/2022/03/Hinh-Chuan-Logo-Web-2.jpg', -- img - varchar(250)
    11,  -- saleprice - int
    'Rượu đậm đà phong vị của vùng đất Địa Trung Hải, đầy màu sắc và vô cùng khoáng đạt.', -- mota - varchar(250)
    'dmsp03', -- idcategory - varchar(10)
    'https://ruouthuonghieu.com/wp-content/uploads/2019/07/RV_325.png', -- img1 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2019/06/RV_236.png', -- img2 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2019/07/RV_323.png'  -- img3 - varchar(250)
    )INSERT INTO dbo.Sanpham
(
    id,
    name,
    price,
    quantity,
    img,
    saleprice,
    mota,
    idcategory,
    img1,
    img2,
    img3
)
VALUES
(   'sp18', -- id - varchar(10)
    'RƯỢU THẢO MỘC', -- name - varchar(250)
    69,  -- price - int
    20,  -- quantity - int
    'https://ruouthuonghieu.com/wp-content/uploads/2021…1d871eb02e566e6231a19d39cc9589-e1623991144277.jpg', -- img - varchar(250)
    10,  -- saleprice - int
    'Combo gồm một chai Jagermeister 700ml Limited Edition và 2 ly Shot Jager trắng.', -- mota - varchar(250)
    'dmsp02', -- idcategory - varchar(10)
    'https://ruouthuonghieu.com/wp-content/uploads/2018/05/xRPC_11.png.pagespeed.ic.IK6LC5KuZc.webp', -- img1 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2018/05/xRPC_10.png.pagespeed.ic.C8I-N_wxWr.webp', -- img2 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2018/03/xRPC_01.png.pagespeed.ic.JkTmdjViAG.webp'  -- img3 - varchar(250)
    )INSERT INTO dbo.Sanpham
(
    id,
    name,
    price,
    quantity,
    img,
    saleprice,
    mota,
    idcategory,
    img1,
    img2,
    img3
)
VALUES
(   'sp19', -- id - varchar(10)
    'VODKA', -- name - varchar(250)
    69,  -- price - int
    20,  -- quantity - int
    'https://ruouthuonghieu.com/wp-content/uploads/2021/06/EvVCCquWYAMUX-W.jpg', -- img - varchar(250)
    10,  -- saleprice - int
    'Rượu Vodka SKYY -USA là thương hiệu bắt đầu tất cả. Nó lần đầu tiên được hình thành vào năm 1992 bởi một nhà phát minh tìm kiếm để tạo ra vodka mượt mà của thế giới.', -- mota - varchar(250)
    'dmsp02', -- idcategory - varchar(10)
    'https://ruouthuonghieu.com/wp-content/uploads/2018/03/RM_212.png', -- img1 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2018/03/xRM_0-2.png.pagespeed.ic._DQG4b5ewr.webp', -- img2 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2018/03/xRM_239.png.pagespeed.ic.HJgAHUA4JR.webp'  -- img3 - varchar(250)
    )INSERT INTO dbo.Sanpham
(
    id,
    name,
    price,
    quantity,
    img,
    saleprice,
    mota,
    idcategory,
    img1,
    img2,
    img3
)
VALUES
(   'sp20', -- id - varchar(10)
    'RƯỢU WHISKY QUẾ FIREBALL', -- name - varchar(250)
    69,  -- price - int
    20,  -- quantity - int
    'https://ruouthuonghieu.com/wp-content/uploads/2022/02/Hinh-Chuan-Logo-Web-4.jpg', -- img - varchar(250)
    10,  -- saleprice - int
    'Fireball – Hương vị như thiên đường, bỏng như địa ngục. Không cần giới thiệu thêm về Fireball Cinnamon Whisky.', -- mota - varchar(250)
    'dmsp03', -- idcategory - varchar(10)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/07/Hinh-Chuan-Logo-Web-8.jpg', -- img1 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/05/Hinh-Chuan-Logo-Web-4.jpg', -- img2 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2019/09/RV_300.png'  -- img3 - varchar(250)
    )INSERT INTO dbo.Sanpham
(
    id,
    name,
    price,
    quantity,
    img,
    saleprice,
    mota,
    idcategory,
    img1,
    img2,
    img3
)
VALUES
(   'sp21', -- id - varchar(10)
    'RƯỢU SAMBUCA', -- name - varchar(250)
    69,  -- price - int
    10,  -- quantity - int
    'https://ruouthuonghieu.com/wp-content/uploads/2020/10/Vaccari.png', -- img - varchar(250)
    10,  -- saleprice - int
    'Vaccari Sambuca là loại rượu liqueur hương hồi, thường không màu và được chưng cất bởi công ty Vaccari.', -- mota - varchar(250)
    'dmsp03', -- idcategory - varchar(10)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/07/Hinh-Chuan-Logo-Web-8.jpg', -- img1 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/05/Hinh-Chuan-Logo-Web-4.jpg', -- img2 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2019/09/RV_300.png'  -- img3 - varchar(250)
    )
	    INSERT INTO dbo.Sanpham
(
    id,
    name,
    price,
    quantity,
    img,
    saleprice,
    mota,
    idcategory,
    img1,
    img2,
    img3
)
VALUES
(   'sp22', -- id - varchar(10)
    'LIQUEUR MIDORI MÙI DƯA', -- name - varchar(250)
    69,  -- price - int
    10,  -- quantity - int
    'https://ruouthuonghieu.com/wp-content/uploads/2018/03/xRPC_23.png.pagespeed.ic.a6NMppMXPG.webp', -- img - varchar(250)
    10,  -- saleprice - int
    'Midori là một loại rượu mùi đa năng và nó được coi là một loại rượu mùi cần thiết cho một hương thơm kéo dài và bảo quản được lâu.', -- mota - varchar(250)
    'dmsp03', -- idcategory - varchar(10)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/07/Hinh-Chuan-Logo-Web-8.jpg', -- img1 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/05/Hinh-Chuan-Logo-Web-4.jpg', -- img2 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2019/09/RV_300.png'  -- img3 - varchar(250)
    )
	   INSERT INTO dbo.Sanpham
(
    id,
    name,
    price,
    quantity,
    img,
    saleprice,
    mota,
    idcategory,
    img1,
    img2,
    img3
)
VALUES
(   'sp23', -- id - varchar(10)
    'RƯỢU PHA CHẾ', -- name - varchar(250)
    60,  -- price - int
    10,  -- quantity - int
    'https://ruouthuonghieu.com/wp-content/uploads/2018/03/RPC_19.png', -- img - varchar(250)
    10,  -- saleprice - int
    'Campari là một loại rượu khai vị có vị đắng của Ý. Cocktail Campari là sự pha trộn độc quyền của các loại thảo mộc và gia vị với một màu đỏ rực rỡ và hương vị vô cùng độc đáo ', -- mota - varchar(250)
    'dmsp04', -- idcategory - varchar(10)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/07/Hinh-Chuan-Logo-Web-8.jpg', -- img1 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/05/Hinh-Chuan-Logo-Web-4.jpg', -- img2 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2019/09/RV_300.png'  -- img3 - varchar(250)
    )
   INSERT INTO dbo.Sanpham
(
    id,
    name,
    price,
    quantity,
    img,
    saleprice,
    mota,
    idcategory,
    img1,
    img2,
    img3
)
VALUES
(   'sp24', -- id - varchar(10)
    'RƯỢU GIN SIPSMITH SLOE', -- name - varchar(250)
    69,  -- price - int
    10,  -- quantity - int
    'https://ruouthuonghieu.com/wp-content/uploads/2018/03/xRPC_23.png.pagespeed.ic.a6NMppMXPG.webp', -- img - varchar(250)
    10,  -- saleprice - int
    'Nhà máy Sipsmith được thành lập tại London vào năm 2009. Nhà máy chưng cất nồi đồng đầu tiên bắt đầu hoạt động ở London sau 189 năm', -- mota - varchar(250)
    'dmsp01', -- idcategory - varchar(10)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/07/Hinh-Chuan-Logo-Web-8.jpg', -- img1 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/05/Hinh-Chuan-Logo-Web-4.jpg', -- img2 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2019/09/RV_300.png'  -- img3 - varchar(250)
    )
   INSERT INTO dbo.Sanpham
(
    id,
    name,
    price,
    quantity,
    img,
    saleprice,
    mota,
    idcategory,
    img1,
    img2,
    img3
)
VALUES
(   'sp25', -- id - varchar(10)
    'RƯỢU GIN SIPSMITH LONDON', -- name - varchar(250)
    68,  -- price - int
    10,  -- quantity - int
    'https://ruouthuonghieu.com/wp-content/uploads/2022…Chuan-Logo-Web-1.jpg.pagespeed.ic.-ZirBW03k7.webp', -- img - varchar(250)
    10,  -- saleprice - int
    'Sipsmith’s London Dry Gin được sản xuất bằng 10 loại thực vật từ khắp nơi trên thế giới: quả bách xù của người Macedonia, hạt rau mùi Bulgaria...', -- mota - varchar(250)
    'dmsp02', -- idcategory - varchar(10)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/07/Hinh-Chuan-Logo-Web-8.jpg', -- img1 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/05/Hinh-Chuan-Logo-Web-4.jpg', -- img2 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2019/09/RV_300.png'  -- img3 - varchar(250)
    )
   INSERT INTO dbo.Sanpham
(
    id,
    name,
    price,
    quantity,
    img,
    saleprice,
    mota,
    idcategory,
    img1,
    img2,
    img3
)
VALUES
(   'sp26', -- id - varchar(10)
    'RƯỢU GIN BOMBAY', -- name - varchar(250)
    68,  -- price - int
    10,  -- quantity - int
    'https://ruouthuonghieu.com/wp-content/uploads/2022/03/maxresdefault-1024x576.jpg', -- img - varchar(250)
    11,  -- saleprice - int
    'Bombay Bramble được thưởng thức tốt nhất chỉ đơn giản với tonic', -- mota - varchar(250)
    'dmsp03', -- idcategory - varchar(10)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/07/Hinh-Chuan-Logo-Web-8.jpg', -- img1 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/05/Hinh-Chuan-Logo-Web-4.jpg', -- img2 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2019/09/RV_300.png'  -- img3 - varchar(250)
    )
   INSERT INTO dbo.Sanpham
(
    id,
    name,
    price,
    quantity,
    img,
    saleprice,
    mota,
    idcategory,
    img1,
    img2,
    img3
)
VALUES
(   'sp27', -- id - varchar(10)
    'RƯỢU MONKEY 47', -- name - varchar(250)
    69,  -- price - int
    10,  -- quantity - int
    'https://ruouthuonghieu.com/wp-content/uploads/2022/02/Hinh-Chuan-Logo-Web-3-1.jpg', -- img - varchar(250)
    10,  -- saleprice - int
    'Monkey 47 được phát hiện bởi Montgomery Collins, một loài thực vật có vị đắng giống như Christoph Keller sản xuất ', -- mota - varchar(250)
    'dmsp04', -- idcategory - varchar(10)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/07/Hinh-Chuan-Logo-Web-8.jpg', -- img1 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/05/Hinh-Chuan-Logo-Web-4.jpg', -- img2 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2019/09/RV_300.png'  -- img3 - varchar(250)
    )
   INSERT INTO dbo.Sanpham
(
    id,
    name,
    price,
    quantity,
    img,
    saleprice,
    mota,
    idcategory,
    img1,
    img2,
    img3
)
VALUES
(   'sp28', -- id - varchar(10)
    'RƯỢU BACARDI', -- name - varchar(250)
    69,  -- price - int
    10,  -- quantity - int
    'https://ruouthuonghieu.com/wp-content/uploads/2021/10/Hinh-Chuan-Logo-Web-1.jpg', -- img - varchar(250)
    10,  -- saleprice - int
    'Mùi: hương thơm ngọt ngào của mật mía, caramel và mùi trái cây nhiệt đới. Nổi bật là những nốt hương của cam thảo và vani.', -- mota - varchar(250)
    'dmsp03', -- idcategory - varchar(10)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/07/Hinh-Chuan-Logo-Web-8.jpg', -- img1 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/05/Hinh-Chuan-Logo-Web-4.jpg', -- img2 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2019/09/RV_300.png'  -- img3 - varchar(250)
    )
   INSERT INTO dbo.Sanpham
(
    id,
    name,
    price,
    quantity,
    img,
    saleprice,
    mota,
    idcategory,
    img1,
    img2,
    img3
)
VALUES
(   'sp29', -- id - varchar(10)
    'RƯỢU RUM KRAKEN', -- name - varchar(250)
    69,  -- price - int
    10,  -- quantity - int
    'https://ruouthuonghieu.com/wp-content/uploads/2020/05/RPC_07.png', -- img - varchar(250)
    10,  -- saleprice - int
    'Rượu rum Kraken Black Spiced Rum, là sản phẩm rum phối trộn với nhau của Caribbean trong màu đen huyền bí với 11 loại gia vị trong thành phần và công thức là điều bí mật', -- mota - varchar(250)
    'dmsp03', -- idcategory - varchar(10)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/07/Hinh-Chuan-Logo-Web-8.jpg', -- img1 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/05/Hinh-Chuan-Logo-Web-4.jpg', -- img2 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2019/09/RV_300.png'  -- img3 - varchar(250)
    )
   INSERT INTO dbo.Sanpham
(
    id,
    name,
    price,
    quantity,
    img,
    saleprice,
    mota,
    idcategory,
    img1,
    img2,
    img3
)
VALUES
(   'sp30', -- id - varchar(10)
    'BACARDI GOLD', -- name - varchar(250)
    68,  -- price - int
    10,  -- quantity - int
    'https://ruouthuonghieu.com/wp-content/uploads/2018/03/bacardi-carta-range-300x440.jpg', -- img - varchar(250)
    10,  -- saleprice - int
    'Bacardi với hơn 150 năm lịch sử phát triển đã tạo ra dòng rượu rum số một thế giới và luôn dẫn đầu về sản lượng bán ra', -- mota - varchar(250)
    'dmsp03', -- idcategory - varchar(10)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/07/Hinh-Chuan-Logo-Web-8.jpg', -- img1 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/05/Hinh-Chuan-Logo-Web-4.jpg', -- img2 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2019/09/RV_300.png'  -- img3 - varchar(250)
    )
   INSERT INTO dbo.Sanpham
(
    id,
    name,
    price,
    quantity,
    img,
    saleprice,
    mota,
    idcategory,
    img1,
    img2,
    img3
)
VALUES
(   'sp31', -- id - varchar(10)
    'RƯỢU PHA CHẾ THÔNG DỤNG', -- name - varchar(250)
    69,  -- price - int
    10,  -- quantity - int
    'https://ruouthuonghieu.com/wp-content/uploads/2018/03/xRPC_18.png.pagespeed.ic.-T_TxZsUup.webp', -- img - varchar(250)
    10,  -- saleprice - int
    'Là một hương vị rượu rum được chiết xuất từ ​​dừa tự nhiên, Thuộc thương hiệu sở hữu của Pernod Ricard.', -- mota - varchar(250)
    'dmsp03', -- idcategory - varchar(10)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/07/Hinh-Chuan-Logo-Web-8.jpg', -- img1 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/05/Hinh-Chuan-Logo-Web-4.jpg', -- img2 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2019/09/RV_300.png'  -- img3 - varchar(250)
    )
   INSERT INTO dbo.Sanpham
(
    id,
    name,
    price,
    quantity,
    img,
    saleprice,
    mota,
    idcategory,
    img1,
    img2,
    img3
)
VALUES
(   'sp32', -- id - varchar(10)
    'RƯỢU TEQUILA 1800', -- name - varchar(250)
    69,  -- price - int
    10,  -- quantity - int
    'https://ruouthuonghieu.com/wp-content/uploads/2020/07/xRPC_12.png.pagespeed.ic.rHFCqcU-Wp.webp', -- img - varchar(250)
    10,  -- saleprice - int
    'Tequila Reserva 1800 Anejo được sản xuất từ 100% cây thùa, được chưng cất 2 lần trong thùng gỗ sồi Pháp trong thời gian lên đến 3 năm', -- mota - varchar(250)
    'dmsp04', -- idcategory - varchar(10)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/07/Hinh-Chuan-Logo-Web-8.jpg', -- img1 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/05/Hinh-Chuan-Logo-Web-4.jpg', -- img2 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2019/09/RV_300.png'  -- img3 - varchar(250)
    )
   INSERT INTO dbo.Sanpham
(
    id,
    name,
    price,
    quantity,
    img,
    saleprice,
    mota,
    idcategory,
    img1,
    img2,
    img3
)
VALUES
(   'sp33', -- id - varchar(10)
    'RƯỢU PHA CHẾ TEQUILA JOSE CUERVO GOLD', -- name - varchar(250)
    39,  -- price - int
    10,  -- quantity - int
    'https://ruouthuonghieu.com/wp-content/uploads/2018/03/xRPC_02.png.pagespeed.ic.3RMA5qPpGS.webp', -- img - varchar(250)
    10,  -- saleprice - int
    'Rượu Tequila Jose Cuervo (7 đồng tiền) là thương hiệu rượu tequila được thành lập 1795 bởi Don Jose Antonio de Cuervo. Tequila Là loại rượu nổi tiếng Thế giới ở cao nguyên khô cằn của miền trung Mexico', -- mota - varchar(250)
    'dmsp03', -- idcategory - varchar(10)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/07/Hinh-Chuan-Logo-Web-8.jpg', -- img1 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/05/Hinh-Chuan-Logo-Web-4.jpg', -- img2 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2019/09/RV_300.png'  -- img3 - varchar(250)
    )
   INSERT INTO dbo.Sanpham
(
    id,
    name,
    price,
    quantity,
    img,
    saleprice,
    mota,
    idcategory,
    img1,
    img2,
    img3
)
VALUES
(   'sp34', -- id - varchar(10)
    'RƯỢU TEQUILA 1800 SILVER', -- name - varchar(250)
    69,  -- price - int
    10,  -- quantity - int
    'https://ruouthuonghieu.com/wp-content/uploads/2020/07/xRPC_13.png.pagespeed.ic.d3JtUivNkZ.webp', -- img - varchar(250)
    10,  -- saleprice - int
    'RƯỢU PHA TEQUILA RESERVA SILVER 1800 750ML Thưởng thức: uống shot trực tiếp, on the rock và cocktail.', -- mota - varchar(250)
    'dmsp02', -- idcategory - varchar(10)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/07/Hinh-Chuan-Logo-Web-8.jpg', -- img1 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/05/Hinh-Chuan-Logo-Web-4.jpg', -- img2 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2019/09/RV_300.png'  -- img3 - varchar(250)
    )
   INSERT INTO dbo.Sanpham
(
    id,
    name,
    price,
    quantity,
    img,
    saleprice,
    mota,
    idcategory,
    img1,
    img2,
    img3
)
VALUES
(   'sp35', -- id - varchar(10)
    'RƯỢU PHA TEQUILA REPOSADO PATRON 750ML', -- name - varchar(250)
    68,  -- price - int
    10,  -- quantity - int
    'https://ruouthuonghieu.com/wp-content/uploads/2018/08/RPC_83.png', -- img - varchar(250)
    10,  -- saleprice - int
    'RƯỢU PHA TEQUILA ANEJO PATRON 750ML là một sự pha trộn tinh tế của tequila 1-3 tuổi, tất cả các độ tuổi trong thùng gỗ sồi nhỏ màu trắng cho tối thiểu là 12 tháng (được ủ từ 1-3 tuổi).', -- mota - varchar(250)
    'dmsp03', -- idcategory - varchar(10)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/07/Hinh-Chuan-Logo-Web-8.jpg', -- img1 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/05/Hinh-Chuan-Logo-Web-4.jpg', -- img2 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2019/09/RV_300.png'  -- img3 - varchar(250)
    )
   INSERT INTO dbo.Sanpham
(
    id,
    name,
    price,
    quantity,
    img,
    saleprice,
    mota,
    idcategory,
    img1,
    img2,
    img3
)
VALUES
(   'sp36', -- id - varchar(10)
    'Vang Úc Penfolds', -- name - varchar(250)
    69,  -- price - int
    10,  -- quantity - int
    'assets/image/36.jpg', -- img - varchar(250)
    10,  -- saleprice - int
    'Vang đỏ Penfolds Koonunga Hill Cabernet Sauvignon được phối trộn từ các vùng nho nổi tiếng như: Barossa Valley, South Australia,... ', -- mota - varchar(250)
    'dmsp02', -- idcategory - varchar(10)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/07/Hinh-Chuan-Logo-Web-8.jpg', -- img1 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/05/Hinh-Chuan-Logo-Web-4.jpg', -- img2 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2019/09/RV_300.png'  -- img3 - varchar(250)
    )
   INSERT INTO dbo.Sanpham
(
    id,
    name,
    price,
    quantity,
    img,
    saleprice,
    mota,
    idcategory,
    img1,
    img2,
    img3
)
VALUES
(   'sp37', -- id - varchar(10)
    'Vang Úc Penfolds Koonunga Hill Shiraz Cabernet 2018 (750ml/14.5%)', -- name - varchar(250)
    69,  -- price - int
    10,  -- quantity - int
    'assets/image/37.jpg', -- img - varchar(250)
    10,  -- saleprice - int
    'Vang đỏ Penfolds Koonunga Hill Shiraz Cabernet được phối trộn từ các vùng nho nổi tiếng như: Barossa Valley, McLaren Vale, Padthaway, Langhorne Creek và Coonawarra, South Australia. ', -- mota - varchar(250)
    'dmsp01', -- idcategory - varchar(10)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/07/Hinh-Chuan-Logo-Web-8.jpg', -- img1 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/05/Hinh-Chuan-Logo-Web-4.jpg', -- img2 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2019/09/RV_300.png'  -- img3 - varchar(250)
    )
   --
   INSERT INTO dbo.Sanpham
(
    id,
    name,
    price,
    quantity,
    img,
    saleprice,
    mota,
    idcategory,
    img1,
    img2,
    img3
)
VALUES
(   'sp38', -- id - varchar(10)
    'Vang Úc Penfolds Grange Bin 95', -- name - varchar(250)
    69,  -- price - int
    10,  -- quantity - int
    'assets/image/38.jpg', -- img - varchar(250)
    10,  -- saleprice - int
    'Vang Penfolds Grange, thành phần chính là nho Shiraz được thu hoạch từ các vườn nho ở các vùng như: Barossa Valley, McLaren Vale, Clare Valley, Magill Estate một cách tỉ mỉ và hoàn toàn thủ công.', -- mota - varchar(250)
    'dmsp01', -- idcategory - varchar(10)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/07/Hinh-Chuan-Logo-Web-8.jpg', -- img1 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/05/Hinh-Chuan-Logo-Web-4.jpg', -- img2 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2019/09/RV_300.png'  -- img3 - varchar(250)
    )INSERT INTO dbo.Sanpham
(
    id,
    name,
    price,
    quantity,
    img,
    saleprice,
    mota,
    idcategory,
    img1,
    img2,
    img3
)
VALUES
(   'sp39', -- id - varchar(10)
    'Vang Úc Penfolds Bin 28 Shiraz', -- name - varchar(250)
    69,  -- price - int
    10,  -- quantity - int
    'assets/image/39.jpg', -- img - varchar(250)
    10,  -- saleprice - int
    'Vang đỏ Penfolds Bin 28 Shiraz được làm từ giống nho Shiraz tại vườn nho Kalimna, Barossa thuộc miền Nam nước Úc – nơi có khí hậu ấm áp, thuận lợi để tạo ra những chai Vang ngon.', -- mota - varchar(250)
    'dmsp01', -- idcategory - varchar(10)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/07/Hinh-Chuan-Logo-Web-8.jpg', -- img1 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/05/Hinh-Chuan-Logo-Web-4.jpg', -- img2 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2019/09/RV_300.png'  -- img3 - varchar(250)
    )INSERT INTO dbo.Sanpham
(
    id,
    name,
    price,
    quantity,
    img,
    saleprice,
    mota,
    idcategory,
    img1,
    img2,
    img3
)
VALUES
(   'sp40', -- id - varchar(10)
    'Vang Úc Penfolds Bin 389', -- name - varchar(250)
    69,  -- price - int
    10,  -- quantity - int
    'assets/image/40.jpg', -- img - varchar(250)
    10,  -- saleprice - int
    'Niên vụ đầu tiên của dòng vang này là 1960. Penfolds là nhà làm vang lâu đời và lừng danh nhất nước Úc với tuổi đời hơn 170 năm từ 1844. ', -- mota - varchar(250)
    'dmsp03', -- idcategory - varchar(10)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/07/Hinh-Chuan-Logo-Web-8.jpg', -- img1 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/05/Hinh-Chuan-Logo-Web-4.jpg', -- img2 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2019/09/RV_300.png'  -- img3 - varchar(250)
    )INSERT INTO dbo.Sanpham
(
    id,
    name,
    price,
    quantity,
    img,
    saleprice,
    mota,
    idcategory,
    img1,
    img2,
    img3
)
VALUES
(   'sp41', -- id - varchar(10)
    'Vang Úc Penfolds Maxs Shiraz Cabernet (750ml/14.5%)', -- name - varchar(250)
    69,  -- price - int
    10,  -- quantity - int
    'assets/image/41.jpg', -- img - varchar(250)
    10,  -- saleprice - int
    'Vang Penfolds Maxs Shiraz Cabernet niên vụ 2016 được phối trộn 77% Shiraz và 23% Cabernet Sauvignon. Sau quá trình lên men rượu được ủ 12 tháng trong thùng gỗ sồi Mỹ và Pháp. ', -- mota - varchar(250)
    'dmsp01', -- idcategory - varchar(10)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/07/Hinh-Chuan-Logo-Web-8.jpg', -- img1 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/05/Hinh-Chuan-Logo-Web-4.jpg', -- img2 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2019/09/RV_300.png'  -- img3 - varchar(250)
    )INSERT INTO dbo.Sanpham
(
    id,
    name,
    price,
    quantity,
    img,
    saleprice,
    mota,
    idcategory,
    img1,
    img2,
    img3
)
VALUES
(   'sp42', -- id - varchar(10)
    'Vang Úc Penfolds  (750ml/14.5%)', -- name - varchar(250)
    69,  -- price - int
    10,  -- quantity - int
    'assets/image/42.jpg', -- img - varchar(250)
    10,  -- saleprice - int
    'Vang đỏ Penfolds Koonunga Hill Shiraz Cabernet được phối trộn từ các vùng nho nổi tiếng như: Barossa Valley, McLaren Vale, Padthaway, Langhorne Creek và Coonawarra, South Australia. ', -- mota - varchar(250)
    'dmsp02', -- idcategory - varchar(10)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/07/Hinh-Chuan-Logo-Web-8.jpg', -- img1 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/05/Hinh-Chuan-Logo-Web-4.jpg', -- img2 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2019/09/RV_300.png'  -- img3 - varchar(250)
    )INSERT INTO dbo.Sanpham
(
    id,
    name,
    price,
    quantity,
    img,
    saleprice,
    mota,
    idcategory,
    img1,
    img2,
    img3
)
VALUES
--43
(   'sp43', -- id - varchar(10)
    'Rượu Glenfiddich Reserve Cask', -- name - varchar(250)
    69,  -- price - int
    10,  -- quantity - int
    'assets/image/43.jpg', -- img - varchar(250)
    10,  -- saleprice - int
    'Rượu Glenfiddich Reserve Cask có phong cách thiết kế mầu xanh đậm , được ủ trong thùng gỗ sồi Sherry Tây Ban Nha , có mùi vị êm dịu và đa dạng mẫu mã của nhiều chủng loại Trái cây', -- mota - varchar(250)
    'dmsp01', -- idcategory - varchar(10)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/07/Hinh-Chuan-Logo-Web-8.jpg', -- img1 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/05/Hinh-Chuan-Logo-Web-4.jpg', -- img2 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2019/09/RV_300.png'  -- img3 - varchar(250)
    )INSERT INTO dbo.Sanpham
(
    id,
    name,
    price,
    quantity,
    img,
    saleprice,
    mota,
    idcategory,
    img1,
    img2,
    img3
)
VALUES
(   'sp44', -- id - varchar(10)
    'Rượu Macallan A Night On Earth', -- name - varchar(250)
    69,  -- price - int
    10,  -- quantity - int
    'assets/image/44.jpg', -- img - varchar(250)
    10,  -- saleprice - int
    'Vang đỏ Penfolds Koonunga Hill Shiraz Cabernet được phối trộn từ các vùng nho nổi tiếng như: Barossa Valley, McLaren Vale, Padthaway, Langhorne Creek và Coonawarra, South Australia. ', -- mota - varchar(250)
    'dmsp01', -- idcategory - varchar(10)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/07/Hinh-Chuan-Logo-Web-8.jpg', -- img1 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/05/Hinh-Chuan-Logo-Web-4.jpg', -- img2 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2019/09/RV_300.png'  -- img3 - varchar(250)
    )INSERT INTO dbo.Sanpham
(
    id,
    name,
    price,
    quantity,
    img,
    saleprice,
    mota,
    idcategory,
    img1,
    img2,
    img3
)
VALUES
(   'sp45', -- id - varchar(10)
    'HENNESSY VSOP LIMITED TẾT 2022', -- name - varchar(250)
    69,  -- price - int
    10,  -- quantity - int
    'assets/image/45.jpg', -- img - varchar(250)
    10,  -- saleprice - int
    'Rượu Hennessy VSOP Limited, phiên bản giới hạn year of the Rat - Tết Nhâm Dần 2022', -- mota - varchar(250)
    'dmsp01', -- idcategory - varchar(10)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/07/Hinh-Chuan-Logo-Web-8.jpg', -- img1 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/05/Hinh-Chuan-Logo-Web-4.jpg', -- img2 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2019/09/RV_300.png'  -- img3 - varchar(250)
    )INSERT INTO dbo.Sanpham
(
    id,
    name,
    price,
    quantity,
    img,
    saleprice,
    mota,
    idcategory,
    img1,
    img2,
    img3
)
VALUES
(   'sp46', -- id - varchar(10)
    'RƯỢU HENNESSY VSOP TẾT 2022', -- name - varchar(250)
    69,  -- price - int
    10,  -- quantity - int
    'assets/image/46.jpg', -- img - varchar(250)
    10,  -- saleprice - int
    'Hennessy VSOP Tết 2022 là sự kết hợp giữa thương hiệu và họa sĩ hàng đầu Zhang Enli. Thiết kế táo bạo với những mảng màu đối lập. ', -- mota - varchar(250)
    'dmsp01', -- idcategory - varchar(10)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/07/Hinh-Chuan-Logo-Web-8.jpg', -- img1 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/05/Hinh-Chuan-Logo-Web-4.jpg', -- img2 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2019/09/RV_300.png'  -- img3 - varchar(250)
    )INSERT INTO dbo.Sanpham
(
    id,
    name,
    price,
    quantity,
    img,
    saleprice,
    mota,
    idcategory,
    img1,
    img2,
    img3
)
VALUES
(   'sp47', -- id - varchar(10)
    'RƯỢU HENNESSY VSOP 700ML', -- name - varchar(250)
    69,  -- price - int
    10,  -- quantity - int
    'assets/image/47.jpg', -- img - varchar(250)
    10,  -- saleprice - int
    'Mùi : Hương thơm của gỗ Sồi, Mật ong, Cam thảo, Lá đinh hương và Quế', -- mota - varchar(250)
    'dmsp03', -- idcategory - varchar(10)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/07/Hinh-Chuan-Logo-Web-8.jpg', -- img1 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/05/Hinh-Chuan-Logo-Web-4.jpg', -- img2 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2019/09/RV_300.png'  -- img3 - varchar(250)
    )INSERT INTO dbo.Sanpham
(
    id,
    name,
    price,
    quantity,
    img,
    saleprice,
    mota,
    idcategory,
    img1,
    img2,
    img3
)
VALUES
(   'sp48', -- id - varchar(10)
    'Rượu vang Luccarelli Primitivo', -- name - varchar(250)
    69,  -- price - int
    10,  -- quantity - int
    'assets/image/48.jpg', -- img - varchar(250)
    10,  -- saleprice - int
    'Luccarelli Primitivo Puglia sở hữu hương vị đặc trưng của trái cây chín, quả mâm xôi, dâu đen. Rượu có mùi thơm đặc trưng', -- mota - varchar(250)
    'dmsp01', -- idcategory - varchar(10)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/07/Hinh-Chuan-Logo-Web-8.jpg', -- img1 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/05/Hinh-Chuan-Logo-Web-4.jpg', -- img2 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2019/09/RV_300.png'  -- img3 - varchar(250)
    )INSERT INTO dbo.Sanpham
(
    id,
    name,
    price,
    quantity,
    img,
    saleprice,
    mota,
    idcategory,
    img1,
    img2,
    img3
)
VALUES
(   'sp49', -- id - varchar(10)
    'Rượu vang bịch Ý IL Pumo BIB', -- name - varchar(250)
    69,  -- price - int
    10,  -- quantity - int
    'assets/image/49.jpg', -- img - varchar(250)
    10,  -- saleprice - int
    'Rượu vang bịch Ý IL Pumo BIB vang ý loại vang đỏ uống ngon.', -- mota - varchar(250)
    'dmsp01', -- idcategory - varchar(10)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/07/Hinh-Chuan-Logo-Web-8.jpg', -- img1 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/05/Hinh-Chuan-Logo-Web-4.jpg', -- img2 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2019/09/RV_300.png'  -- img3 - varchar(250)
    )INSERT INTO dbo.Sanpham
(
    id,
    name,
    price,
    quantity,
    img,
    saleprice,
    mota,
    idcategory,
    img1,
    img2,
    img3
)
VALUES
(   'sp50', -- id - varchar(10)
    'Rượu Vang Bịch Tini Merlot 3 Lít', -- name - varchar(250)
    69,  -- price - int
    10,  -- quantity - int
    'assets/image/50.jpg', -- img - varchar(250)
    10,  -- saleprice - int
    'Rượu Vang Bịch Tini Merlot 3 Lít. Rượu vang hấp dẫn từ vùng Emilia – Romagna nước Ý. Tini là dòng sản phẩm mang hơi thở hiện đại, thuộc tập đoàn Caviro ý. Hiện nay là tập đoàn rượu vang dẫn đầu nước Ý, có tiền thân từ một hợp tác xã năm 1966.', -- mota - varchar(250)
    'dmsp01', -- idcategory - varchar(10)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/07/Hinh-Chuan-Logo-Web-8.jpg', -- img1 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/05/Hinh-Chuan-Logo-Web-4.jpg', -- img2 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2019/09/RV_300.png'  -- img3 - varchar(250)
    )INSERT INTO dbo.Sanpham
(
    id,
    name,
    price,
    quantity,
    img,
    saleprice,
    mota,
    idcategory,
    img1,
    img2,
    img3
)
VALUES
(   'sp51', -- id - varchar(10)
    'Rượu Vang Hồng ', -- name - varchar(250)
    69,  -- price - int
    10,  -- quantity - int
    'assets/image/51.jpg', -- img - varchar(250)
    10,  -- saleprice - int
    ' Freixenet Rosato Veneto. Rượu vang được yêu thích. Freixenet Italian Rosé màu hồng xinh xắn được làm từ giống nho cổ điển từ vùng IGT Veneto rất tuyệt ', -- mota - varchar(250)
    'dmsp02', -- idcategory - varchar(10)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/07/Hinh-Chuan-Logo-Web-8.jpg', -- img1 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/05/Hinh-Chuan-Logo-Web-4.jpg', -- img2 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2019/09/RV_300.png'  -- img3 - varchar(250)
    )INSERT INTO dbo.Sanpham
(
    id,
    name,
    price,
    quantity,
    img,
    saleprice,
    mota,
    idcategory,
    img1,
    img2,
    img3
)
VALUES
(   'sp52', -- id - varchar(10)
    'Rượu Vang Edizione Limited 16 – chai vang ý hảo hạng.', -- name - varchar(250)
    69,  -- price - int
    10,  -- quantity - int
    'assets/image/52.jpg', -- img - varchar(250)
    10,  -- saleprice - int
    'Nước Ý, nơi sản sinh và nuôi dưỡng ra những chai rượu vang trở thành thương hiệu nổi tiếng. Không thể không nhắc đến cái tên rượu vang 16 Edizione – Chai vang Ý hảo hạng đến từ hãng rượu Farnese ', -- mota - varchar(250)
    'dmsp01', -- idcategory - varchar(10)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/07/Hinh-Chuan-Logo-Web-8.jpg', -- img1 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/05/Hinh-Chuan-Logo-Web-4.jpg', -- img2 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2019/09/RV_300.png'  -- img3 - varchar(250)
    )INSERT INTO dbo.Sanpham
(
    id,
    name,
    price,
    quantity,
    img,
    saleprice,
    mota,
    idcategory,
    img1,
    img2,
    img3
)
VALUES
(   'sp53', -- id - varchar(10)
    'Rượu Vang Ngọt Ý Queen Bee', -- name - varchar(250)
    69,  -- price - int
    10,  -- quantity - int
    'assets/image/53.jpg', -- img - varchar(250)
    10,  -- saleprice - int
    ' Rượu Vang Ngọt Ý Queen Bee. Vang ngọt Ý Queen Bee Semi Dolce ngọt ngào ong chúa', -- mota - varchar(250)
    'dmsp01', -- idcategory - varchar(10)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/07/Hinh-Chuan-Logo-Web-8.jpg', -- img1 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/05/Hinh-Chuan-Logo-Web-4.jpg', -- img2 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2019/09/RV_300.png'  -- img3 - varchar(250)
    )INSERT INTO dbo.Sanpham
(
    id,
    name,
    price,
    quantity,
    img,
    saleprice,
    mota,
    idcategory,
    img1,
    img2,
    img3
)
VALUES
(   'sp54', -- id - varchar(10)
    'Rượu vang Argentina 12 La Espera Reserva Malbec', -- name - varchar(250)
    69,  -- price - int
    10,  -- quantity - int
    'assets/image/54.jpg', -- img - varchar(250)
    10,  -- saleprice - int
    ' Đây là một dòng vang đậm đà và có hậu vị dai dẳng. Khi bạn nếm thử La Espera Reserva Malbec, bạn sẽ không thể ngừng được không chỉ bởi vị ngon của rượu mà còn là sự kết hợp tinh tế giữa các mùi hương.', -- mota - varchar(250)
    'dmsp01', -- idcategory - varchar(10)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/07/Hinh-Chuan-Logo-Web-8.jpg', -- img1 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/05/Hinh-Chuan-Logo-Web-4.jpg', -- img2 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2019/09/RV_300.png'  -- img3 - varchar(250)
    )INSERT INTO dbo.Sanpham
(
    id,
    name,
    price,
    quantity,
    img,
    saleprice,
    mota,
    idcategory,
    img1,
    img2,
    img3
)
VALUES
(   'sp55', -- id - varchar(10)
    'Rượu Vang Vindoro Con Công của hãng Sanmarzano Italy.  ', -- name - varchar(250)
    69,  -- price - int
    10,  -- quantity - int
    'assets/image/55.jpg', -- img - varchar(250)
    10,  -- saleprice - int
    'Rượu Vang có hình con Công do hãng Cantine San Marzano sản xuất được thiết kế bởi họa sỹ KIAN SIX. Đã đạt giải thưởng là giải Nhất toàn nước Ý vào năm 2012 về phần thiết kế đẹp.  ', -- mota - varchar(250)
    'dmsp01', -- idcategory - varchar(10)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/07/Hinh-Chuan-Logo-Web-8.jpg', -- img1 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2021/05/Hinh-Chuan-Logo-Web-4.jpg', -- img2 - varchar(250)
    'https://ruouthuonghieu.com/wp-content/uploads/2019/09/RV_300.png'  -- img3 - varchar(250)
    )
