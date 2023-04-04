# TON DUC THANG UNIVERSITY
# Faculty of Information Technology
# Công nghệ Java_N2T02_HK2_2223_503111
# Midterm take-home Assignment
# Nguyễn Tấn Thành - 52100841

- Sau đây là trang web ecommerce basic
- sử dụng spring boot để thực hiện các quá trình xây dựng backend cho trang web
- sử dụng spring security để authentication và authorization đối với các actor trong trang web
- sử dụng jsp, jstl để tạo ra giao diện trang web
- demo một số chức năng CRUD product trong trang web
- ĐÂY LÀ LINK VIDEO DEMO SẢN PHẨM WEB GIỮA KÌ MỌI NGƯỜI CÓ THỂ THAM KHẢO: https://www.youtube.com/watch?v=Lum0kvQnS4k


===================================================


 # SƠ ĐỒ GIẢI PHÁP ĐỂ XÂY DỰNG TRANG WEB:
 
- Entity-relationship diagram
 ![image (1)](https://user-images.githubusercontent.com/94300667/229810620-cffebdad-724a-4b1a-aea0-3888b5861908.png)
- Class diagram
  ![image](https://user-images.githubusercontent.com/94300667/229810907-94c2bf01-ea86-4f71-8580-d1a3ef22ee00.png)
- Sequence diagrams Login
![image](https://user-images.githubusercontent.com/94300667/229814120-34a5e3b1-4432-4433-8a9e-c8e120a3b81a.png)

- Sequence diagrams Registor
![image](https://user-images.githubusercontent.com/94300667/229813526-9295b9a6-1864-4804-bc21-a56975232de1.png)

- Sequence diagrams Find/Search Product
![image](https://user-images.githubusercontent.com/94300667/229813594-79de6b44-eb8b-472e-8797-aee93e0af552.png)

- ==== KHACHHANG ====
- Sequence diagrams add product to cart
tại em deletemaping của em return về : response.sendRedirect("/admin"); nên nó trả vế giao diện admin
![image](https://user-images.githubusercontent.com/94300667/229813669-8454a1a1-4b7b-49ec-887d-648fe7bbe26a.png)

- Sequence diagrams remove product from cart
![image](https://user-images.githubusercontent.com/94300667/229813696-62092a60-0ec2-4f4e-98aa-d35d37e73535.png)

- ==== ADMIN ====
- Sequence diagrams add new product
![image](https://user-images.githubusercontent.com/94300667/229813912-569fce49-daf3-44c3-b26b-4a7692cbec18.png)

- Sequence diagrams update product
![image](https://user-images.githubusercontent.com/94300667/229813778-bf755b69-ce52-4fa9-8e60-40b50143a66d.png)

- Sequence diagrams delete product
![image](https://user-images.githubusercontent.com/94300667/229813889-4db1bf74-870b-4989-847c-0d71f923af44.png)

# === unit tests ===
in file SQL and video demo above
# === Một số chức năng trong trang web (POSTMAN) ===
# === KHACH HANG ===
- search ajax like by name, like by category, like by color
![image](https://user-images.githubusercontent.com/94300667/229818324-e3dd6605-321c-47a7-a1ec-9e044e558957.png)
- load more ajax (load 4 product to web)
![image](https://user-images.githubusercontent.com/94300667/229818712-b15fd139-6cfe-4c51-9e0a-be1c31225812.png)
- get all product
![image](https://user-images.githubusercontent.com/94300667/229818066-eaa2224d-5fb3-4ba8-a33d-1f472a3669b8.png)
- get one
![image](https://user-images.githubusercontent.com/94300667/229818859-b3194b85-2aba-4343-8f77-5ad43dd497d8.png)
- save cart
![image](https://user-images.githubusercontent.com/94300667/229819148-5567765c-4fea-472f-abe4-ea20a57419b8.png)
- delete cart
![image](https://user-images.githubusercontent.com/94300667/229819324-ba06d48e-e93e-40a4-8aae-37499db4a049.png)
- register account
![image](https://user-images.githubusercontent.com/94300667/229817803-d5f497be-39c8-4111-80c5-99f61ebfb354.png)
# === ADMIN ===
- add new product
![image](https://user-images.githubusercontent.com/94300667/229819708-8f74de3c-cc7e-4069-9965-0d20d8c74c93.png)
- update product
![image](https://user-images.githubusercontent.com/94300667/229819896-77142654-5b08-4ab9-9377-da36245c6eef.png) 
- delete product
![image](https://user-images.githubusercontent.com/94300667/229820527-4d6cac32-b77d-4e5d-a60b-36e7ac92b9b3.png)

