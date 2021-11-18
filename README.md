# 2021_Nginx

docker container cp nginx-demo:/etc/nginx/nginx.conf ./cp

dotnet run --project backend_service/backend_service/

curl 'http://localhost/' -H 'Host: www.a.com' 

### How nginx processes a request

### IP-based
首先会基于listen指定的IP地址和端口来定位虚拟主机：
```
server {
    listen      80;
    return 200 "a.com";
}

server {
    listen      81;
    return 200 "b.com";
}
```
### Name-based
如果多个虚拟主机监听相同的端口，类似下面的配置，则会根据请求头中的**Host**字段找到与server_name匹配的虚拟主机：
```
server {
    listen      80;
    server_name a.com www.a.com;
    return 200 "a.com";
}

server {
    listen      80;
    server_name b.com www.b.com;
    return 200 "b.com";
}
```
如果找不到匹配，或者请求头中不包含**Host**字段，Nginx会默认将请求导向第一个虚拟主机。也可以使用**default_server**指定默认主机;
```
server {
    listen      80 default_server;
    server_name b.com www.b.com;
    return 200 "b.com";
}
```

### Server Names
匹配server_name时，除了精确匹配，还可以使用通配符或正则
#### 通配符(Wildcard names)匹配
使用*来替代开头、结尾的字符，如：
```
*.example.org // 可以匹配www.example.org, www.sub.example.org等
www.example.* // 可以匹配www.example.org, www.example.api.org等 
*.example.* // 不支持
```
`*.example.org`必须有前缀，如果既想匹配`*.example.org`, 又想匹配`example.org`，可以使用点号`.`,如`.example.org`, 但点号只能出现在前面；

#### 正则匹配
