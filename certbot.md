
#获取Let's Encrypt 证书

#安装Certbot客户端
apt install certbot

#获取证书
certbot certonly --webroot -w /var/www/example -d example.com -d www.example.com

#这个命令会为 example.com 和 www.example.com 这两个域名生成一个证书，使用 --webroot 模式会在 /var/www/example 中创建 .well-known 文件夹，这个文件夹里面包含了一些验证文件，certbot 会通过访问 example.com/.well-known/acme-challenge 来验证你的域名是否绑定的这个服务器。这个命令在大多数情况下都可以满足需求，
#但是有些时候我们的一些服务并没有根目录，例如一些微服务，这时候使用 --webroot 就走不通了。certbot 还有另外一种模式 --standalone ， 这种模式不需要指定网站根目录，他会自动启用服务器的443端口，来验证域名的归属。我们有其他服务（例如nginx）占用了443端口，就必须先停止这些服务，在证书生成完毕后，再启用。


certbot certonly --standalone -d example.com -d www.example.com

