create database Ecommerce;
use Ecommerce;


create table T_User(
	phonenumber varchar(50) primary key,
    nameuser varchar(255),
    pass varchar(50),
	roleuser varchar(10),
    address varchar(254),
    CHECK (roleuser in ('0','1','2')) 
);

create table T_Category(
	idcategory varchar(50) primary key,
    namecategory varchar(255)
);


create table T_Product(
	idproduct varchar(50) primary key,
    nameproduct varchar(254),
    price int,
    color varchar(254),
    quantityproduct int,
    description text,
    idcategory varchar(50),
    image text,
    FOREIGN KEY (idcategory) REFERENCES T_Category(idcategory)
);

create table T_Order(
	idorder varchar(50) primary key,
    phonenumberuser varchar(50),
    dateorder date,
    totalprice int,
    statusorder varchar(50),
    check (statusorder in ("pending", "shipped", "delivered")),
    FOREIGN KEY (phonenumberuser) REFERENCES T_User(phonenumber)
);

create table T_OrderLines(
	idorder varchar(50),
    idproduct varchar(50),
    quantity int,
    price int,
    FOREIGN KEY (idorder) REFERENCES T_Order(idorder),
    FOREIGN KEY (idproduct) REFERENCES T_Product(idproduct),
    PRIMARY KEY (idorder,idproduct)
);


create table T_Cart(
	id_user varchar(50),
    id_product bigint,
    primary key (id_user,id_product),
    FOREIGN KEY (id_user) REFERENCES T_User(phonenumber),
	FOREIGN KEY (id_product) REFERENCES T_Product(id)
);




INSERT INTO T_User (phonenumber, nameuser, pass,  roleuser, address)
VALUES ('1111111111', 'John Doe','123' , '1', 'Tầng 2,5,6,7,11 và 12 Tòa nhà AB, 76A Đ. Lê Lai, Phường Bến Thành, Quận 1, Thành phố Hồ Chí Minh 700000');

INSERT INTO T_User (phonenumber, nameuser, pass, roleuser, address)
VALUES ('0000000000', 'Nguyen Tan Thanh','123' , '0','phố đi bộ Nguyễn Huệ Sài Gòn. Phố đi bộ Nguyễn Huệ là một địa điểm quá quen thuộc và không thể bỏ qua với giới trẻ Sài Thành');

INSERT INTO T_User (phonenumber, nameuser, pass, roleuser, address)
VALUES ('2222222222', 'Jane Cris','123' , '2', 'Đường sách Nguyễn Văn Bính là một đoạn đường dài hơn 200m ngay trên trung tâm Quận 1,');


INSERT INTO T_Category ( namecategory)
VALUES (  1);

INSERT INTO T_Category ( namecategory)
VALUES ( 'Clothing');

INSERT INTO T_Category ( namecategory)
VALUES ( 'Electronics');

INSERT INTO T_Category ( namecategory)
VALUES (  4);

select * from T_Category;


INSERT INTO T_Product  ( nameproduct, price, color, quantityproduct, description, idcategory, image)
VALUES ('washing machine', 999, 'Black', 10, 'A powerful washing machine from Apple',  3,'https://www.electrolux.vn/globalassets/appliances/washing-machines/vn/eww1142q7wb/eww1142q7wb-vn-fr-cl-1500x1500-compress.png');

INSERT INTO T_Product  ( nameproduct, price, color, quantityproduct, description, idcategory, image)
VALUES ('fridge', 799, 'White', 15, 'A feature-packed fridge',  3,'https://lzd-img-global.slatic.net/g/ff/kf/S88dd0bd78f914daf8c5ec7ab4fe5f31cw.jpg_720x720q80.jpg');

INSERT INTO T_Product  ( nameproduct, price, color, quantityproduct, description, idcategory, image)
VALUES ('television', 59, 'Blue', 20, 'Classic denim television from Levi\'s',  3,'https://lzd-img-global.slatic.net/g/shop/037f46e8b597ca1f6e1e6dafd68b3ab0.png_1200x1200q80.png_.webp');

INSERT INTO T_Product  ( nameproduct, price, color, quantityproduct, description, idcategory, image)
VALUES ( 'air conditioning', 999, 'Red', 10, 'A powerful conditioning from Apple',  3,'https://cf.shopee.vn/file/sg-11134201-22120-f7olog31jqlvca_tn');

INSERT INTO T_Product  ( nameproduct, price, color, quantityproduct, description, idcategory, image)
VALUES ('gas stove', 799, 'Yellow', 15, 'A feature-packed gas stove',  3,'https://salt.tikicdn.com/ts/product/5a/e2/e7/88f8295dc93a39909add4ab7fe89129d.jpg');

INSERT INTO T_Product  ( nameproduct, price, color, quantityproduct, description, idcategory, image)
VALUES ('light bulb', 59, 'Pink', 20, 'Classic denim light bulb\'s',  3,'https://salt.tikicdn.com/ts/product/5a/e2/e7/88f8295dc93a39909add4ab7fe89129d.jpg');

