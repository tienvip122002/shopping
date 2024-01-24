<h1>shop Web App</h1>


B1:**git clone về**

```bash

```


B2:**Tải database và mở mysql của xampp**</br>

Truy cập link 
```bash
http://localhost/phpmyadmin
```
B3:chọn tạo mới và nhập tên database là shopping

**Mở thư mục shopping => laravel_eshopping-main mới clone**</br>
chuyển file '.env.example' thành '.env'

vào file vừa đổ tên '.evn' thay đổi DB_DATABASE=shopping


B4**chuột trái vào thư mục laravel_eshopping-main vừa clone chọn git bash here hoặc open in terminal**</br>

nhập các dòng lệnh sau
```bash
composer update --no-scripts
```
```bash
php artisan cache:clear
```
```bash
 php artisan config:clear
```
```bash
php artisan key:generate
```
```bash
php artisan migrate
```


 sau đó cài đặt npm
 ```bash
npm install
```
và chạy
```bash
npm run dev
```

sau đó chạy serve và xem giúp em ạ em cảm ơn anh/chị!
```bash
php artisan serve
```

***hướng dẫn***</br>
vô đường dẫn /home để vào admin có thể thay đổi trong user để vào
</br>
thêm các permission sau đó thêm các roles và thêm user phân quyền cho role

