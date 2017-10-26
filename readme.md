## Description

Project with laravel shopping-cart to purchase some products using creditcard payment in stripe (that allows both private individuals and businesses to accept payments over the Internet.)

## Author
Abel García Luis

## Run the App
* Install Composer,Laravel and Xampp in your local machine.
* Start Xampp (apache and mysql).</li>
* Go C:\xampp\apache\conf\extra and edit httpd-vhosts.conf.
* In httpd-vhosts.conf create two virtualhosts:
```
<VirtualHost *:80>
    DocumentRoot "C:/xampp/htdocs"
    ServerName localhost
</VirtualHost>

<VirtualHost *:80>
    DocumentRoot "C:/xampp/htdocs/shopping-cart/public"
    ServerName shopping-cart.dev
</VirtualHost>
```
* Next go to C:\Windows\System32\drivers\etc and edit hosts file writing:
```
127.0.0.1 localhost
127.0.0.1 shopping-cart.dev
```
* Finally restart the apache server and go to your browser searching blog-app.dev

## Database
The sql dump is in _SQL/shopping-cart.sql
