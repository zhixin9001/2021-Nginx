# 2021_Nginx

docker container cp nginx-demo:/etc/nginx/nginx.conf ./cp

dotnet run --project backend_service/backend_service/ \
dotnet run --project backend_service/backend_service_1/
http://localhost:5000/weatherforecast
curl 'http://localhost/' -H 'Host: www.a.com' 

docker exec -it nginx-demo /bin/bash

## Todo
- https://nginx.org/en/docs/http/server_names.html （If a large number of server names are defined, or unusually long server names are defined, tuning the server_names_hash_max_size and server_names_hash_bucket_size directives at the http level may become necessary. ）