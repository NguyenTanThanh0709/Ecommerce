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
- Trang web sử dụng java 1.8 


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
- Sequence diagrams Logout
![image](https://user-images.githubusercontent.com/94300667/229826209-595a1f07-4d93-404b-80c8-39ad6e1977ad.png)

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
# === Giải thích về cấu trúc xây dựng trang web ===
trang web được chia ra nhiều package, mỗi package xử lý một chức năng riêng có tính Single responsibility principle trong SOLID pattern
- Được xây dựng theo cấu trúc sau
![image](https://user-images.githubusercontent.com/94300667/229827952-ec28ac56-cbe3-48dd-9a02-80eb3a512e59.png)
- Đầu tiên về phần giao diện. giao diện được để trong FODER webapp chứa giao diện dùng chung và giao diện của admin và của khách hàng
![image](https://user-images.githubusercontent.com/94300667/229828392-6e95d207-6892-4731-956e-78e54593c587.png)
- Tiếp theo đến với Package Config. Trong này chứa file để Security Config như authentication và authorization
![image](https://user-images.githubusercontent.com/94300667/229828998-76735c9e-f30d-42fb-b69b-fd3bc95f4964.png)
- Foder Controller để tiếp nhận các request từ client gửi lên server và reponse ngược lại cho client. được chia thày 2 controller chính là của admin và của khách hàng. Trong mỗi controller đó lại chia ra 2 file để xử lí về @Controller và @RestController
- Foder Entity :
một Entity được định nghĩa như một đối tượng Java (Java Object) đại diện cho một bảng trong cơ sở dữ liệu (database table).

Một thư mục (folder) Entity thường được sử dụng để chứa các lớp (classes) định nghĩa các Entity. Các Entity thường được đặt tên theo tên của bảng tương ứng trong cơ sở dữ liệu.

Trong mỗi lớp Entity, bạn sẽ định nghĩa các trường (fields) và phương thức getter/setter để truy cập và cập nhật các giá trị của trường đó. Các Entity cũng thường đi kèm với các Annotation như @Entity, @Table, @Column, @Id, @GeneratedValue để định nghĩa chi tiết về cách Entity này sẽ được lưu trữ và truy xuất trong cơ sở dữ liệu.
- Foder DTO: 
DTO (Data Transfer Object) là một kiểu thiết kế phần mềm được sử dụng để tách dữ liệu được truyền tải giữa các lớp hoặc giữa các hệ thống khác nhau. DTO là một đối tượng Java đơn giản và có các thuộc tính tương ứng với các dữ liệu cần truyền tải.

Trong một ứng dụng Spring Boot, các DTO thường được sử dụng để tách dữ liệu được truyền tải giữa lớp Service và lớp Controller. Các DTO cho phép tách biệt giữa lớp Service và lớp Controller, giúp tăng tính tái sử dụng và giảm sự phụ thuộc giữa các lớp

- FODER CONVERT: để chuyển đổi qua lại giữa DTO và ENTITY
- FODER REPONSIVE: Với các Entity này, thể sử dụng các interface Spring Data JPA như CrudRepository để thực hiện các thao tác cơ bản như lưu trữ, truy vấn và xóa dữ liệu trong cơ sở dữ liệu.
- FODER SERVICE: trong Spring Boot là một thư mục chứa các lớp được sử dụng để thực hiện nhiệm vụ xử lý logic của ứng dụng. Thông thường, thư mục Service được đặt trong kiến trúc ứng dụng theo mô hình MVC (Model-View-Controller).

Trong mô hình này, Service Layer là lớp trung gian giữa Controller Layer và Persistence Layer. Các lớp Service định nghĩa các phương thức và logic để tương tác với các đối tượng trong lớp Persistence (hoặc DAO Layer) và trả về các đối tượng được định nghĩa trong lớp Model (hoặc Entity Layer) cho Controller Layer. Nói cách khác, Service Layer là nơi triển khai các nghiệp vụ và quy trình của ứng dụng.

Các lớp trong Service Layer thường được đánh dấu bằng Annotation @Service để Spring Boot có thể quản lý và tự động cấu hình cho các đối tượng này. Nó cũng giúp các đối tượng trong Service Layer có thể được injection vào các lớp khác trong ứng dụng bằng cách sử dụng Dependency Injection.

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
# === SPRING SECURITY ===

![image](https://user-images.githubusercontent.com/94300667/229833262-dcff122b-12b8-4d3f-87d8-101ecddee843.png)
Dòng đầu tiên http.csrf().disable() tắt tính năng bảo vệ CSRF của Spring Security.

Dòng tiếp theo http.authorizeRequests().antMatchers(HttpMethod.OPTIONS, "/**", "/", "/home", "/register", "/login", "/registerhandle").permitAll() cho phép tất cả các request method là OPTIONS được truy cập không cần xác thực. Các URI được cho là các trang công khai (public).

Dòng tiếp theo http.authorizeRequests().antMatchers("/bill", "/cart").access("hasAnyRole('ROLE_ADMIN', 'ROLE_USER')") xác định rằng trang "/bill" và "/cart" chỉ có thể được truy cập bởi các tài khoản có vai trò ROLE_ADMIN hoặc ROLE_USER.

Dòng tiếp theo http.authorizeRequests().antMatchers("/admin").access("hasRole('ROLE_ADMIN')") chỉ cho phép truy cập vào trang "/admin" đối với tài khoản có vai trò ROLE_ADMIN.

Dòng tiếp theo http.authorizeRequests().and().exceptionHandling().accessDeniedPage("/403") xác định trang "/403" sẽ được hiển thị khi người dùng không có quyền truy cập vào các trang được bảo vệ.

Dòng tiếp theó http.authorizeRequests().and().formLogin()... cấu hình phần đăng nhập cho ứng dụng. Nó xác định URL để xử lý đăng nhập (loginProcessingUrl), trang đăng nhập (loginPage), URL để chuyển hướng khi đăng nhập thành công (defaultSuccessUrl), URL để chuyển hướng khi đăng nhập thất bại (failureUrl), tham số tên đăng nhập (usernameParameter) và tham số tên mật khẩu (passwordParameter).

Dòng cuối cùng http.authorizeRequests().and().logout()... cấu hình phần đăng xuất của ứng dụng. Nó xác định URL để xử lý đăng xuất (logoutUrl) và URL để chuyển hướng khi đăng xuất thành công (logoutSuccessUrl).
# ===================================
![image](https://user-images.githubusercontent.com/94300667/229833724-c8bba76a-bda2-473e-bb61-6c79a10ec359.png)
để cấu hình việc xác thực người dùng trong ứng dụng.

1 .@Autowired
Đây là một annotation của Spring Framework, được sử dụng để tự động tìm kiếm, khởi tạo và gán giá trị cho các thành phần của ứng dụng. Trong đoạn mã này, nó được sử dụng để tự động khởi tạo một instance của lớp UserDetailsServiceImpl và gán giá trị cho thuộc tính userDetailsService.

2. private UserDetailsServiceImpl userDetailsService;
Đây là một thuộc tính của lớp hiện tại, được khai báo để lưu trữ một instance của lớp UserDetailsServiceImpl.

3. @Autowired
protected void configure(AuthenticationManagerBuilder auth) throws Exception {
auth.userDetailsService(userDetailsService);
}
Đây là một phương thức được ghi đè từ lớp cha WebSecurityConfigurerAdapter trong Spring Security để cấu hình việc xác thực người dùng. Trong phương thức này, AuthencationManagerBuilder được sử dụng để cấu hình chi tiết xác thực người dùng, và được cung cấp cho phương thức thông qua tham số auth. Phương thức này sử dụng userDetailsService để cung cấp thông tin chi tiết về người dùng được lưu trữ trong hệ thống, để có thể thực hiện việc xác thực người dùng.