INSERT INTO T_Product  ( nameproduct, price, color, quantityproduct, description, idcategory, image)
VALUES ('fan', 59, 'Blue', 20, 'Classic denim fan',  3,'https://salt.tikicdn.com/ts/product/5a/e2/e7/88f8295dc93a39909add4ab7fe89129d.jpg');





INSERT INTO T_Product  ( nameproduct, price, color, quantityproduct, description, idcategory, image)
VALUES ('Bra', 999, 'Black', 10, 'A powerful Bra from Apple',  2,'https://dichthuatmientrung.com.vn/wp-content/uploads/2020/06/aoquan.jpg');

INSERT INTO T_Product  ( nameproduct, price, color, quantityproduct, description, idcategory, image)
VALUES ( 'Overcoat', 799, 'White', 15, 'A feature-packed Overcoat',  2, 'https://monkeymedia.vcdn.com.vn/upload/web/img/danh-tu-chi-quan-ao-trong-tieng-anh-3.jpeg');

INSERT INTO T_Product  ( nameproduct, price, color, quantityproduct, description, idcategory, image)
VALUES ('Jumper', 59, 'Blue', 20, 'Classic denim T-Jumper from Levi\'s',  2,'https://1.bp.blogspot.com/-9OPZc90imjs/X0Tevku-qeI/AAAAAAAADJo/2jAxITlV3BcUUE-F-PgPIw6JaiptUIUiQCLcBGAsYHQ/s640/100-hinh-anh-ke-giua-shop-quan-ao-dep%2B%25284%2529.jpg');

INSERT INTO T_Product  ( nameproduct, price, color, quantityproduct, description, idcategory, image)
VALUES ( 'T-shirt', 199, 'Red', 10, 'A powerful T-shirt from Apple',  2,'https://thietkenoithatatz.com/wp-content/uploads/2021/12/mau-thiet-ke-shop-dam-bau-10m2.jpg');

INSERT INTO T_Product  ( nameproduct, price, color, quantityproduct, description, idcategory, image)
VALUES ('Sweater', 799, 'Yellow', 15, 'A feature-packed Sweater',  2,'https://phuongnamvina.com/img_data/images/chi-phi-mo-shop-quan-ao-khoang-bao-nhieu-tien.jpg');

INSERT INTO T_Product  ( nameproduct, price, color, quantityproduct, description, idcategory, image)
VALUES ( 'Blouse', 79, 'Pink', 20, 'Classic denim Blouse\'s',  2,'https://trustsales.vn/image/nguon-hang-quan-ao.jpg');

INSERT INTO T_Product  ( nameproduct, price, color, quantityproduct, description, idcategory, image)
VALUES ('Cardigan', 19, 'Blue', 20, 'Classic denim Cardigan',  2,'https://trustsales.vn/image/ban-quan-ao-tre-em-online.jpg');












INSERT INTO T_Product  ( nameproduct, price, color, quantityproduct, description, idcategory, image)
VALUES ( 'IPhone 14', 999, 'Black', 10, 'A powerful IPhone 14 from Apple',  1,'https://cdn.tgdd.vn/Files/2021/10/23/1392900/smartphone1_1280x720-800-resize.png');

INSERT INTO T_Product  ( nameproduct, price, color, quantityproduct, description, idcategory, image)
VALUES ('IPhone 14 pro', 799, 'White', 15, 'A feature-packed IPhone 14 pro',  1,'https://cdn.tgdd.vn/Files/2021/12/10/1403704/royole-flexpai-foldable_1280x960-800-resize.jpg');

INSERT INTO T_Product  ( nameproduct, price, color, quantityproduct, description, idcategory, image)
VALUES ( 'IPhone 14 pro max', 59, 'Blue', 20, 'Classic denim IPhone 14 pro from Levi\'s',  1,'https://cdn.tgdd.vn/Files/2021/11/06/1396190/motoe30teaserh2_1280x720-800-resize.jpg');

INSERT INTO T_Product  ( nameproduct, price, color, quantityproduct, description, idcategory, image)
VALUES ('Iphone 13 ', 199, 'Red', 10, 'A powerful T-shirt from Apple',  1,'https://didongviet.vn/dchannel/wp-content/uploads/2020/12/Untitled-1-11.jpg');

INSERT INTO T_Product  ( nameproduct, price, color, quantityproduct, description, idcategory, image)
VALUES ('Samsung 1', 799, 'Yellow', 15, 'A feature-packed Sweater',  1,'https://cdn.sforum.vn/sforum/wp-content/uploads/2021/12/0-18.jpeg');

INSERT INTO T_Product  ( nameproduct, price, color, quantityproduct, description, idcategory, image)
VALUES ('Samsung 2', 79, 'Gray', 20, 'Classic denim Blouse\'s',  1,'https://cdn.tgdd.vn/Files/2021/11/06/1396190/motoe30_1280x720-800-resize.jpg');

INSERT INTO T_Product  ( nameproduct, price, color, quantityproduct, description, idcategory, image)
VALUES ('Oppo', 19, 'Blue', 20, 'Classic denim Cardigan',  1,'https://news.khangz.com/wp-content/uploads/2023/02/OPPO-RENO-8-T-CO-MAY-MAU-1.jpg');

INSERT INTO T_Product  ( nameproduct, price, color, quantityproduct, description, idcategory, image)
VALUES ( 'Samsung 4', 799, 'Gray', 15, 'A feature-packed Samsung',  1,'https://cdn.tgdd.vn/Files/2021/12/10/1403704/smartphonemanhinhgap_1280x720-600x400.jpg');

INSERT INTO T_Product  ( nameproduct, price, color, quantityproduct, description, idcategory, image)
VALUES ('Samsung 8', 79, 'Pink', 20, 'Classic denim Samsung\'s',  1,'https://didongviet.vn/dchannel/wp-content/uploads/2020/12/huawei-p40-icin-arama-motoru-secimi-yapildi-qwant-e1607969267854.jpg');

INSERT INTO T_Product  ( nameproduct, price, color, quantityproduct, description, idcategory, image)
VALUES ('Oppo 2', 19, 'Gray', 20, 'Classic denim Oppo',  1,'https://cdn.tgdd.vn/Products/Images/42/283148/vivo-v25-den-5.jpg');






INSERT INTO T_Product  ( nameproduct, price, color, quantityproduct, description, idcategory, image)
VALUES ( 'Laptop 1 asus', 999, 'Black', 10, 'A powerful laptop IPhone 14 from Apple',  4,'https://cdn.tgdd.vn/Files/2021/10/06/1388238/lappc_800x450.png');

INSERT INTO T_Product  ( nameproduct, price, color, quantityproduct, description, idcategory, image)
VALUES ( 'Laptop 1 vivo', 799, 'White', 15, 'A feature-packed laptop IPhone 14 pro',  4,'https://no1computer.vn/upload_images/images/products/Laptop/Asus/Asus%20Q408UG/Q408-1/Asus-zenbook-Q408UG-manhinh.jpg');

INSERT INTO T_Product  ( nameproduct, price, color, quantityproduct, description, idcategory, image)
VALUES ( 'Laptop 12 vivo', 59, 'Blue', 20, 'Classic laptop IPhone 14 pro from Levi\'s',  4,'https://no1computer.vn/upload_images/images/2022/02/laptop-100-srgb-h1.jpg');

INSERT INTO T_Product  ( nameproduct, price, color, quantityproduct, description, idcategory, image)
VALUES ( 'Laptop 4 asus vivo', 199, 'Red', 10, 'A powerful laptop from Apple',  4,'https://cdn.tgdd.vn/Files/2017/01/19/939425/cach-cai-hinh-nen-may-tinh-khong-bi-mo_1280x720-800-resize.jpg');

INSERT INTO T_Product  ( nameproduct, price, color, quantityproduct, description, idcategory, image)
VALUES ('Laptop 1 acer', 799, 'Yellow', 15, 'A feature-packed laptop',  4,'https://cdn.tgdd.vn/Files/2019/01/09/1143716/man-hinh-ips-va-tn-tren-laptop-khac-nhau-nhu-the-nao-uu-nhuoc-diem-moi-loai-va-cach-nhan-biet-4.jpg');

INSERT INTO T_Product  ( nameproduct, price, color, quantityproduct, description, idcategory, image)
VALUES ('Laptop 3 asus', 79, 'Gray', 20, 'Classic denim laptop\'s',  4,'https://laptophainam.com/wp-content/uploads/2022/06/man-hinh-laptop-acer-15-6-inch.jpg');

INSERT INTO T_Product  ( nameproduct, price, color, quantityproduct, description, idcategory, image)
VALUES ( 'Laptop 3 acer', 19, 'Blue', 20, 'Classic denim laptop',  4,'https://no1computer.vn/upload_images/images/products/Laptop/Lenovo/Lenovo%20Legion%205%20Pro%202022/laptop-lenovo-legion-5-pro-2022%20(2).jpg');

INSERT INTO T_Product  ( nameproduct, price, color, quantityproduct, description, idcategory, image)
VALUES ( 'Laptop 3 asus', 799, 'Gray', 15, 'A feature-packed laptop',  4,'https://laptophainam.com/wp-content/uploads/2022/06/man-hinh-laptop-acer-15-6-inch-5.jpg');

INSERT INTO T_Product  ( nameproduct, price, color, quantityproduct, description, idcategory, image)
VALUES ( 'Laptop 2 acer', 79, 'Pink', 20, 'Classic denim laptop\'s',  4,'https://no1computer.vn/upload_images/images/products/Laptop/LG/LG%20Gram%2016/lg-gram-16-h14.jpg');

INSERT INTO T_Product  ( nameproduct, price, color, quantityproduct, description, idcategory, image)
VALUES ('Laptop 2 acer', 19, 'Gray', 20, 'Classic denim laptop',  4,'https://laptop88.vn/media/news/2112_laptop_HP_mn_hnh_cm_ng_6.jpg');




